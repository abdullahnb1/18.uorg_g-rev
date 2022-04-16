#include <ros/ros.h>
#include <nav_msgs/Odometry.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/SetMode.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <uorg/konum.h>
 

nav_msgs::Odometry odom;
mavros_msgs::State state;
mavros_msgs::SetMode mode;
geometry_msgs::PoseStamped pose;
mavros_msgs::CommandBool arm;

uorg::konum konum_srv;

void dkonum_cb(const nav_msgs::Odometry::ConstPtr& msg){
    odom=*msg;

}

void state_cb(const mavros_msgs::State::ConstPtr& msg){
    state=*msg;

}

bool konum_cb(uorg::konum::Request &req,uorg::konum::Response &res){
    pose = req.konum;
    return true;
    
}

int main(int argc, char **argv){
    ros::init(argc, argv, "uorg_control");
    ros::NodeHandle nh;
    
    //subscribers subscribe<msg type>("pub", sıra, cb) 
    ros::Subscriber dkonum = nh.subscribe<nav_msgs::Odometry>("/mavros/global_position/local",10,dkonum_cb);
    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>("/mavros/state",10,state_cb);

    //publishers advertise<msg>(sub ,sıra) 
    ros::Publisher pos_pub=nh.advertise<geometry_msgs::PoseStamped>("/mavros/setpoint_position/local",10);

    //client serviceCliemt <msg>(service)
    ros::ServiceClient arm_client =nh.serviceClient<mavros_msgs::CommandBool>("/mavros/cmd/arming");
    ros::ServiceClient set_mode= nh.serviceClient<mavros_msgs::SetMode>("/mavros/set_mode");

    //server
    ros::ServiceServer position = nh.advertiseService("/uorg/konum",konum_cb);

    ros::Rate rate = ros::Rate(20);

    while((!state.connected) && ros::ok()){//wait until connection to mavros
        rate.sleep();
        ros::spinOnce();
    }
    ROS_INFO("%d",state.connected);

    
    pose.pose.position.x=0;
    pose.pose.position.y=0;
    pose.pose.position.z=5;
    pose.pose.orientation.x=0;
    pose.pose.orientation.y=0;
    pose.pose.orientation.z=0;
    
    arm.request.value=true;
    if(arm_client.call(arm)){//arm the drone
        if(arm.response.result == 0){
            ROS_INFO("Armed");
        }
    }

    mode.request.custom_mode = "OFFBOARD";
    
    if(set_mode.call(mode)){//switch to offboard
        ROS_INFO("called setmode");
        if(mode.response.mode_sent){
            ROS_INFO("Success");
        }
    }

    

    

    for(int i = 0; (i < 40) && ros::ok(); i++){
        pos_pub.publish(pose);
        rate.sleep();
        ros::spinOnce();
        
    }


    while(ros::ok()){//main loop
        ROS_INFO("%f %f %f %d %d %s",odom.pose.pose.position.x,odom.pose.pose.position.y,odom.pose.pose.position.z,state.connected,state.armed,mode.request.custom_mode.c_str());
        pos_pub.publish(pose);

        
        rate.sleep();
        ros::spinOnce();
        
    }
}
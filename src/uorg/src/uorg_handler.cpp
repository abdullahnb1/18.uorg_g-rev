#include <geometry_msgs/PoseStamped.h>
#include <ros/ros.h>
#include <uorg/konum.h>


geometry_msgs::PoseStamped pose;
uorg::konum konum_srv;
ros::ServiceClient client;

void go_pos(double x, double y, double z){

    konum_srv.request.konum.pose.position.x = x;
    konum_srv.request.konum.pose.position.y = y;
    konum_srv.request.konum.pose.position.z = z;
    client.call(konum_srv);
    ROS_INFO("%f %f %f",x,y,z);
    
    ros::Duration(3).sleep();

}

int main(int argc, char **argv){

    ros::init(argc, argv, "uorg_handler");
    ros::NodeHandle nh;
    
    client = nh.serviceClient<uorg::konum>("/uorg/konum");

    ros::Rate rate = ros::Rate(20);

    if (ros::ok())
    {
        go_pos(0,0,3);
        go_pos(0,0,8);
        go_pos(0,5,8);
        go_pos(0,5,3);
        go_pos(0,0,3);
        go_pos(5,0,3);
        go_pos(5,0,8);
        go_pos(0,0,8);
        go_pos(5,0,8);
        go_pos(5,5,8);
        go_pos(0,5,8);
        go_pos(0,5,3);
        go_pos(5,5,3);
        go_pos(5,5,8);
        go_pos(5,5,3);
        go_pos(5,0,3);
        go_pos(0,0,3);
        go_pos(0,0,0);

        ros::spinOnce();


    }
    
    
}


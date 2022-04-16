;; Auto-generated. Do not edit!


(when (boundp 'uorg::konum)
  (if (not (find-package "UORG"))
    (make-package "UORG"))
  (shadow 'konum (find-package "UORG")))
(unless (find-package "UORG::KONUM")
  (make-package "UORG::KONUM"))
(unless (find-package "UORG::KONUMREQUEST")
  (make-package "UORG::KONUMREQUEST"))
(unless (find-package "UORG::KONUMRESPONSE")
  (make-package "UORG::KONUMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass uorg::konumRequest
  :super ros::object
  :slots (_konum ))

(defmethod uorg::konumRequest
  (:init
   (&key
    ((:konum __konum) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _konum __konum)
   self)
  (:konum
   (&rest __konum)
   (if (keywordp (car __konum))
       (send* _konum __konum)
     (progn
       (if __konum (setq _konum (car __konum)))
       _konum)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _konum
    (send _konum :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _konum
       (send _konum :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _konum
     (send _konum :deserialize buf ptr-) (incf ptr- (send _konum :serialization-length))
   ;;
   self)
  )

(defclass uorg::konumResponse
  :super ros::object
  :slots ())

(defmethod uorg::konumResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass uorg::konum
  :super ros::object
  :slots ())

(setf (get uorg::konum :md5sum-) "9910b4d62ca4a80349ae5de1dbbe4d8d")
(setf (get uorg::konum :datatype-) "uorg/konum")
(setf (get uorg::konum :request) uorg::konumRequest)
(setf (get uorg::konum :response) uorg::konumResponse)

(defmethod uorg::konumRequest
  (:response () (instance uorg::konumResponse :init)))

(setf (get uorg::konumRequest :md5sum-) "9910b4d62ca4a80349ae5de1dbbe4d8d")
(setf (get uorg::konumRequest :datatype-) "uorg/konumRequest")
(setf (get uorg::konumRequest :definition-)
      "geometry_msgs/PoseStamped konum

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
")

(setf (get uorg::konumResponse :md5sum-) "9910b4d62ca4a80349ae5de1dbbe4d8d")
(setf (get uorg::konumResponse :datatype-) "uorg/konumResponse")
(setf (get uorg::konumResponse :definition-)
      "geometry_msgs/PoseStamped konum

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
")



(provide :uorg/konum "9910b4d62ca4a80349ae5de1dbbe4d8d")



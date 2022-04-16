; Auto-generated. Do not edit!


(cl:in-package uorg-srv)


;//! \htmlinclude konum-request.msg.html

(cl:defclass <konum-request> (roslisp-msg-protocol:ros-message)
  ((konum
    :reader konum
    :initarg :konum
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass konum-request (<konum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <konum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'konum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uorg-srv:<konum-request> is deprecated: use uorg-srv:konum-request instead.")))

(cl:ensure-generic-function 'konum-val :lambda-list '(m))
(cl:defmethod konum-val ((m <konum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uorg-srv:konum-val is deprecated.  Use uorg-srv:konum instead.")
  (konum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <konum-request>) ostream)
  "Serializes a message object of type '<konum-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'konum) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <konum-request>) istream)
  "Deserializes a message object of type '<konum-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'konum) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<konum-request>)))
  "Returns string type for a service object of type '<konum-request>"
  "uorg/konumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'konum-request)))
  "Returns string type for a service object of type 'konum-request"
  "uorg/konumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<konum-request>)))
  "Returns md5sum for a message object of type '<konum-request>"
  "9910b4d62ca4a80349ae5de1dbbe4d8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'konum-request)))
  "Returns md5sum for a message object of type 'konum-request"
  "9910b4d62ca4a80349ae5de1dbbe4d8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<konum-request>)))
  "Returns full string definition for message of type '<konum-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped konum~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'konum-request)))
  "Returns full string definition for message of type 'konum-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped konum~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <konum-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'konum))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <konum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'konum-request
    (cl:cons ':konum (konum msg))
))
;//! \htmlinclude konum-response.msg.html

(cl:defclass <konum-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass konum-response (<konum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <konum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'konum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uorg-srv:<konum-response> is deprecated: use uorg-srv:konum-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <konum-response>) ostream)
  "Serializes a message object of type '<konum-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <konum-response>) istream)
  "Deserializes a message object of type '<konum-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<konum-response>)))
  "Returns string type for a service object of type '<konum-response>"
  "uorg/konumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'konum-response)))
  "Returns string type for a service object of type 'konum-response"
  "uorg/konumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<konum-response>)))
  "Returns md5sum for a message object of type '<konum-response>"
  "9910b4d62ca4a80349ae5de1dbbe4d8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'konum-response)))
  "Returns md5sum for a message object of type 'konum-response"
  "9910b4d62ca4a80349ae5de1dbbe4d8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<konum-response>)))
  "Returns full string definition for message of type '<konum-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'konum-response)))
  "Returns full string definition for message of type 'konum-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <konum-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <konum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'konum-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'konum)))
  'konum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'konum)))
  'konum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'konum)))
  "Returns string type for a service object of type '<konum>"
  "uorg/konum")
; Auto-generated. Do not edit!


(cl:in-package direct_lidar_odometry-srv)


;//! \htmlinclude save_traj-request.msg.html

(cl:defclass <save_traj-request> (roslisp-msg-protocol:ros-message)
  ((save_path
    :reader save_path
    :initarg :save_path
    :type cl:string
    :initform ""))
)

(cl:defclass save_traj-request (<save_traj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_traj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_traj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name direct_lidar_odometry-srv:<save_traj-request> is deprecated: use direct_lidar_odometry-srv:save_traj-request instead.")))

(cl:ensure-generic-function 'save_path-val :lambda-list '(m))
(cl:defmethod save_path-val ((m <save_traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader direct_lidar_odometry-srv:save_path-val is deprecated.  Use direct_lidar_odometry-srv:save_path instead.")
  (save_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_traj-request>) ostream)
  "Serializes a message object of type '<save_traj-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'save_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'save_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_traj-request>) istream)
  "Deserializes a message object of type '<save_traj-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'save_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'save_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_traj-request>)))
  "Returns string type for a service object of type '<save_traj-request>"
  "direct_lidar_odometry/save_trajRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_traj-request)))
  "Returns string type for a service object of type 'save_traj-request"
  "direct_lidar_odometry/save_trajRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_traj-request>)))
  "Returns md5sum for a message object of type '<save_traj-request>"
  "ac67446d8a94887127d80e989a0feea9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_traj-request)))
  "Returns md5sum for a message object of type 'save_traj-request"
  "ac67446d8a94887127d80e989a0feea9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_traj-request>)))
  "Returns full string definition for message of type '<save_traj-request>"
  (cl:format cl:nil "string save_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_traj-request)))
  "Returns full string definition for message of type 'save_traj-request"
  (cl:format cl:nil "string save_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_traj-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'save_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_traj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_traj-request
    (cl:cons ':save_path (save_path msg))
))
;//! \htmlinclude save_traj-response.msg.html

(cl:defclass <save_traj-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass save_traj-response (<save_traj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_traj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_traj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name direct_lidar_odometry-srv:<save_traj-response> is deprecated: use direct_lidar_odometry-srv:save_traj-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <save_traj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader direct_lidar_odometry-srv:success-val is deprecated.  Use direct_lidar_odometry-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_traj-response>) ostream)
  "Serializes a message object of type '<save_traj-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_traj-response>) istream)
  "Deserializes a message object of type '<save_traj-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_traj-response>)))
  "Returns string type for a service object of type '<save_traj-response>"
  "direct_lidar_odometry/save_trajResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_traj-response)))
  "Returns string type for a service object of type 'save_traj-response"
  "direct_lidar_odometry/save_trajResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_traj-response>)))
  "Returns md5sum for a message object of type '<save_traj-response>"
  "ac67446d8a94887127d80e989a0feea9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_traj-response)))
  "Returns md5sum for a message object of type 'save_traj-response"
  "ac67446d8a94887127d80e989a0feea9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_traj-response>)))
  "Returns full string definition for message of type '<save_traj-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_traj-response)))
  "Returns full string definition for message of type 'save_traj-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_traj-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_traj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_traj-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_traj)))
  'save_traj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_traj)))
  'save_traj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_traj)))
  "Returns string type for a service object of type '<save_traj>"
  "direct_lidar_odometry/save_traj")
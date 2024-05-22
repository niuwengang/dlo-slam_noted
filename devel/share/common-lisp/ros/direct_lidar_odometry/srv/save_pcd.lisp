; Auto-generated. Do not edit!


(cl:in-package direct_lidar_odometry-srv)


;//! \htmlinclude save_pcd-request.msg.html

(cl:defclass <save_pcd-request> (roslisp-msg-protocol:ros-message)
  ((leaf_size
    :reader leaf_size
    :initarg :leaf_size
    :type cl:float
    :initform 0.0)
   (save_path
    :reader save_path
    :initarg :save_path
    :type cl:string
    :initform ""))
)

(cl:defclass save_pcd-request (<save_pcd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_pcd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_pcd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name direct_lidar_odometry-srv:<save_pcd-request> is deprecated: use direct_lidar_odometry-srv:save_pcd-request instead.")))

(cl:ensure-generic-function 'leaf_size-val :lambda-list '(m))
(cl:defmethod leaf_size-val ((m <save_pcd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader direct_lidar_odometry-srv:leaf_size-val is deprecated.  Use direct_lidar_odometry-srv:leaf_size instead.")
  (leaf_size m))

(cl:ensure-generic-function 'save_path-val :lambda-list '(m))
(cl:defmethod save_path-val ((m <save_pcd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader direct_lidar_odometry-srv:save_path-val is deprecated.  Use direct_lidar_odometry-srv:save_path instead.")
  (save_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_pcd-request>) ostream)
  "Serializes a message object of type '<save_pcd-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leaf_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'save_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'save_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_pcd-request>) istream)
  "Deserializes a message object of type '<save_pcd-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leaf_size) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_pcd-request>)))
  "Returns string type for a service object of type '<save_pcd-request>"
  "direct_lidar_odometry/save_pcdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_pcd-request)))
  "Returns string type for a service object of type 'save_pcd-request"
  "direct_lidar_odometry/save_pcdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_pcd-request>)))
  "Returns md5sum for a message object of type '<save_pcd-request>"
  "9fd870b6932171ca7a964d532d4402b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_pcd-request)))
  "Returns md5sum for a message object of type 'save_pcd-request"
  "9fd870b6932171ca7a964d532d4402b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_pcd-request>)))
  "Returns full string definition for message of type '<save_pcd-request>"
  (cl:format cl:nil "float32 leaf_size~%string save_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_pcd-request)))
  "Returns full string definition for message of type 'save_pcd-request"
  (cl:format cl:nil "float32 leaf_size~%string save_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_pcd-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'save_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_pcd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_pcd-request
    (cl:cons ':leaf_size (leaf_size msg))
    (cl:cons ':save_path (save_path msg))
))
;//! \htmlinclude save_pcd-response.msg.html

(cl:defclass <save_pcd-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass save_pcd-response (<save_pcd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_pcd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_pcd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name direct_lidar_odometry-srv:<save_pcd-response> is deprecated: use direct_lidar_odometry-srv:save_pcd-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <save_pcd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader direct_lidar_odometry-srv:success-val is deprecated.  Use direct_lidar_odometry-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_pcd-response>) ostream)
  "Serializes a message object of type '<save_pcd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_pcd-response>) istream)
  "Deserializes a message object of type '<save_pcd-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_pcd-response>)))
  "Returns string type for a service object of type '<save_pcd-response>"
  "direct_lidar_odometry/save_pcdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_pcd-response)))
  "Returns string type for a service object of type 'save_pcd-response"
  "direct_lidar_odometry/save_pcdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_pcd-response>)))
  "Returns md5sum for a message object of type '<save_pcd-response>"
  "9fd870b6932171ca7a964d532d4402b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_pcd-response)))
  "Returns md5sum for a message object of type 'save_pcd-response"
  "9fd870b6932171ca7a964d532d4402b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_pcd-response>)))
  "Returns full string definition for message of type '<save_pcd-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_pcd-response)))
  "Returns full string definition for message of type 'save_pcd-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_pcd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_pcd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_pcd-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_pcd)))
  'save_pcd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_pcd)))
  'save_pcd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_pcd)))
  "Returns string type for a service object of type '<save_pcd>"
  "direct_lidar_odometry/save_pcd")
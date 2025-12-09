; Auto-generated. Do not edit!


(cl:in-package indy_driver-srv)


;//! \htmlinclude IndyService-request.msg.html

(cl:defclass <IndyService-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass IndyService-request (<IndyService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IndyService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IndyService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name indy_driver-srv:<IndyService-request> is deprecated: use indy_driver-srv:IndyService-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <IndyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-srv:data-val is deprecated.  Use indy_driver-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IndyService-request>) ostream)
  "Serializes a message object of type '<IndyService-request>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IndyService-request>) istream)
  "Deserializes a message object of type '<IndyService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IndyService-request>)))
  "Returns string type for a service object of type '<IndyService-request>"
  "indy_driver/IndyServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IndyService-request)))
  "Returns string type for a service object of type 'IndyService-request"
  "indy_driver/IndyServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IndyService-request>)))
  "Returns md5sum for a message object of type '<IndyService-request>"
  "41a6318c88ca9d75d7a585e2aa4ca6ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IndyService-request)))
  "Returns md5sum for a message object of type 'IndyService-request"
  "41a6318c88ca9d75d7a585e2aa4ca6ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IndyService-request>)))
  "Returns full string definition for message of type '<IndyService-request>"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IndyService-request)))
  "Returns full string definition for message of type 'IndyService-request"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IndyService-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IndyService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IndyService-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude IndyService-response.msg.html

(cl:defclass <IndyService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass IndyService-response (<IndyService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IndyService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IndyService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name indy_driver-srv:<IndyService-response> is deprecated: use indy_driver-srv:IndyService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <IndyService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-srv:success-val is deprecated.  Use indy_driver-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <IndyService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-srv:message-val is deprecated.  Use indy_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IndyService-response>) ostream)
  "Serializes a message object of type '<IndyService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IndyService-response>) istream)
  "Deserializes a message object of type '<IndyService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IndyService-response>)))
  "Returns string type for a service object of type '<IndyService-response>"
  "indy_driver/IndyServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IndyService-response)))
  "Returns string type for a service object of type 'IndyService-response"
  "indy_driver/IndyServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IndyService-response>)))
  "Returns md5sum for a message object of type '<IndyService-response>"
  "41a6318c88ca9d75d7a585e2aa4ca6ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IndyService-response)))
  "Returns md5sum for a message object of type 'IndyService-response"
  "41a6318c88ca9d75d7a585e2aa4ca6ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IndyService-response>)))
  "Returns full string definition for message of type '<IndyService-response>"
  (cl:format cl:nil "bool success   # indicate successful run of service~%string message # informational~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IndyService-response)))
  "Returns full string definition for message of type 'IndyService-response"
  (cl:format cl:nil "bool success   # indicate successful run of service~%string message # informational~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IndyService-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IndyService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IndyService-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IndyService)))
  'IndyService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IndyService)))
  'IndyService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IndyService)))
  "Returns string type for a service object of type '<IndyService>"
  "indy_driver/IndyService")
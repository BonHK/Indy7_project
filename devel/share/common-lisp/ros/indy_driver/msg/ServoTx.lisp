; Auto-generated. Do not edit!


(cl:in-package indy_driver-msg)


;//! \htmlinclude ServoTx.msg.html

(cl:defclass <ServoTx> (roslisp-msg-protocol:ros-message)
  ((status_word
    :reader status_word
    :initarg :status_word
    :type cl:string
    :initform "")
   (mode_op_disp
    :reader mode_op_disp
    :initarg :mode_op_disp
    :type cl:string
    :initform "")
   (actual_pos
    :reader actual_pos
    :initarg :actual_pos
    :type cl:integer
    :initform 0)
   (actual_vel
    :reader actual_vel
    :initarg :actual_vel
    :type cl:integer
    :initform 0)
   (actual_tor
    :reader actual_tor
    :initarg :actual_tor
    :type cl:integer
    :initform 0))
)

(cl:defclass ServoTx (<ServoTx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoTx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoTx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name indy_driver-msg:<ServoTx> is deprecated: use indy_driver-msg:ServoTx instead.")))

(cl:ensure-generic-function 'status_word-val :lambda-list '(m))
(cl:defmethod status_word-val ((m <ServoTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:status_word-val is deprecated.  Use indy_driver-msg:status_word instead.")
  (status_word m))

(cl:ensure-generic-function 'mode_op_disp-val :lambda-list '(m))
(cl:defmethod mode_op_disp-val ((m <ServoTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:mode_op_disp-val is deprecated.  Use indy_driver-msg:mode_op_disp instead.")
  (mode_op_disp m))

(cl:ensure-generic-function 'actual_pos-val :lambda-list '(m))
(cl:defmethod actual_pos-val ((m <ServoTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:actual_pos-val is deprecated.  Use indy_driver-msg:actual_pos instead.")
  (actual_pos m))

(cl:ensure-generic-function 'actual_vel-val :lambda-list '(m))
(cl:defmethod actual_vel-val ((m <ServoTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:actual_vel-val is deprecated.  Use indy_driver-msg:actual_vel instead.")
  (actual_vel m))

(cl:ensure-generic-function 'actual_tor-val :lambda-list '(m))
(cl:defmethod actual_tor-val ((m <ServoTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:actual_tor-val is deprecated.  Use indy_driver-msg:actual_tor instead.")
  (actual_tor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoTx>) ostream)
  "Serializes a message object of type '<ServoTx>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_word))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode_op_disp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode_op_disp))
  (cl:let* ((signed (cl:slot-value msg 'actual_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'actual_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'actual_tor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoTx>) istream)
  "Deserializes a message object of type '<ServoTx>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_op_disp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode_op_disp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_vel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_tor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoTx>)))
  "Returns string type for a message object of type '<ServoTx>"
  "indy_driver/ServoTx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoTx)))
  "Returns string type for a message object of type 'ServoTx"
  "indy_driver/ServoTx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoTx>)))
  "Returns md5sum for a message object of type '<ServoTx>"
  "a7e61d6578fded045ebf5ac1e96178fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoTx)))
  "Returns md5sum for a message object of type 'ServoTx"
  "a7e61d6578fded045ebf5ac1e96178fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoTx>)))
  "Returns full string definition for message of type '<ServoTx>"
  (cl:format cl:nil "string status_word~%string mode_op_disp~%int32 actual_pos~%int32 actual_vel~%int32 actual_tor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoTx)))
  "Returns full string definition for message of type 'ServoTx"
  (cl:format cl:nil "string status_word~%string mode_op_disp~%int32 actual_pos~%int32 actual_vel~%int32 actual_tor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoTx>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status_word))
     4 (cl:length (cl:slot-value msg 'mode_op_disp))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoTx>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoTx
    (cl:cons ':status_word (status_word msg))
    (cl:cons ':mode_op_disp (mode_op_disp msg))
    (cl:cons ':actual_pos (actual_pos msg))
    (cl:cons ':actual_vel (actual_vel msg))
    (cl:cons ':actual_tor (actual_tor msg))
))

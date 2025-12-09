; Auto-generated. Do not edit!


(cl:in-package indy_driver-msg)


;//! \htmlinclude ServoRx.msg.html

(cl:defclass <ServoRx> (roslisp-msg-protocol:ros-message)
  ((control_word
    :reader control_word
    :initarg :control_word
    :type cl:integer
    :initform 0)
   (mode_op
    :reader mode_op
    :initarg :mode_op
    :type cl:integer
    :initform 0)
   (target_pos
    :reader target_pos
    :initarg :target_pos
    :type cl:integer
    :initform 0)
   (target_vel
    :reader target_vel
    :initarg :target_vel
    :type cl:integer
    :initform 0)
   (target_tor
    :reader target_tor
    :initarg :target_tor
    :type cl:integer
    :initform 0))
)

(cl:defclass ServoRx (<ServoRx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoRx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoRx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name indy_driver-msg:<ServoRx> is deprecated: use indy_driver-msg:ServoRx instead.")))

(cl:ensure-generic-function 'control_word-val :lambda-list '(m))
(cl:defmethod control_word-val ((m <ServoRx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:control_word-val is deprecated.  Use indy_driver-msg:control_word instead.")
  (control_word m))

(cl:ensure-generic-function 'mode_op-val :lambda-list '(m))
(cl:defmethod mode_op-val ((m <ServoRx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:mode_op-val is deprecated.  Use indy_driver-msg:mode_op instead.")
  (mode_op m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <ServoRx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:target_pos-val is deprecated.  Use indy_driver-msg:target_pos instead.")
  (target_pos m))

(cl:ensure-generic-function 'target_vel-val :lambda-list '(m))
(cl:defmethod target_vel-val ((m <ServoRx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:target_vel-val is deprecated.  Use indy_driver-msg:target_vel instead.")
  (target_vel m))

(cl:ensure-generic-function 'target_tor-val :lambda-list '(m))
(cl:defmethod target_tor-val ((m <ServoRx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:target_tor-val is deprecated.  Use indy_driver-msg:target_tor instead.")
  (target_tor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoRx>) ostream)
  "Serializes a message object of type '<ServoRx>"
  (cl:let* ((signed (cl:slot-value msg 'control_word)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode_op)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_tor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoRx>) istream)
  "Deserializes a message object of type '<ServoRx>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_word) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_op) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_vel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_tor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoRx>)))
  "Returns string type for a message object of type '<ServoRx>"
  "indy_driver/ServoRx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoRx)))
  "Returns string type for a message object of type 'ServoRx"
  "indy_driver/ServoRx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoRx>)))
  "Returns md5sum for a message object of type '<ServoRx>"
  "d5c6b4ee5c2eed6b17a8e2ef1c7b6e65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoRx)))
  "Returns md5sum for a message object of type 'ServoRx"
  "d5c6b4ee5c2eed6b17a8e2ef1c7b6e65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoRx>)))
  "Returns full string definition for message of type '<ServoRx>"
  (cl:format cl:nil "int32 control_word~%int32 mode_op~%int32 target_pos~%int32 target_vel~%int32 target_tor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoRx)))
  "Returns full string definition for message of type 'ServoRx"
  (cl:format cl:nil "int32 control_word~%int32 mode_op~%int32 target_pos~%int32 target_vel~%int32 target_tor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoRx>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoRx>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoRx
    (cl:cons ':control_word (control_word msg))
    (cl:cons ':mode_op (mode_op msg))
    (cl:cons ':target_pos (target_pos msg))
    (cl:cons ':target_vel (target_vel msg))
    (cl:cons ':target_tor (target_tor msg))
))

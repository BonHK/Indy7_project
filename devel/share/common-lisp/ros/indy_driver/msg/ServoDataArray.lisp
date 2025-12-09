; Auto-generated. Do not edit!


(cl:in-package indy_driver-msg)


;//! \htmlinclude ServoDataArray.msg.html

(cl:defclass <ServoDataArray> (roslisp-msg-protocol:ros-message)
  ((tx
    :reader tx
    :initarg :tx
    :type (cl:vector indy_driver-msg:ServoTx)
   :initform (cl:make-array 0 :element-type 'indy_driver-msg:ServoTx :initial-element (cl:make-instance 'indy_driver-msg:ServoTx)))
   (rx
    :reader rx
    :initarg :rx
    :type (cl:vector indy_driver-msg:ServoRx)
   :initform (cl:make-array 0 :element-type 'indy_driver-msg:ServoRx :initial-element (cl:make-instance 'indy_driver-msg:ServoRx))))
)

(cl:defclass ServoDataArray (<ServoDataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoDataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoDataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name indy_driver-msg:<ServoDataArray> is deprecated: use indy_driver-msg:ServoDataArray instead.")))

(cl:ensure-generic-function 'tx-val :lambda-list '(m))
(cl:defmethod tx-val ((m <ServoDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:tx-val is deprecated.  Use indy_driver-msg:tx instead.")
  (tx m))

(cl:ensure-generic-function 'rx-val :lambda-list '(m))
(cl:defmethod rx-val ((m <ServoDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy_driver-msg:rx-val is deprecated.  Use indy_driver-msg:rx instead.")
  (rx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoDataArray>) ostream)
  "Serializes a message object of type '<ServoDataArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tx))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rx))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoDataArray>) istream)
  "Deserializes a message object of type '<ServoDataArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tx) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tx)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'indy_driver-msg:ServoTx))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rx) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rx)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'indy_driver-msg:ServoRx))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoDataArray>)))
  "Returns string type for a message object of type '<ServoDataArray>"
  "indy_driver/ServoDataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoDataArray)))
  "Returns string type for a message object of type 'ServoDataArray"
  "indy_driver/ServoDataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoDataArray>)))
  "Returns md5sum for a message object of type '<ServoDataArray>"
  "0442b85a27d0cc075ac423773b420d07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoDataArray)))
  "Returns md5sum for a message object of type 'ServoDataArray"
  "0442b85a27d0cc075ac423773b420d07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoDataArray>)))
  "Returns full string definition for message of type '<ServoDataArray>"
  (cl:format cl:nil "ServoTx[] tx~%ServoRx[] rx~%~%================================================================================~%MSG: indy_driver/ServoTx~%string status_word~%string mode_op_disp~%int32 actual_pos~%int32 actual_vel~%int32 actual_tor~%~%================================================================================~%MSG: indy_driver/ServoRx~%int32 control_word~%int32 mode_op~%int32 target_pos~%int32 target_vel~%int32 target_tor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoDataArray)))
  "Returns full string definition for message of type 'ServoDataArray"
  (cl:format cl:nil "ServoTx[] tx~%ServoRx[] rx~%~%================================================================================~%MSG: indy_driver/ServoTx~%string status_word~%string mode_op_disp~%int32 actual_pos~%int32 actual_vel~%int32 actual_tor~%~%================================================================================~%MSG: indy_driver/ServoRx~%int32 control_word~%int32 mode_op~%int32 target_pos~%int32 target_vel~%int32 target_tor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoDataArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoDataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoDataArray
    (cl:cons ':tx (tx msg))
    (cl:cons ':rx (rx msg))
))

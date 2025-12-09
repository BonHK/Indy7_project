;; Auto-generated. Do not edit!


(when (boundp 'indy_driver::ServoDataArray)
  (if (not (find-package "INDY_DRIVER"))
    (make-package "INDY_DRIVER"))
  (shadow 'ServoDataArray (find-package "INDY_DRIVER")))
(unless (find-package "INDY_DRIVER::SERVODATAARRAY")
  (make-package "INDY_DRIVER::SERVODATAARRAY"))

(in-package "ROS")
;;//! \htmlinclude ServoDataArray.msg.html


(defclass indy_driver::ServoDataArray
  :super ros::object
  :slots (_tx _rx ))

(defmethod indy_driver::ServoDataArray
  (:init
   (&key
    ((:tx __tx) ())
    ((:rx __rx) ())
    )
   (send-super :init)
   (setq _tx __tx)
   (setq _rx __rx)
   self)
  (:tx
   (&rest __tx)
   (if (keywordp (car __tx))
       (send* _tx __tx)
     (progn
       (if __tx (setq _tx (car __tx)))
       _tx)))
  (:rx
   (&rest __rx)
   (if (keywordp (car __rx))
       (send* _rx __rx)
     (progn
       (if __rx (setq _rx (car __rx)))
       _rx)))
  (:serialization-length
   ()
   (+
    ;; indy_driver/ServoTx[] _tx
    (apply #'+ (send-all _tx :serialization-length)) 4
    ;; indy_driver/ServoRx[] _rx
    (apply #'+ (send-all _rx :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; indy_driver/ServoTx[] _tx
     (write-long (length _tx) s)
     (dolist (elem _tx)
       (send elem :serialize s)
       )
     ;; indy_driver/ServoRx[] _rx
     (write-long (length _rx) s)
     (dolist (elem _rx)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; indy_driver/ServoTx[] _tx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tx (let (r) (dotimes (i n) (push (instance indy_driver::ServoTx :init) r)) r))
     (dolist (elem- _tx)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; indy_driver/ServoRx[] _rx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rx (let (r) (dotimes (i n) (push (instance indy_driver::ServoRx :init) r)) r))
     (dolist (elem- _rx)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get indy_driver::ServoDataArray :md5sum-) "0442b85a27d0cc075ac423773b420d07")
(setf (get indy_driver::ServoDataArray :datatype-) "indy_driver/ServoDataArray")
(setf (get indy_driver::ServoDataArray :definition-)
      "ServoTx[] tx
ServoRx[] rx

================================================================================
MSG: indy_driver/ServoTx
string status_word
string mode_op_disp
int32 actual_pos
int32 actual_vel
int32 actual_tor

================================================================================
MSG: indy_driver/ServoRx
int32 control_word
int32 mode_op
int32 target_pos
int32 target_vel
int32 target_tor
")



(provide :indy_driver/ServoDataArray "0442b85a27d0cc075ac423773b420d07")



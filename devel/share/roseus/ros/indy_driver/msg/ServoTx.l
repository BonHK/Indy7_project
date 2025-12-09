;; Auto-generated. Do not edit!


(when (boundp 'indy_driver::ServoTx)
  (if (not (find-package "INDY_DRIVER"))
    (make-package "INDY_DRIVER"))
  (shadow 'ServoTx (find-package "INDY_DRIVER")))
(unless (find-package "INDY_DRIVER::SERVOTX")
  (make-package "INDY_DRIVER::SERVOTX"))

(in-package "ROS")
;;//! \htmlinclude ServoTx.msg.html


(defclass indy_driver::ServoTx
  :super ros::object
  :slots (_status_word _mode_op_disp _actual_pos _actual_vel _actual_tor ))

(defmethod indy_driver::ServoTx
  (:init
   (&key
    ((:status_word __status_word) "")
    ((:mode_op_disp __mode_op_disp) "")
    ((:actual_pos __actual_pos) 0)
    ((:actual_vel __actual_vel) 0)
    ((:actual_tor __actual_tor) 0)
    )
   (send-super :init)
   (setq _status_word (string __status_word))
   (setq _mode_op_disp (string __mode_op_disp))
   (setq _actual_pos (round __actual_pos))
   (setq _actual_vel (round __actual_vel))
   (setq _actual_tor (round __actual_tor))
   self)
  (:status_word
   (&optional __status_word)
   (if __status_word (setq _status_word __status_word)) _status_word)
  (:mode_op_disp
   (&optional __mode_op_disp)
   (if __mode_op_disp (setq _mode_op_disp __mode_op_disp)) _mode_op_disp)
  (:actual_pos
   (&optional __actual_pos)
   (if __actual_pos (setq _actual_pos __actual_pos)) _actual_pos)
  (:actual_vel
   (&optional __actual_vel)
   (if __actual_vel (setq _actual_vel __actual_vel)) _actual_vel)
  (:actual_tor
   (&optional __actual_tor)
   (if __actual_tor (setq _actual_tor __actual_tor)) _actual_tor)
  (:serialization-length
   ()
   (+
    ;; string _status_word
    4 (length _status_word)
    ;; string _mode_op_disp
    4 (length _mode_op_disp)
    ;; int32 _actual_pos
    4
    ;; int32 _actual_vel
    4
    ;; int32 _actual_tor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status_word
       (write-long (length _status_word) s) (princ _status_word s)
     ;; string _mode_op_disp
       (write-long (length _mode_op_disp) s) (princ _mode_op_disp s)
     ;; int32 _actual_pos
       (write-long _actual_pos s)
     ;; int32 _actual_vel
       (write-long _actual_vel s)
     ;; int32 _actual_tor
       (write-long _actual_tor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status_word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode_op_disp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_op_disp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _actual_pos
     (setq _actual_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _actual_vel
     (setq _actual_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _actual_tor
     (setq _actual_tor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get indy_driver::ServoTx :md5sum-) "a7e61d6578fded045ebf5ac1e96178fe")
(setf (get indy_driver::ServoTx :datatype-) "indy_driver/ServoTx")
(setf (get indy_driver::ServoTx :definition-)
      "string status_word
string mode_op_disp
int32 actual_pos
int32 actual_vel
int32 actual_tor

")



(provide :indy_driver/ServoTx "a7e61d6578fded045ebf5ac1e96178fe")



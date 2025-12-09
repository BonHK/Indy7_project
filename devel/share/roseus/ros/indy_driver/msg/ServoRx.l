;; Auto-generated. Do not edit!


(when (boundp 'indy_driver::ServoRx)
  (if (not (find-package "INDY_DRIVER"))
    (make-package "INDY_DRIVER"))
  (shadow 'ServoRx (find-package "INDY_DRIVER")))
(unless (find-package "INDY_DRIVER::SERVORX")
  (make-package "INDY_DRIVER::SERVORX"))

(in-package "ROS")
;;//! \htmlinclude ServoRx.msg.html


(defclass indy_driver::ServoRx
  :super ros::object
  :slots (_control_word _mode_op _target_pos _target_vel _target_tor ))

(defmethod indy_driver::ServoRx
  (:init
   (&key
    ((:control_word __control_word) 0)
    ((:mode_op __mode_op) 0)
    ((:target_pos __target_pos) 0)
    ((:target_vel __target_vel) 0)
    ((:target_tor __target_tor) 0)
    )
   (send-super :init)
   (setq _control_word (round __control_word))
   (setq _mode_op (round __mode_op))
   (setq _target_pos (round __target_pos))
   (setq _target_vel (round __target_vel))
   (setq _target_tor (round __target_tor))
   self)
  (:control_word
   (&optional __control_word)
   (if __control_word (setq _control_word __control_word)) _control_word)
  (:mode_op
   (&optional __mode_op)
   (if __mode_op (setq _mode_op __mode_op)) _mode_op)
  (:target_pos
   (&optional __target_pos)
   (if __target_pos (setq _target_pos __target_pos)) _target_pos)
  (:target_vel
   (&optional __target_vel)
   (if __target_vel (setq _target_vel __target_vel)) _target_vel)
  (:target_tor
   (&optional __target_tor)
   (if __target_tor (setq _target_tor __target_tor)) _target_tor)
  (:serialization-length
   ()
   (+
    ;; int32 _control_word
    4
    ;; int32 _mode_op
    4
    ;; int32 _target_pos
    4
    ;; int32 _target_vel
    4
    ;; int32 _target_tor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _control_word
       (write-long _control_word s)
     ;; int32 _mode_op
       (write-long _mode_op s)
     ;; int32 _target_pos
       (write-long _target_pos s)
     ;; int32 _target_vel
       (write-long _target_vel s)
     ;; int32 _target_tor
       (write-long _target_tor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _control_word
     (setq _control_word (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode_op
     (setq _mode_op (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_pos
     (setq _target_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_vel
     (setq _target_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_tor
     (setq _target_tor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get indy_driver::ServoRx :md5sum-) "d5c6b4ee5c2eed6b17a8e2ef1c7b6e65")
(setf (get indy_driver::ServoRx :datatype-) "indy_driver/ServoRx")
(setf (get indy_driver::ServoRx :definition-)
      "int32 control_word
int32 mode_op
int32 target_pos
int32 target_vel
int32 target_tor
")



(provide :indy_driver/ServoRx "d5c6b4ee5c2eed6b17a8e2ef1c7b6e65")



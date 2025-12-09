;; Auto-generated. Do not edit!


(when (boundp 'indy_driver::IndyService)
  (if (not (find-package "INDY_DRIVER"))
    (make-package "INDY_DRIVER"))
  (shadow 'IndyService (find-package "INDY_DRIVER")))
(unless (find-package "INDY_DRIVER::INDYSERVICE")
  (make-package "INDY_DRIVER::INDYSERVICE"))
(unless (find-package "INDY_DRIVER::INDYSERVICEREQUEST")
  (make-package "INDY_DRIVER::INDYSERVICEREQUEST"))
(unless (find-package "INDY_DRIVER::INDYSERVICERESPONSE")
  (make-package "INDY_DRIVER::INDYSERVICERESPONSE"))

(in-package "ROS")





(defclass indy_driver::IndyServiceRequest
  :super ros::object
  :slots (_data ))

(defmethod indy_driver::IndyServiceRequest
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass indy_driver::IndyServiceResponse
  :super ros::object
  :slots (_success _message ))

(defmethod indy_driver::IndyServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass indy_driver::IndyService
  :super ros::object
  :slots ())

(setf (get indy_driver::IndyService :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get indy_driver::IndyService :datatype-) "indy_driver/IndyService")
(setf (get indy_driver::IndyService :request) indy_driver::IndyServiceRequest)
(setf (get indy_driver::IndyService :response) indy_driver::IndyServiceResponse)

(defmethod indy_driver::IndyServiceRequest
  (:response () (instance indy_driver::IndyServiceResponse :init)))

(setf (get indy_driver::IndyServiceRequest :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get indy_driver::IndyServiceRequest :datatype-) "indy_driver/IndyServiceRequest")
(setf (get indy_driver::IndyServiceRequest :definition-)
      "int32 data
---
bool success   # indicate successful run of service
string message # informational
")

(setf (get indy_driver::IndyServiceResponse :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get indy_driver::IndyServiceResponse :datatype-) "indy_driver/IndyServiceResponse")
(setf (get indy_driver::IndyServiceResponse :definition-)
      "int32 data
---
bool success   # indicate successful run of service
string message # informational
")



(provide :indy_driver/IndyService "41a6318c88ca9d75d7a585e2aa4ca6ea")



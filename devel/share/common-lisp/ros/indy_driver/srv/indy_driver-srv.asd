
(cl:in-package :asdf)

(defsystem "indy_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IndyService" :depends-on ("_package_IndyService"))
    (:file "_package_IndyService" :depends-on ("_package"))
  ))
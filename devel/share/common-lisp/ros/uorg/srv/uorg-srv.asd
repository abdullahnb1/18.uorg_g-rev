
(cl:in-package :asdf)

(defsystem "uorg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "konum" :depends-on ("_package_konum"))
    (:file "_package_konum" :depends-on ("_package"))
  ))
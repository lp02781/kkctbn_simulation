
(cl:in-package :asdf)

(defsystem "kucing-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joystick_node" :depends-on ("_package_joystick_node"))
    (:file "_package_joystick_node" :depends-on ("_package"))
    (:file "motor_flag" :depends-on ("_package_motor_flag"))
    (:file "_package_motor_flag" :depends-on ("_package"))
    (:file "override_motor" :depends-on ("_package_override_motor"))
    (:file "_package_override_motor" :depends-on ("_package"))
  ))
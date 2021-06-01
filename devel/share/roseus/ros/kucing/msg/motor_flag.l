;; Auto-generated. Do not edit!


(when (boundp 'kucing::motor_flag)
  (if (not (find-package "KUCING"))
    (make-package "KUCING"))
  (shadow 'motor_flag (find-package "KUCING")))
(unless (find-package "KUCING::MOTOR_FLAG")
  (make-package "KUCING::MOTOR_FLAG"))

(in-package "ROS")
;;//! \htmlinclude motor_flag.msg.html


(defclass kucing::motor_flag
  :super ros::object
  :slots (_override_status _joystick_status ))

(defmethod kucing::motor_flag
  (:init
   (&key
    ((:override_status __override_status) nil)
    ((:joystick_status __joystick_status) nil)
    )
   (send-super :init)
   (setq _override_status __override_status)
   (setq _joystick_status __joystick_status)
   self)
  (:override_status
   (&optional __override_status)
   (if __override_status (setq _override_status __override_status)) _override_status)
  (:joystick_status
   (&optional __joystick_status)
   (if __joystick_status (setq _joystick_status __joystick_status)) _joystick_status)
  (:serialization-length
   ()
   (+
    ;; bool _override_status
    1
    ;; bool _joystick_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _override_status
       (if _override_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _joystick_status
       (if _joystick_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _override_status
     (setq _override_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _joystick_status
     (setq _joystick_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kucing::motor_flag :md5sum-) "bfacfae75ff823d8fd718e2526da92db")
(setf (get kucing::motor_flag :datatype-) "kucing/motor_flag")
(setf (get kucing::motor_flag :definition-)
      "bool override_status
bool joystick_status

")



(provide :kucing/motor_flag "bfacfae75ff823d8fd718e2526da92db")



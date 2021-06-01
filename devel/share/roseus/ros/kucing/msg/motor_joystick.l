;; Auto-generated. Do not edit!


(when (boundp 'kucing::motor_joystick)
  (if (not (find-package "KUCING"))
    (make-package "KUCING"))
  (shadow 'motor_joystick (find-package "KUCING")))
(unless (find-package "KUCING::MOTOR_JOYSTICK")
  (make-package "KUCING::MOTOR_JOYSTICK"))

(in-package "ROS")
;;//! \htmlinclude motor_joystick.msg.html


(defclass kucing::motor_joystick
  :super ros::object
  :slots (_steering _throttle ))

(defmethod kucing::motor_joystick
  (:init
   (&key
    ((:steering __steering) 0)
    ((:throttle __throttle) 0)
    )
   (send-super :init)
   (setq _steering (round __steering))
   (setq _throttle (round __throttle))
   self)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:serialization-length
   ()
   (+
    ;; int16 _steering
    2
    ;; int16 _throttle
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _steering
       (write-word _steering s)
     ;; int16 _throttle
       (write-word _throttle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _steering
     (setq _steering (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _throttle
     (setq _throttle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kucing::motor_joystick :md5sum-) "c4dd5817de7802d91e66008f92eca79e")
(setf (get kucing::motor_joystick :datatype-) "kucing/motor_joystick")
(setf (get kucing::motor_joystick :definition-)
      "int16 steering
int16 throttle

")



(provide :kucing/motor_joystick "c4dd5817de7802d91e66008f92eca79e")



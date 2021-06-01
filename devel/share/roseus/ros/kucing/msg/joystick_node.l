;; Auto-generated. Do not edit!


(when (boundp 'kucing::joystick_node)
  (if (not (find-package "KUCING"))
    (make-package "KUCING"))
  (shadow 'joystick_node (find-package "KUCING")))
(unless (find-package "KUCING::JOYSTICK_NODE")
  (make-package "KUCING::JOYSTICK_NODE"))

(in-package "ROS")
;;//! \htmlinclude joystick_node.msg.html


(defclass kucing::joystick_node
  :super ros::object
  :slots (_left_analog _right_analog _r1_button _r2_button ))

(defmethod kucing::joystick_node
  (:init
   (&key
    ((:left_analog __left_analog) 0)
    ((:right_analog __right_analog) 0)
    ((:r1_button __r1_button) 0)
    ((:r2_button __r2_button) 0)
    )
   (send-super :init)
   (setq _left_analog (round __left_analog))
   (setq _right_analog (round __right_analog))
   (setq _r1_button (round __r1_button))
   (setq _r2_button (round __r2_button))
   self)
  (:left_analog
   (&optional __left_analog)
   (if __left_analog (setq _left_analog __left_analog)) _left_analog)
  (:right_analog
   (&optional __right_analog)
   (if __right_analog (setq _right_analog __right_analog)) _right_analog)
  (:r1_button
   (&optional __r1_button)
   (if __r1_button (setq _r1_button __r1_button)) _r1_button)
  (:r2_button
   (&optional __r2_button)
   (if __r2_button (setq _r2_button __r2_button)) _r2_button)
  (:serialization-length
   ()
   (+
    ;; int16 _left_analog
    2
    ;; int16 _right_analog
    2
    ;; int16 _r1_button
    2
    ;; int16 _r2_button
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _left_analog
       (write-word _left_analog s)
     ;; int16 _right_analog
       (write-word _right_analog s)
     ;; int16 _r1_button
       (write-word _r1_button s)
     ;; int16 _r2_button
       (write-word _r2_button s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _left_analog
     (setq _left_analog (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_analog
     (setq _right_analog (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _r1_button
     (setq _r1_button (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _r2_button
     (setq _r2_button (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kucing::joystick_node :md5sum-) "59a9a1a36478e9f78bd496b9cfc96a4f")
(setf (get kucing::joystick_node :datatype-) "kucing/joystick_node")
(setf (get kucing::joystick_node :definition-)
      "int16 left_analog
int16 right_analog
int16 r1_button
int16 r2_button

")



(provide :kucing/joystick_node "59a9a1a36478e9f78bd496b9cfc96a4f")



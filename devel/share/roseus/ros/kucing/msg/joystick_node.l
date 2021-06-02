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
    ((:left_analog __left_analog) 0.0)
    ((:right_analog __right_analog) 0.0)
    ((:r1_button __r1_button) 0)
    ((:r2_button __r2_button) 0)
    )
   (send-super :init)
   (setq _left_analog (float __left_analog))
   (setq _right_analog (float __right_analog))
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
    ;; float32 _left_analog
    4
    ;; float32 _right_analog
    4
    ;; int16 _r1_button
    2
    ;; int16 _r2_button
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left_analog
       (sys::poke _left_analog (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_analog
       (sys::poke _right_analog (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _r1_button
       (write-word _r1_button s)
     ;; int16 _r2_button
       (write-word _r2_button s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left_analog
     (setq _left_analog (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_analog
     (setq _right_analog (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _r1_button
     (setq _r1_button (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _r2_button
     (setq _r2_button (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get kucing::joystick_node :md5sum-) "ad9674d7456ffdb9a269ad95daab1773")
(setf (get kucing::joystick_node :datatype-) "kucing/joystick_node")
(setf (get kucing::joystick_node :definition-)
      "float32 left_analog
float32 right_analog
int16 r1_button
int16 r2_button

")



(provide :kucing/joystick_node "ad9674d7456ffdb9a269ad95daab1773")



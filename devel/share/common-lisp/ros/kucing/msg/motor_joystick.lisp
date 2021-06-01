; Auto-generated. Do not edit!


(cl:in-package kucing-msg)


;//! \htmlinclude motor_joystick.msg.html

(cl:defclass <motor_joystick> (roslisp-msg-protocol:ros-message)
  ((steering
    :reader steering
    :initarg :steering
    :type cl:fixnum
    :initform 0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass motor_joystick (<motor_joystick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_joystick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_joystick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kucing-msg:<motor_joystick> is deprecated: use kucing-msg:motor_joystick instead.")))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <motor_joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:steering-val is deprecated.  Use kucing-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <motor_joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:throttle-val is deprecated.  Use kucing-msg:throttle instead.")
  (throttle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_joystick>) ostream)
  "Serializes a message object of type '<motor_joystick>"
  (cl:let* ((signed (cl:slot-value msg 'steering)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'throttle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_joystick>) istream)
  "Deserializes a message object of type '<motor_joystick>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_joystick>)))
  "Returns string type for a message object of type '<motor_joystick>"
  "kucing/motor_joystick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_joystick)))
  "Returns string type for a message object of type 'motor_joystick"
  "kucing/motor_joystick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_joystick>)))
  "Returns md5sum for a message object of type '<motor_joystick>"
  "c4dd5817de7802d91e66008f92eca79e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_joystick)))
  "Returns md5sum for a message object of type 'motor_joystick"
  "c4dd5817de7802d91e66008f92eca79e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_joystick>)))
  "Returns full string definition for message of type '<motor_joystick>"
  (cl:format cl:nil "int16 steering~%int16 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_joystick)))
  "Returns full string definition for message of type 'motor_joystick"
  (cl:format cl:nil "int16 steering~%int16 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_joystick>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_joystick>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_joystick
    (cl:cons ':steering (steering msg))
    (cl:cons ':throttle (throttle msg))
))

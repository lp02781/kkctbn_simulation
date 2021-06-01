; Auto-generated. Do not edit!


(cl:in-package kucing-msg)


;//! \htmlinclude motor_flag.msg.html

(cl:defclass <motor_flag> (roslisp-msg-protocol:ros-message)
  ((override_status
    :reader override_status
    :initarg :override_status
    :type cl:boolean
    :initform cl:nil)
   (joystick_status
    :reader joystick_status
    :initarg :joystick_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass motor_flag (<motor_flag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_flag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_flag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kucing-msg:<motor_flag> is deprecated: use kucing-msg:motor_flag instead.")))

(cl:ensure-generic-function 'override_status-val :lambda-list '(m))
(cl:defmethod override_status-val ((m <motor_flag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:override_status-val is deprecated.  Use kucing-msg:override_status instead.")
  (override_status m))

(cl:ensure-generic-function 'joystick_status-val :lambda-list '(m))
(cl:defmethod joystick_status-val ((m <motor_flag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:joystick_status-val is deprecated.  Use kucing-msg:joystick_status instead.")
  (joystick_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_flag>) ostream)
  "Serializes a message object of type '<motor_flag>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'joystick_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_flag>) istream)
  "Deserializes a message object of type '<motor_flag>"
    (cl:setf (cl:slot-value msg 'override_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'joystick_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_flag>)))
  "Returns string type for a message object of type '<motor_flag>"
  "kucing/motor_flag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_flag)))
  "Returns string type for a message object of type 'motor_flag"
  "kucing/motor_flag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_flag>)))
  "Returns md5sum for a message object of type '<motor_flag>"
  "bfacfae75ff823d8fd718e2526da92db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_flag)))
  "Returns md5sum for a message object of type 'motor_flag"
  "bfacfae75ff823d8fd718e2526da92db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_flag>)))
  "Returns full string definition for message of type '<motor_flag>"
  (cl:format cl:nil "bool override_status~%bool joystick_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_flag)))
  "Returns full string definition for message of type 'motor_flag"
  (cl:format cl:nil "bool override_status~%bool joystick_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_flag>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_flag>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_flag
    (cl:cons ':override_status (override_status msg))
    (cl:cons ':joystick_status (joystick_status msg))
))

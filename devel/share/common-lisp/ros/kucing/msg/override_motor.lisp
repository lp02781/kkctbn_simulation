; Auto-generated. Do not edit!


(cl:in-package kucing-msg)


;//! \htmlinclude override_motor.msg.html

(cl:defclass <override_motor> (roslisp-msg-protocol:ros-message)
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

(cl:defclass override_motor (<override_motor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <override_motor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'override_motor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kucing-msg:<override_motor> is deprecated: use kucing-msg:override_motor instead.")))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <override_motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:steering-val is deprecated.  Use kucing-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <override_motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:throttle-val is deprecated.  Use kucing-msg:throttle instead.")
  (throttle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <override_motor>) ostream)
  "Serializes a message object of type '<override_motor>"
  (cl:let* ((signed (cl:slot-value msg 'steering)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'throttle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <override_motor>) istream)
  "Deserializes a message object of type '<override_motor>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<override_motor>)))
  "Returns string type for a message object of type '<override_motor>"
  "kucing/override_motor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'override_motor)))
  "Returns string type for a message object of type 'override_motor"
  "kucing/override_motor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<override_motor>)))
  "Returns md5sum for a message object of type '<override_motor>"
  "c4dd5817de7802d91e66008f92eca79e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'override_motor)))
  "Returns md5sum for a message object of type 'override_motor"
  "c4dd5817de7802d91e66008f92eca79e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<override_motor>)))
  "Returns full string definition for message of type '<override_motor>"
  (cl:format cl:nil "int16 steering~%int16 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'override_motor)))
  "Returns full string definition for message of type 'override_motor"
  (cl:format cl:nil "int16 steering~%int16 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <override_motor>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <override_motor>))
  "Converts a ROS message object to a list"
  (cl:list 'override_motor
    (cl:cons ':steering (steering msg))
    (cl:cons ':throttle (throttle msg))
))

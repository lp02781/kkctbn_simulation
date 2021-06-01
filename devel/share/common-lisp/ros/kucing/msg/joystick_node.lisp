; Auto-generated. Do not edit!


(cl:in-package kucing-msg)


;//! \htmlinclude joystick_node.msg.html

(cl:defclass <joystick_node> (roslisp-msg-protocol:ros-message)
  ((left_analog
    :reader left_analog
    :initarg :left_analog
    :type cl:fixnum
    :initform 0)
   (right_analog
    :reader right_analog
    :initarg :right_analog
    :type cl:fixnum
    :initform 0)
   (r1_button
    :reader r1_button
    :initarg :r1_button
    :type cl:fixnum
    :initform 0)
   (r2_button
    :reader r2_button
    :initarg :r2_button
    :type cl:fixnum
    :initform 0))
)

(cl:defclass joystick_node (<joystick_node>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joystick_node>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joystick_node)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kucing-msg:<joystick_node> is deprecated: use kucing-msg:joystick_node instead.")))

(cl:ensure-generic-function 'left_analog-val :lambda-list '(m))
(cl:defmethod left_analog-val ((m <joystick_node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:left_analog-val is deprecated.  Use kucing-msg:left_analog instead.")
  (left_analog m))

(cl:ensure-generic-function 'right_analog-val :lambda-list '(m))
(cl:defmethod right_analog-val ((m <joystick_node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:right_analog-val is deprecated.  Use kucing-msg:right_analog instead.")
  (right_analog m))

(cl:ensure-generic-function 'r1_button-val :lambda-list '(m))
(cl:defmethod r1_button-val ((m <joystick_node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:r1_button-val is deprecated.  Use kucing-msg:r1_button instead.")
  (r1_button m))

(cl:ensure-generic-function 'r2_button-val :lambda-list '(m))
(cl:defmethod r2_button-val ((m <joystick_node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kucing-msg:r2_button-val is deprecated.  Use kucing-msg:r2_button instead.")
  (r2_button m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joystick_node>) ostream)
  "Serializes a message object of type '<joystick_node>"
  (cl:let* ((signed (cl:slot-value msg 'left_analog)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_analog)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'r1_button)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'r2_button)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joystick_node>) istream)
  "Deserializes a message object of type '<joystick_node>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_analog) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_analog) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r1_button) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r2_button) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joystick_node>)))
  "Returns string type for a message object of type '<joystick_node>"
  "kucing/joystick_node")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joystick_node)))
  "Returns string type for a message object of type 'joystick_node"
  "kucing/joystick_node")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joystick_node>)))
  "Returns md5sum for a message object of type '<joystick_node>"
  "59a9a1a36478e9f78bd496b9cfc96a4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joystick_node)))
  "Returns md5sum for a message object of type 'joystick_node"
  "59a9a1a36478e9f78bd496b9cfc96a4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joystick_node>)))
  "Returns full string definition for message of type '<joystick_node>"
  (cl:format cl:nil "int16 left_analog~%int16 right_analog~%int16 r1_button~%int16 r2_button~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joystick_node)))
  "Returns full string definition for message of type 'joystick_node"
  (cl:format cl:nil "int16 left_analog~%int16 right_analog~%int16 r1_button~%int16 r2_button~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joystick_node>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joystick_node>))
  "Converts a ROS message object to a list"
  (cl:list 'joystick_node
    (cl:cons ':left_analog (left_analog msg))
    (cl:cons ':right_analog (right_analog msg))
    (cl:cons ':r1_button (r1_button msg))
    (cl:cons ':r2_button (r2_button msg))
))

; Auto-generated. Do not edit!


(cl:in-package robot_pkg-msg)


;//! \htmlinclude robot_msg.msg.html

(cl:defclass <robot_msg> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0))
)

(cl:defclass robot_msg (<robot_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_pkg-msg:<robot_msg> is deprecated: use robot_pkg-msg:robot_msg instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:text-val is deprecated.  Use robot_pkg-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <robot_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pkg-msg:x-val is deprecated.  Use robot_pkg-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_msg>) ostream)
  "Serializes a message object of type '<robot_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_msg>) istream)
  "Deserializes a message object of type '<robot_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_msg>)))
  "Returns string type for a message object of type '<robot_msg>"
  "robot_pkg/robot_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_msg)))
  "Returns string type for a message object of type 'robot_msg"
  "robot_pkg/robot_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_msg>)))
  "Returns md5sum for a message object of type '<robot_msg>"
  "202a3b74963980c3734c0032f172165d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_msg)))
  "Returns md5sum for a message object of type 'robot_msg"
  "202a3b74963980c3734c0032f172165d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_msg>)))
  "Returns full string definition for message of type '<robot_msg>"
  (cl:format cl:nil "string text~%int64 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_msg)))
  "Returns full string definition for message of type 'robot_msg"
  (cl:format cl:nil "string text~%int64 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_msg
    (cl:cons ':text (text msg))
    (cl:cons ':x (x msg))
))

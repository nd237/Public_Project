;; Auto-generated. Do not edit!


(when (boundp 'robot_pkg::robot_msg)
  (if (not (find-package "ROBOT_PKG"))
    (make-package "ROBOT_PKG"))
  (shadow 'robot_msg (find-package "ROBOT_PKG")))
(unless (find-package "ROBOT_PKG::ROBOT_MSG")
  (make-package "ROBOT_PKG::ROBOT_MSG"))

(in-package "ROS")
;;//! \htmlinclude robot_msg.msg.html


(defclass robot_pkg::robot_msg
  :super ros::object
  :slots (_text _x ))

(defmethod robot_pkg::robot_msg
  (:init
   (&key
    ((:text __text) "")
    ((:x __x) 0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _x (round __x))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; int64 _x
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; int64 _x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _x) (= (length (_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_x . bv) 0) 0) s)
              (write-long (ash (elt (_x . bv) 1) -1) s))
             ((and (class _x) (= (length (_x . bv)) 1)) ;; big1
              (write-long (elt (_x . bv) 0) s)
              (write-long (if (>= _x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _x s)(write-long (if (>= _x 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _x
#+(or :alpha :irix6 :x86_64)
      (setf _x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get robot_pkg::robot_msg :md5sum-) "202a3b74963980c3734c0032f172165d")
(setf (get robot_pkg::robot_msg :datatype-) "robot_pkg/robot_msg")
(setf (get robot_pkg::robot_msg :definition-)
      "string text
int64 x

")



(provide :robot_pkg/robot_msg "202a3b74963980c3734c0032f172165d")



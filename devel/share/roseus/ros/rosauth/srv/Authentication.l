;; Auto-generated. Do not edit!


(when (boundp 'rosauth::Authentication)
  (if (not (find-package "ROSAUTH"))
    (make-package "ROSAUTH"))
  (shadow 'Authentication (find-package "ROSAUTH")))
(unless (find-package "ROSAUTH::AUTHENTICATION")
  (make-package "ROSAUTH::AUTHENTICATION"))
(unless (find-package "ROSAUTH::AUTHENTICATIONREQUEST")
  (make-package "ROSAUTH::AUTHENTICATIONREQUEST"))
(unless (find-package "ROSAUTH::AUTHENTICATIONRESPONSE")
  (make-package "ROSAUTH::AUTHENTICATIONRESPONSE"))

(in-package "ROS")





(defclass rosauth::AuthenticationRequest
  :super ros::object
  :slots (_mac _client _dest _rand _t _level _end ))

(defmethod rosauth::AuthenticationRequest
  (:init
   (&key
    ((:mac __mac) "")
    ((:client __client) "")
    ((:dest __dest) "")
    ((:rand __rand) "")
    ((:t __t) (instance ros::time :init))
    ((:level __level) "")
    ((:end __end) (instance ros::time :init))
    )
   (send-super :init)
   (setq _mac (string __mac))
   (setq _client (string __client))
   (setq _dest (string __dest))
   (setq _rand (string __rand))
   (setq _t __t)
   (setq _level (string __level))
   (setq _end __end)
   self)
  (:mac
   (&optional __mac)
   (if __mac (setq _mac __mac)) _mac)
  (:client
   (&optional __client)
   (if __client (setq _client __client)) _client)
  (:dest
   (&optional __dest)
   (if __dest (setq _dest __dest)) _dest)
  (:rand
   (&optional __rand)
   (if __rand (setq _rand __rand)) _rand)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; string _mac
    4 (length _mac)
    ;; string _client
    4 (length _client)
    ;; string _dest
    4 (length _dest)
    ;; string _rand
    4 (length _rand)
    ;; time _t
    8
    ;; string _level
    4 (length _level)
    ;; time _end
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mac
       (write-long (length _mac) s) (princ _mac s)
     ;; string _client
       (write-long (length _client) s) (princ _client s)
     ;; string _dest
       (write-long (length _dest) s) (princ _dest s)
     ;; string _rand
       (write-long (length _rand) s) (princ _rand s)
     ;; time _t
       (write-long (send _t :sec) s) (write-long (send _t :nsec) s)
     ;; string _level
       (write-long (length _level) s) (princ _level s)
     ;; time _end
       (write-long (send _end :sec) s) (write-long (send _end :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mac
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mac (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _client
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _client (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dest
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dest (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _t
     (send _t :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _end
     (send _end :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _end :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rosauth::AuthenticationResponse
  :super ros::object
  :slots (_authenticated ))

(defmethod rosauth::AuthenticationResponse
  (:init
   (&key
    ((:authenticated __authenticated) nil)
    )
   (send-super :init)
   (setq _authenticated __authenticated)
   self)
  (:authenticated
   (&optional __authenticated)
   (if __authenticated (setq _authenticated __authenticated)) _authenticated)
  (:serialization-length
   ()
   (+
    ;; bool _authenticated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _authenticated
       (if _authenticated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _authenticated
     (setq _authenticated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosauth::Authentication
  :super ros::object
  :slots ())

(setf (get rosauth::Authentication :md5sum-) "0297b5bdd9c066699bfaf0157aad17e7")
(setf (get rosauth::Authentication :datatype-) "rosauth/Authentication")
(setf (get rosauth::Authentication :request) rosauth::AuthenticationRequest)
(setf (get rosauth::Authentication :response) rosauth::AuthenticationResponse)

(defmethod rosauth::AuthenticationRequest
  (:response () (instance rosauth::AuthenticationResponse :init)))

(setf (get rosauth::AuthenticationRequest :md5sum-) "0297b5bdd9c066699bfaf0157aad17e7")
(setf (get rosauth::AuthenticationRequest :datatype-) "rosauth/AuthenticationRequest")
(setf (get rosauth::AuthenticationRequest :definition-)
      "
string mac

string client

string dest

string rand

time t

string level

time end
---

bool authenticated

")

(setf (get rosauth::AuthenticationResponse :md5sum-) "0297b5bdd9c066699bfaf0157aad17e7")
(setf (get rosauth::AuthenticationResponse :datatype-) "rosauth/AuthenticationResponse")
(setf (get rosauth::AuthenticationResponse :definition-)
      "
string mac

string client

string dest

string rand

time t

string level

time end
---

bool authenticated

")



(provide :rosauth/Authentication "0297b5bdd9c066699bfaf0157aad17e7")



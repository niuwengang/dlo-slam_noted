;; Auto-generated. Do not edit!


(when (boundp 'direct_lidar_odometry::save_traj)
  (if (not (find-package "DIRECT_LIDAR_ODOMETRY"))
    (make-package "DIRECT_LIDAR_ODOMETRY"))
  (shadow 'save_traj (find-package "DIRECT_LIDAR_ODOMETRY")))
(unless (find-package "DIRECT_LIDAR_ODOMETRY::SAVE_TRAJ")
  (make-package "DIRECT_LIDAR_ODOMETRY::SAVE_TRAJ"))
(unless (find-package "DIRECT_LIDAR_ODOMETRY::SAVE_TRAJREQUEST")
  (make-package "DIRECT_LIDAR_ODOMETRY::SAVE_TRAJREQUEST"))
(unless (find-package "DIRECT_LIDAR_ODOMETRY::SAVE_TRAJRESPONSE")
  (make-package "DIRECT_LIDAR_ODOMETRY::SAVE_TRAJRESPONSE"))

(in-package "ROS")





(defclass direct_lidar_odometry::save_trajRequest
  :super ros::object
  :slots (_save_path ))

(defmethod direct_lidar_odometry::save_trajRequest
  (:init
   (&key
    ((:save_path __save_path) "")
    )
   (send-super :init)
   (setq _save_path (string __save_path))
   self)
  (:save_path
   (&optional __save_path)
   (if __save_path (setq _save_path __save_path)) _save_path)
  (:serialization-length
   ()
   (+
    ;; string _save_path
    4 (length _save_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _save_path
       (write-long (length _save_path) s) (princ _save_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _save_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _save_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass direct_lidar_odometry::save_trajResponse
  :super ros::object
  :slots (_success ))

(defmethod direct_lidar_odometry::save_trajResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass direct_lidar_odometry::save_traj
  :super ros::object
  :slots ())

(setf (get direct_lidar_odometry::save_traj :md5sum-) "ac67446d8a94887127d80e989a0feea9")
(setf (get direct_lidar_odometry::save_traj :datatype-) "direct_lidar_odometry/save_traj")
(setf (get direct_lidar_odometry::save_traj :request) direct_lidar_odometry::save_trajRequest)
(setf (get direct_lidar_odometry::save_traj :response) direct_lidar_odometry::save_trajResponse)

(defmethod direct_lidar_odometry::save_trajRequest
  (:response () (instance direct_lidar_odometry::save_trajResponse :init)))

(setf (get direct_lidar_odometry::save_trajRequest :md5sum-) "ac67446d8a94887127d80e989a0feea9")
(setf (get direct_lidar_odometry::save_trajRequest :datatype-) "direct_lidar_odometry/save_trajRequest")
(setf (get direct_lidar_odometry::save_trajRequest :definition-)
      "string save_path
---
bool success

")

(setf (get direct_lidar_odometry::save_trajResponse :md5sum-) "ac67446d8a94887127d80e989a0feea9")
(setf (get direct_lidar_odometry::save_trajResponse :datatype-) "direct_lidar_odometry/save_trajResponse")
(setf (get direct_lidar_odometry::save_trajResponse :definition-)
      "string save_path
---
bool success

")



(provide :direct_lidar_odometry/save_traj "ac67446d8a94887127d80e989a0feea9")



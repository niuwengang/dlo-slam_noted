;; Auto-generated. Do not edit!


(when (boundp 'direct_lidar_odometry::save_pcd)
  (if (not (find-package "DIRECT_LIDAR_ODOMETRY"))
    (make-package "DIRECT_LIDAR_ODOMETRY"))
  (shadow 'save_pcd (find-package "DIRECT_LIDAR_ODOMETRY")))
(unless (find-package "DIRECT_LIDAR_ODOMETRY::SAVE_PCD")
  (make-package "DIRECT_LIDAR_ODOMETRY::SAVE_PCD"))
(unless (find-package "DIRECT_LIDAR_ODOMETRY::SAVE_PCDREQUEST")
  (make-package "DIRECT_LIDAR_ODOMETRY::SAVE_PCDREQUEST"))
(unless (find-package "DIRECT_LIDAR_ODOMETRY::SAVE_PCDRESPONSE")
  (make-package "DIRECT_LIDAR_ODOMETRY::SAVE_PCDRESPONSE"))

(in-package "ROS")





(defclass direct_lidar_odometry::save_pcdRequest
  :super ros::object
  :slots (_leaf_size _save_path ))

(defmethod direct_lidar_odometry::save_pcdRequest
  (:init
   (&key
    ((:leaf_size __leaf_size) 0.0)
    ((:save_path __save_path) "")
    )
   (send-super :init)
   (setq _leaf_size (float __leaf_size))
   (setq _save_path (string __save_path))
   self)
  (:leaf_size
   (&optional __leaf_size)
   (if __leaf_size (setq _leaf_size __leaf_size)) _leaf_size)
  (:save_path
   (&optional __save_path)
   (if __save_path (setq _save_path __save_path)) _save_path)
  (:serialization-length
   ()
   (+
    ;; float32 _leaf_size
    4
    ;; string _save_path
    4 (length _save_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _leaf_size
       (sys::poke _leaf_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _save_path
       (write-long (length _save_path) s) (princ _save_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _leaf_size
     (setq _leaf_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _save_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _save_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass direct_lidar_odometry::save_pcdResponse
  :super ros::object
  :slots (_success ))

(defmethod direct_lidar_odometry::save_pcdResponse
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

(defclass direct_lidar_odometry::save_pcd
  :super ros::object
  :slots ())

(setf (get direct_lidar_odometry::save_pcd :md5sum-) "9fd870b6932171ca7a964d532d4402b9")
(setf (get direct_lidar_odometry::save_pcd :datatype-) "direct_lidar_odometry/save_pcd")
(setf (get direct_lidar_odometry::save_pcd :request) direct_lidar_odometry::save_pcdRequest)
(setf (get direct_lidar_odometry::save_pcd :response) direct_lidar_odometry::save_pcdResponse)

(defmethod direct_lidar_odometry::save_pcdRequest
  (:response () (instance direct_lidar_odometry::save_pcdResponse :init)))

(setf (get direct_lidar_odometry::save_pcdRequest :md5sum-) "9fd870b6932171ca7a964d532d4402b9")
(setf (get direct_lidar_odometry::save_pcdRequest :datatype-) "direct_lidar_odometry/save_pcdRequest")
(setf (get direct_lidar_odometry::save_pcdRequest :definition-)
      "float32 leaf_size
string save_path
---
bool success
")

(setf (get direct_lidar_odometry::save_pcdResponse :md5sum-) "9fd870b6932171ca7a964d532d4402b9")
(setf (get direct_lidar_odometry::save_pcdResponse :datatype-) "direct_lidar_odometry/save_pcdResponse")
(setf (get direct_lidar_odometry::save_pcdResponse :definition-)
      "float32 leaf_size
string save_path
---
bool success
")



(provide :direct_lidar_odometry/save_pcd "9fd870b6932171ca7a964d532d4402b9")



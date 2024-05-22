// Auto-generated. Do not edit!

// (in-package direct_lidar_odometry.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class save_pcdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leaf_size = null;
      this.save_path = null;
    }
    else {
      if (initObj.hasOwnProperty('leaf_size')) {
        this.leaf_size = initObj.leaf_size
      }
      else {
        this.leaf_size = 0.0;
      }
      if (initObj.hasOwnProperty('save_path')) {
        this.save_path = initObj.save_path
      }
      else {
        this.save_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_pcdRequest
    // Serialize message field [leaf_size]
    bufferOffset = _serializer.float32(obj.leaf_size, buffer, bufferOffset);
    // Serialize message field [save_path]
    bufferOffset = _serializer.string(obj.save_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_pcdRequest
    let len;
    let data = new save_pcdRequest(null);
    // Deserialize message field [leaf_size]
    data.leaf_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [save_path]
    data.save_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.save_path);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'direct_lidar_odometry/save_pcdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a003751e1806c213c7a86bef08fa5bba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 leaf_size
    string save_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_pcdRequest(null);
    if (msg.leaf_size !== undefined) {
      resolved.leaf_size = msg.leaf_size;
    }
    else {
      resolved.leaf_size = 0.0
    }

    if (msg.save_path !== undefined) {
      resolved.save_path = msg.save_path;
    }
    else {
      resolved.save_path = ''
    }

    return resolved;
    }
};

class save_pcdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_pcdResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_pcdResponse
    let len;
    let data = new save_pcdResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'direct_lidar_odometry/save_pcdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_pcdResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: save_pcdRequest,
  Response: save_pcdResponse,
  md5sum() { return '9fd870b6932171ca7a964d532d4402b9'; },
  datatype() { return 'direct_lidar_odometry/save_pcd'; }
};

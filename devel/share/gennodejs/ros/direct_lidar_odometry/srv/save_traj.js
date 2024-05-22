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

class save_trajRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.save_path = null;
    }
    else {
      if (initObj.hasOwnProperty('save_path')) {
        this.save_path = initObj.save_path
      }
      else {
        this.save_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_trajRequest
    // Serialize message field [save_path]
    bufferOffset = _serializer.string(obj.save_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_trajRequest
    let len;
    let data = new save_trajRequest(null);
    // Deserialize message field [save_path]
    data.save_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.save_path);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'direct_lidar_odometry/save_trajRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd220fdd29bb0f13aa508a49f780235bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string save_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_trajRequest(null);
    if (msg.save_path !== undefined) {
      resolved.save_path = msg.save_path;
    }
    else {
      resolved.save_path = ''
    }

    return resolved;
    }
};

class save_trajResponse {
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
    // Serializes a message object of type save_trajResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_trajResponse
    let len;
    let data = new save_trajResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'direct_lidar_odometry/save_trajResponse';
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
    const resolved = new save_trajResponse(null);
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
  Request: save_trajRequest,
  Response: save_trajResponse,
  md5sum() { return 'ac67446d8a94887127d80e989a0feea9'; },
  datatype() { return 'direct_lidar_odometry/save_traj'; }
};

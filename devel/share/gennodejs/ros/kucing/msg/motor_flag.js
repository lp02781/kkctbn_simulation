// Auto-generated. Do not edit!

// (in-package kucing.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motor_flag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.override_status = null;
    }
    else {
      if (initObj.hasOwnProperty('override_status')) {
        this.override_status = initObj.override_status
      }
      else {
        this.override_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_flag
    // Serialize message field [override_status]
    bufferOffset = _serializer.bool(obj.override_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_flag
    let len;
    let data = new motor_flag(null);
    // Deserialize message field [override_status]
    data.override_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kucing/motor_flag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4dd85ad23193e9f5e96775d4f377d490';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool override_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_flag(null);
    if (msg.override_status !== undefined) {
      resolved.override_status = msg.override_status;
    }
    else {
      resolved.override_status = false
    }

    return resolved;
    }
};

module.exports = motor_flag;

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

class joystick_node {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_analog = null;
      this.right_analog = null;
      this.r1_button = null;
      this.r2_button = null;
    }
    else {
      if (initObj.hasOwnProperty('left_analog')) {
        this.left_analog = initObj.left_analog
      }
      else {
        this.left_analog = 0.0;
      }
      if (initObj.hasOwnProperty('right_analog')) {
        this.right_analog = initObj.right_analog
      }
      else {
        this.right_analog = 0.0;
      }
      if (initObj.hasOwnProperty('r1_button')) {
        this.r1_button = initObj.r1_button
      }
      else {
        this.r1_button = 0;
      }
      if (initObj.hasOwnProperty('r2_button')) {
        this.r2_button = initObj.r2_button
      }
      else {
        this.r2_button = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joystick_node
    // Serialize message field [left_analog]
    bufferOffset = _serializer.float32(obj.left_analog, buffer, bufferOffset);
    // Serialize message field [right_analog]
    bufferOffset = _serializer.float32(obj.right_analog, buffer, bufferOffset);
    // Serialize message field [r1_button]
    bufferOffset = _serializer.int16(obj.r1_button, buffer, bufferOffset);
    // Serialize message field [r2_button]
    bufferOffset = _serializer.int16(obj.r2_button, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joystick_node
    let len;
    let data = new joystick_node(null);
    // Deserialize message field [left_analog]
    data.left_analog = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_analog]
    data.right_analog = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r1_button]
    data.r1_button = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [r2_button]
    data.r2_button = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kucing/joystick_node';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad9674d7456ffdb9a269ad95daab1773';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 left_analog
    float32 right_analog
    int16 r1_button
    int16 r2_button
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joystick_node(null);
    if (msg.left_analog !== undefined) {
      resolved.left_analog = msg.left_analog;
    }
    else {
      resolved.left_analog = 0.0
    }

    if (msg.right_analog !== undefined) {
      resolved.right_analog = msg.right_analog;
    }
    else {
      resolved.right_analog = 0.0
    }

    if (msg.r1_button !== undefined) {
      resolved.r1_button = msg.r1_button;
    }
    else {
      resolved.r1_button = 0
    }

    if (msg.r2_button !== undefined) {
      resolved.r2_button = msg.r2_button;
    }
    else {
      resolved.r2_button = 0
    }

    return resolved;
    }
};

module.exports = joystick_node;

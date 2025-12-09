// Auto-generated. Do not edit!

// (in-package indy_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ServoRx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_word = null;
      this.mode_op = null;
      this.target_pos = null;
      this.target_vel = null;
      this.target_tor = null;
    }
    else {
      if (initObj.hasOwnProperty('control_word')) {
        this.control_word = initObj.control_word
      }
      else {
        this.control_word = 0;
      }
      if (initObj.hasOwnProperty('mode_op')) {
        this.mode_op = initObj.mode_op
      }
      else {
        this.mode_op = 0;
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = 0;
      }
      if (initObj.hasOwnProperty('target_vel')) {
        this.target_vel = initObj.target_vel
      }
      else {
        this.target_vel = 0;
      }
      if (initObj.hasOwnProperty('target_tor')) {
        this.target_tor = initObj.target_tor
      }
      else {
        this.target_tor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoRx
    // Serialize message field [control_word]
    bufferOffset = _serializer.int32(obj.control_word, buffer, bufferOffset);
    // Serialize message field [mode_op]
    bufferOffset = _serializer.int32(obj.mode_op, buffer, bufferOffset);
    // Serialize message field [target_pos]
    bufferOffset = _serializer.int32(obj.target_pos, buffer, bufferOffset);
    // Serialize message field [target_vel]
    bufferOffset = _serializer.int32(obj.target_vel, buffer, bufferOffset);
    // Serialize message field [target_tor]
    bufferOffset = _serializer.int32(obj.target_tor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoRx
    let len;
    let data = new ServoRx(null);
    // Deserialize message field [control_word]
    data.control_word = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode_op]
    data.mode_op = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_pos]
    data.target_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_vel]
    data.target_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_tor]
    data.target_tor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'indy_driver/ServoRx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5c6b4ee5c2eed6b17a8e2ef1c7b6e65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 control_word
    int32 mode_op
    int32 target_pos
    int32 target_vel
    int32 target_tor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoRx(null);
    if (msg.control_word !== undefined) {
      resolved.control_word = msg.control_word;
    }
    else {
      resolved.control_word = 0
    }

    if (msg.mode_op !== undefined) {
      resolved.mode_op = msg.mode_op;
    }
    else {
      resolved.mode_op = 0
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = msg.target_pos;
    }
    else {
      resolved.target_pos = 0
    }

    if (msg.target_vel !== undefined) {
      resolved.target_vel = msg.target_vel;
    }
    else {
      resolved.target_vel = 0
    }

    if (msg.target_tor !== undefined) {
      resolved.target_tor = msg.target_tor;
    }
    else {
      resolved.target_tor = 0
    }

    return resolved;
    }
};

module.exports = ServoRx;

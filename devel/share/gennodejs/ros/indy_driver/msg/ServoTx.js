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

class ServoTx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status_word = null;
      this.mode_op_disp = null;
      this.actual_pos = null;
      this.actual_vel = null;
      this.actual_tor = null;
    }
    else {
      if (initObj.hasOwnProperty('status_word')) {
        this.status_word = initObj.status_word
      }
      else {
        this.status_word = '';
      }
      if (initObj.hasOwnProperty('mode_op_disp')) {
        this.mode_op_disp = initObj.mode_op_disp
      }
      else {
        this.mode_op_disp = '';
      }
      if (initObj.hasOwnProperty('actual_pos')) {
        this.actual_pos = initObj.actual_pos
      }
      else {
        this.actual_pos = 0;
      }
      if (initObj.hasOwnProperty('actual_vel')) {
        this.actual_vel = initObj.actual_vel
      }
      else {
        this.actual_vel = 0;
      }
      if (initObj.hasOwnProperty('actual_tor')) {
        this.actual_tor = initObj.actual_tor
      }
      else {
        this.actual_tor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoTx
    // Serialize message field [status_word]
    bufferOffset = _serializer.string(obj.status_word, buffer, bufferOffset);
    // Serialize message field [mode_op_disp]
    bufferOffset = _serializer.string(obj.mode_op_disp, buffer, bufferOffset);
    // Serialize message field [actual_pos]
    bufferOffset = _serializer.int32(obj.actual_pos, buffer, bufferOffset);
    // Serialize message field [actual_vel]
    bufferOffset = _serializer.int32(obj.actual_vel, buffer, bufferOffset);
    // Serialize message field [actual_tor]
    bufferOffset = _serializer.int32(obj.actual_tor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoTx
    let len;
    let data = new ServoTx(null);
    // Deserialize message field [status_word]
    data.status_word = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode_op_disp]
    data.mode_op_disp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actual_pos]
    data.actual_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [actual_vel]
    data.actual_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [actual_tor]
    data.actual_tor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status_word);
    length += _getByteLength(object.mode_op_disp);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'indy_driver/ServoTx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7e61d6578fded045ebf5ac1e96178fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status_word
    string mode_op_disp
    int32 actual_pos
    int32 actual_vel
    int32 actual_tor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoTx(null);
    if (msg.status_word !== undefined) {
      resolved.status_word = msg.status_word;
    }
    else {
      resolved.status_word = ''
    }

    if (msg.mode_op_disp !== undefined) {
      resolved.mode_op_disp = msg.mode_op_disp;
    }
    else {
      resolved.mode_op_disp = ''
    }

    if (msg.actual_pos !== undefined) {
      resolved.actual_pos = msg.actual_pos;
    }
    else {
      resolved.actual_pos = 0
    }

    if (msg.actual_vel !== undefined) {
      resolved.actual_vel = msg.actual_vel;
    }
    else {
      resolved.actual_vel = 0
    }

    if (msg.actual_tor !== undefined) {
      resolved.actual_tor = msg.actual_tor;
    }
    else {
      resolved.actual_tor = 0
    }

    return resolved;
    }
};

module.exports = ServoTx;

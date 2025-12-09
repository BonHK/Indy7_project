// Auto-generated. Do not edit!

// (in-package indy_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ServoTx = require('./ServoTx.js');
let ServoRx = require('./ServoRx.js');

//-----------------------------------------------------------

class ServoDataArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tx = null;
      this.rx = null;
    }
    else {
      if (initObj.hasOwnProperty('tx')) {
        this.tx = initObj.tx
      }
      else {
        this.tx = [];
      }
      if (initObj.hasOwnProperty('rx')) {
        this.rx = initObj.rx
      }
      else {
        this.rx = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoDataArray
    // Serialize message field [tx]
    // Serialize the length for message field [tx]
    bufferOffset = _serializer.uint32(obj.tx.length, buffer, bufferOffset);
    obj.tx.forEach((val) => {
      bufferOffset = ServoTx.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rx]
    // Serialize the length for message field [rx]
    bufferOffset = _serializer.uint32(obj.rx.length, buffer, bufferOffset);
    obj.rx.forEach((val) => {
      bufferOffset = ServoRx.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoDataArray
    let len;
    let data = new ServoDataArray(null);
    // Deserialize message field [tx]
    // Deserialize array length for message field [tx]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tx = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tx[i] = ServoTx.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rx]
    // Deserialize array length for message field [rx]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rx = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rx[i] = ServoRx.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.tx.forEach((val) => {
      length += ServoTx.getMessageSize(val);
    });
    length += 20 * object.rx.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'indy_driver/ServoDataArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0442b85a27d0cc075ac423773b420d07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ServoTx[] tx
    ServoRx[] rx
    
    ================================================================================
    MSG: indy_driver/ServoTx
    string status_word
    string mode_op_disp
    int32 actual_pos
    int32 actual_vel
    int32 actual_tor
    
    ================================================================================
    MSG: indy_driver/ServoRx
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
    const resolved = new ServoDataArray(null);
    if (msg.tx !== undefined) {
      resolved.tx = new Array(msg.tx.length);
      for (let i = 0; i < resolved.tx.length; ++i) {
        resolved.tx[i] = ServoTx.Resolve(msg.tx[i]);
      }
    }
    else {
      resolved.tx = []
    }

    if (msg.rx !== undefined) {
      resolved.rx = new Array(msg.rx.length);
      for (let i = 0; i < resolved.rx.length; ++i) {
        resolved.rx[i] = ServoRx.Resolve(msg.rx[i]);
      }
    }
    else {
      resolved.rx = []
    }

    return resolved;
    }
};

module.exports = ServoDataArray;

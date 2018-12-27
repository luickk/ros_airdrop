// Auto-generated. Do not edit!

// (in-package battery_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bat_stat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bat_val = null;
    }
    else {
      if (initObj.hasOwnProperty('bat_val')) {
        this.bat_val = initObj.bat_val
      }
      else {
        this.bat_val = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bat_stat
    // Serialize message field [bat_val]
    bufferOffset = _serializer.int32(obj.bat_val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bat_stat
    let len;
    let data = new bat_stat(null);
    // Deserialize message field [bat_val]
    data.bat_val = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'battery_node/bat_stat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6362255f22432ff23dbe6f399bfa3970';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 bat_val
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bat_stat(null);
    if (msg.bat_val !== undefined) {
      resolved.bat_val = msg.bat_val;
    }
    else {
      resolved.bat_val = 0
    }

    return resolved;
    }
};

module.exports = bat_stat;

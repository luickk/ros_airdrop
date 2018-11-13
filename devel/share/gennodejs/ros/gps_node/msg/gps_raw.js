// Auto-generated. Do not edit!

// (in-package gps_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gps_raw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gps_sats = null;
      this.lat = null;
      this.lon = null;
      this.heading = null;
      this.alt = null;
    }
    else {
      if (initObj.hasOwnProperty('gps_sats')) {
        this.gps_sats = initObj.gps_sats
      }
      else {
        this.gps_sats = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gps_raw
    // Serialize message field [gps_sats]
    bufferOffset = _serializer.int32(obj.gps_sats, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float32(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float32(obj.lon, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.int32(obj.heading, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.int32(obj.alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gps_raw
    let len;
    let data = new gps_raw(null);
    // Deserialize message field [gps_sats]
    data.gps_sats = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_node/gps_raw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b370abee1ae60162d73fe65bb7c660bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 gps_sats
    float32 lat
    float32 lon
    int32 heading
    int32 alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gps_raw(null);
    if (msg.gps_sats !== undefined) {
      resolved.gps_sats = msg.gps_sats;
    }
    else {
      resolved.gps_sats = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0
    }

    return resolved;
    }
};

module.exports = gps_raw;

// Auto-generated. Do not edit!

// (in-package cc_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class get_set_take_off_posRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_set = null;
    }
    else {
      if (initObj.hasOwnProperty('get_set')) {
        this.get_set = initObj.get_set
      }
      else {
        this.get_set = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_set_take_off_posRequest
    // Serialize message field [get_set]
    bufferOffset = _serializer.string(obj.get_set, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_set_take_off_posRequest
    let len;
    let data = new get_set_take_off_posRequest(null);
    // Deserialize message field [get_set]
    data.get_set = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.get_set.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/get_set_take_off_posRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2cef4ab6248f728f13eff83f95609803';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string get_set
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_set_take_off_posRequest(null);
    if (msg.get_set !== undefined) {
      resolved.get_set = msg.get_set;
    }
    else {
      resolved.get_set = ''
    }

    return resolved;
    }
};

class get_set_take_off_posResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gps_sats = null;
      this.lat = null;
      this.lon = null;
      this.heading = null;
      this.alt = null;
      this.system_status = null;
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
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_set_take_off_posResponse
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
    // Serialize message field [system_status]
    bufferOffset = _serializer.int64(obj.system_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_set_take_off_posResponse
    let len;
    let data = new get_set_take_off_posResponse(null);
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
    // Deserialize message field [system_status]
    data.system_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/get_set_take_off_posResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cb4460c3feccef855e07eaec0608a98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 gps_sats
    float32 lat
    float32 lon
    int32 heading
    int32 alt
    int64 system_status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_set_take_off_posResponse(null);
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

    if (msg.system_status !== undefined) {
      resolved.system_status = msg.system_status;
    }
    else {
      resolved.system_status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: get_set_take_off_posRequest,
  Response: get_set_take_off_posResponse,
  md5sum() { return 'cb8b16d8dc4146dca7889be0392bf192'; },
  datatype() { return 'cc_node/get_set_take_off_pos'; }
};

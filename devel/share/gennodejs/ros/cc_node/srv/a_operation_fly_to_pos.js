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

class a_operation_fly_to_posRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_lat = null;
      this.pos_lon = null;
      this.pos_alt = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_lat')) {
        this.pos_lat = initObj.pos_lat
      }
      else {
        this.pos_lat = 0.0;
      }
      if (initObj.hasOwnProperty('pos_lon')) {
        this.pos_lon = initObj.pos_lon
      }
      else {
        this.pos_lon = 0.0;
      }
      if (initObj.hasOwnProperty('pos_alt')) {
        this.pos_alt = initObj.pos_alt
      }
      else {
        this.pos_alt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type a_operation_fly_to_posRequest
    // Serialize message field [pos_lat]
    bufferOffset = _serializer.float32(obj.pos_lat, buffer, bufferOffset);
    // Serialize message field [pos_lon]
    bufferOffset = _serializer.float32(obj.pos_lon, buffer, bufferOffset);
    // Serialize message field [pos_alt]
    bufferOffset = _serializer.int32(obj.pos_alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_fly_to_posRequest
    let len;
    let data = new a_operation_fly_to_posRequest(null);
    // Deserialize message field [pos_lat]
    data.pos_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_lon]
    data.pos_lon = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_alt]
    data.pos_alt = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_fly_to_posRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a77ffc40f4385f5dc620837897fc6939';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pos_lat
    float32 pos_lon
    int32 pos_alt
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new a_operation_fly_to_posRequest(null);
    if (msg.pos_lat !== undefined) {
      resolved.pos_lat = msg.pos_lat;
    }
    else {
      resolved.pos_lat = 0.0
    }

    if (msg.pos_lon !== undefined) {
      resolved.pos_lon = msg.pos_lon;
    }
    else {
      resolved.pos_lon = 0.0
    }

    if (msg.pos_alt !== undefined) {
      resolved.pos_alt = msg.pos_alt;
    }
    else {
      resolved.pos_alt = 0
    }

    return resolved;
    }
};

class a_operation_fly_to_posResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a_operation_status = null;
    }
    else {
      if (initObj.hasOwnProperty('a_operation_status')) {
        this.a_operation_status = initObj.a_operation_status
      }
      else {
        this.a_operation_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type a_operation_fly_to_posResponse
    // Serialize message field [a_operation_status]
    bufferOffset = _serializer.int64(obj.a_operation_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_fly_to_posResponse
    let len;
    let data = new a_operation_fly_to_posResponse(null);
    // Deserialize message field [a_operation_status]
    data.a_operation_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_fly_to_posResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa4a747d8b0e410755f5b193c983180c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a_operation_status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new a_operation_fly_to_posResponse(null);
    if (msg.a_operation_status !== undefined) {
      resolved.a_operation_status = msg.a_operation_status;
    }
    else {
      resolved.a_operation_status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: a_operation_fly_to_posRequest,
  Response: a_operation_fly_to_posResponse,
  md5sum() { return 'f535eee77eb701869745e49cc8201a71'; },
  datatype() { return 'cc_node/a_operation_fly_to_pos'; }
};

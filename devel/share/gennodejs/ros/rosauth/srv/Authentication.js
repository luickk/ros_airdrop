// Auto-generated. Do not edit!

// (in-package rosauth.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AuthenticationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mac = null;
      this.client = null;
      this.dest = null;
      this.rand = null;
      this.t = null;
      this.level = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('mac')) {
        this.mac = initObj.mac
      }
      else {
        this.mac = '';
      }
      if (initObj.hasOwnProperty('client')) {
        this.client = initObj.client
      }
      else {
        this.client = '';
      }
      if (initObj.hasOwnProperty('dest')) {
        this.dest = initObj.dest
      }
      else {
        this.dest = '';
      }
      if (initObj.hasOwnProperty('rand')) {
        this.rand = initObj.rand
      }
      else {
        this.rand = '';
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = '';
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuthenticationRequest
    // Serialize message field [mac]
    bufferOffset = _serializer.string(obj.mac, buffer, bufferOffset);
    // Serialize message field [client]
    bufferOffset = _serializer.string(obj.client, buffer, bufferOffset);
    // Serialize message field [dest]
    bufferOffset = _serializer.string(obj.dest, buffer, bufferOffset);
    // Serialize message field [rand]
    bufferOffset = _serializer.string(obj.rand, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.time(obj.t, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.string(obj.level, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.time(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuthenticationRequest
    let len;
    let data = new AuthenticationRequest(null);
    // Deserialize message field [mac]
    data.mac = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [client]
    data.client = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dest]
    data.dest = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rand]
    data.rand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mac.length;
    length += object.client.length;
    length += object.dest.length;
    length += object.rand.length;
    length += object.level.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosauth/AuthenticationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cad474945b8be70807460ba22a018b32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string mac
    
    string client
    
    string dest
    
    string rand
    
    time t
    
    string level
    
    time end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuthenticationRequest(null);
    if (msg.mac !== undefined) {
      resolved.mac = msg.mac;
    }
    else {
      resolved.mac = ''
    }

    if (msg.client !== undefined) {
      resolved.client = msg.client;
    }
    else {
      resolved.client = ''
    }

    if (msg.dest !== undefined) {
      resolved.dest = msg.dest;
    }
    else {
      resolved.dest = ''
    }

    if (msg.rand !== undefined) {
      resolved.rand = msg.rand;
    }
    else {
      resolved.rand = ''
    }

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = {secs: 0, nsecs: 0}
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = ''
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class AuthenticationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.authenticated = null;
    }
    else {
      if (initObj.hasOwnProperty('authenticated')) {
        this.authenticated = initObj.authenticated
      }
      else {
        this.authenticated = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuthenticationResponse
    // Serialize message field [authenticated]
    bufferOffset = _serializer.bool(obj.authenticated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuthenticationResponse
    let len;
    let data = new AuthenticationResponse(null);
    // Deserialize message field [authenticated]
    data.authenticated = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosauth/AuthenticationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7eb9cf569b3e4581e3eff49da1ca4f39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool authenticated
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuthenticationResponse(null);
    if (msg.authenticated !== undefined) {
      resolved.authenticated = msg.authenticated;
    }
    else {
      resolved.authenticated = false
    }

    return resolved;
    }
};

module.exports = {
  Request: AuthenticationRequest,
  Response: AuthenticationResponse,
  md5sum() { return '0297b5bdd9c066699bfaf0157aad17e7'; },
  datatype() { return 'rosauth/Authentication'; }
};

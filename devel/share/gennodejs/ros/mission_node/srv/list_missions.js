// Auto-generated. Do not edit!

// (in-package mission_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class list_missionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type list_missionsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type list_missionsRequest
    let len;
    let data = new list_missionsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mission_node/list_missionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new list_missionsRequest(null);
    return resolved;
    }
};

class list_missionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_list = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_list')) {
        this.mission_list = initObj.mission_list
      }
      else {
        this.mission_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type list_missionsResponse
    // Serialize message field [mission_list]
    bufferOffset = _arraySerializer.string(obj.mission_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type list_missionsResponse
    let len;
    let data = new list_missionsResponse(null);
    // Deserialize message field [mission_list]
    data.mission_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.mission_list.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mission_node/list_missionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d952d9b438834ab872583b9374911ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] mission_list
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new list_missionsResponse(null);
    if (msg.mission_list !== undefined) {
      resolved.mission_list = msg.mission_list;
    }
    else {
      resolved.mission_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: list_missionsRequest,
  Response: list_missionsResponse,
  md5sum() { return '3d952d9b438834ab872583b9374911ec'; },
  datatype() { return 'mission_node/list_missions'; }
};

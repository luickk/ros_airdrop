
"use strict";

let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestNestedService = require('./TestNestedService.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestEmpty = require('./TestEmpty.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestResponseOnly = require('./TestResponseOnly.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let SendBytes = require('./SendBytes.js')
let AddTwoInts = require('./AddTwoInts.js')

module.exports = {
  TestRequestAndResponse: TestRequestAndResponse,
  TestNestedService: TestNestedService,
  TestRequestOnly: TestRequestOnly,
  TestEmpty: TestEmpty,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestArrayRequest: TestArrayRequest,
  TestResponseOnly: TestResponseOnly,
  TestMultipleResponseFields: TestMultipleResponseFields,
  SendBytes: SendBytes,
  AddTwoInts: AddTwoInts,
};

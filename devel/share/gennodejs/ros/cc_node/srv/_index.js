
"use strict";

let a_operation_stop_action_and_hover = require('./a_operation_stop_action_and_hover.js')
let get_set_take_off_pos = require('./get_set_take_off_pos.js')
let a_operation_turn_to_direction = require('./a_operation_turn_to_direction.js')
let a_operation_landing = require('./a_operation_landing.js')
let a_operation_liftoff = require('./a_operation_liftoff.js')
let manual_action = require('./manual_action.js')
let a_operation_fly_to_pos = require('./a_operation_fly_to_pos.js')

module.exports = {
  a_operation_stop_action_and_hover: a_operation_stop_action_and_hover,
  get_set_take_off_pos: get_set_take_off_pos,
  a_operation_turn_to_direction: a_operation_turn_to_direction,
  a_operation_landing: a_operation_landing,
  a_operation_liftoff: a_operation_liftoff,
  manual_action: manual_action,
  a_operation_fly_to_pos: a_operation_fly_to_pos,
};

// Generated by gencpp from file cc_node/a_operation_stop_action_and_hover.msg
// DO NOT EDIT!


#ifndef CC_NODE_MESSAGE_A_OPERATION_STOP_ACTION_AND_HOVER_H
#define CC_NODE_MESSAGE_A_OPERATION_STOP_ACTION_AND_HOVER_H

#include <ros/service_traits.h>


#include <cc_node/a_operation_stop_action_and_hoverRequest.h>
#include <cc_node/a_operation_stop_action_and_hoverResponse.h>


namespace cc_node
{

struct a_operation_stop_action_and_hover
{

typedef a_operation_stop_action_and_hoverRequest Request;
typedef a_operation_stop_action_and_hoverResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct a_operation_stop_action_and_hover
} // namespace cc_node


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cc_node::a_operation_stop_action_and_hover > {
  static const char* value()
  {
    return "9f7e3069e3c41eb7fbdf0bd3a0382e98";
  }

  static const char* value(const ::cc_node::a_operation_stop_action_and_hover&) { return value(); }
};

template<>
struct DataType< ::cc_node::a_operation_stop_action_and_hover > {
  static const char* value()
  {
    return "cc_node/a_operation_stop_action_and_hover";
  }

  static const char* value(const ::cc_node::a_operation_stop_action_and_hover&) { return value(); }
};


// service_traits::MD5Sum< ::cc_node::a_operation_stop_action_and_hoverRequest> should match 
// service_traits::MD5Sum< ::cc_node::a_operation_stop_action_and_hover > 
template<>
struct MD5Sum< ::cc_node::a_operation_stop_action_and_hoverRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cc_node::a_operation_stop_action_and_hover >::value();
  }
  static const char* value(const ::cc_node::a_operation_stop_action_and_hoverRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cc_node::a_operation_stop_action_and_hoverRequest> should match 
// service_traits::DataType< ::cc_node::a_operation_stop_action_and_hover > 
template<>
struct DataType< ::cc_node::a_operation_stop_action_and_hoverRequest>
{
  static const char* value()
  {
    return DataType< ::cc_node::a_operation_stop_action_and_hover >::value();
  }
  static const char* value(const ::cc_node::a_operation_stop_action_and_hoverRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cc_node::a_operation_stop_action_and_hoverResponse> should match 
// service_traits::MD5Sum< ::cc_node::a_operation_stop_action_and_hover > 
template<>
struct MD5Sum< ::cc_node::a_operation_stop_action_and_hoverResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cc_node::a_operation_stop_action_and_hover >::value();
  }
  static const char* value(const ::cc_node::a_operation_stop_action_and_hoverResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cc_node::a_operation_stop_action_and_hoverResponse> should match 
// service_traits::DataType< ::cc_node::a_operation_stop_action_and_hover > 
template<>
struct DataType< ::cc_node::a_operation_stop_action_and_hoverResponse>
{
  static const char* value()
  {
    return DataType< ::cc_node::a_operation_stop_action_and_hover >::value();
  }
  static const char* value(const ::cc_node::a_operation_stop_action_and_hoverResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CC_NODE_MESSAGE_A_OPERATION_STOP_ACTION_AND_HOVER_H

// Generated by gencpp from file cc_node/a_operation_liftoff.msg
// DO NOT EDIT!


#ifndef CC_NODE_MESSAGE_A_OPERATION_LIFTOFF_H
#define CC_NODE_MESSAGE_A_OPERATION_LIFTOFF_H

#include <ros/service_traits.h>


#include <cc_node/a_operation_liftoffRequest.h>
#include <cc_node/a_operation_liftoffResponse.h>


namespace cc_node
{

struct a_operation_liftoff
{

typedef a_operation_liftoffRequest Request;
typedef a_operation_liftoffResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct a_operation_liftoff
} // namespace cc_node


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cc_node::a_operation_liftoff > {
  static const char* value()
  {
    return "343f536d7b1f038b89dbbbafadb1a351";
  }

  static const char* value(const ::cc_node::a_operation_liftoff&) { return value(); }
};

template<>
struct DataType< ::cc_node::a_operation_liftoff > {
  static const char* value()
  {
    return "cc_node/a_operation_liftoff";
  }

  static const char* value(const ::cc_node::a_operation_liftoff&) { return value(); }
};


// service_traits::MD5Sum< ::cc_node::a_operation_liftoffRequest> should match 
// service_traits::MD5Sum< ::cc_node::a_operation_liftoff > 
template<>
struct MD5Sum< ::cc_node::a_operation_liftoffRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cc_node::a_operation_liftoff >::value();
  }
  static const char* value(const ::cc_node::a_operation_liftoffRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cc_node::a_operation_liftoffRequest> should match 
// service_traits::DataType< ::cc_node::a_operation_liftoff > 
template<>
struct DataType< ::cc_node::a_operation_liftoffRequest>
{
  static const char* value()
  {
    return DataType< ::cc_node::a_operation_liftoff >::value();
  }
  static const char* value(const ::cc_node::a_operation_liftoffRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cc_node::a_operation_liftoffResponse> should match 
// service_traits::MD5Sum< ::cc_node::a_operation_liftoff > 
template<>
struct MD5Sum< ::cc_node::a_operation_liftoffResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cc_node::a_operation_liftoff >::value();
  }
  static const char* value(const ::cc_node::a_operation_liftoffResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cc_node::a_operation_liftoffResponse> should match 
// service_traits::DataType< ::cc_node::a_operation_liftoff > 
template<>
struct DataType< ::cc_node::a_operation_liftoffResponse>
{
  static const char* value()
  {
    return DataType< ::cc_node::a_operation_liftoff >::value();
  }
  static const char* value(const ::cc_node::a_operation_liftoffResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CC_NODE_MESSAGE_A_OPERATION_LIFTOFF_H

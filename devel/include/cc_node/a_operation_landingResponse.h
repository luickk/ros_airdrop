// Generated by gencpp from file cc_node/a_operation_landingResponse.msg
// DO NOT EDIT!


#ifndef CC_NODE_MESSAGE_A_OPERATION_LANDINGRESPONSE_H
#define CC_NODE_MESSAGE_A_OPERATION_LANDINGRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cc_node
{
template <class ContainerAllocator>
struct a_operation_landingResponse_
{
  typedef a_operation_landingResponse_<ContainerAllocator> Type;

  a_operation_landingResponse_()
    : a_operation_status(0)  {
    }
  a_operation_landingResponse_(const ContainerAllocator& _alloc)
    : a_operation_status(0)  {
  (void)_alloc;
    }



   typedef int64_t _a_operation_status_type;
  _a_operation_status_type a_operation_status;




  typedef boost::shared_ptr< ::cc_node::a_operation_landingResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cc_node::a_operation_landingResponse_<ContainerAllocator> const> ConstPtr;

}; // struct a_operation_landingResponse_

typedef ::cc_node::a_operation_landingResponse_<std::allocator<void> > a_operation_landingResponse;

typedef boost::shared_ptr< ::cc_node::a_operation_landingResponse > a_operation_landingResponsePtr;
typedef boost::shared_ptr< ::cc_node::a_operation_landingResponse const> a_operation_landingResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cc_node::a_operation_landingResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cc_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cc_node::a_operation_landingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cc_node::a_operation_landingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cc_node::a_operation_landingResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa4a747d8b0e410755f5b193c983180c";
  }

  static const char* value(const ::cc_node::a_operation_landingResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa4a747d8b0e4107ULL;
  static const uint64_t static_value2 = 0x55f5b193c983180cULL;
};

template<class ContainerAllocator>
struct DataType< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc_node/a_operation_landingResponse";
  }

  static const char* value(const ::cc_node::a_operation_landingResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 a_operation_status\n\
\n\
";
  }

  static const char* value(const ::cc_node::a_operation_landingResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a_operation_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct a_operation_landingResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cc_node::a_operation_landingResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cc_node::a_operation_landingResponse_<ContainerAllocator>& v)
  {
    s << indent << "a_operation_status: ";
    Printer<int64_t>::stream(s, indent + "  ", v.a_operation_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CC_NODE_MESSAGE_A_OPERATION_LANDINGRESPONSE_H

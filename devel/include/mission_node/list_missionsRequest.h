// Generated by gencpp from file mission_node/list_missionsRequest.msg
// DO NOT EDIT!


#ifndef MISSION_NODE_MESSAGE_LIST_MISSIONSREQUEST_H
#define MISSION_NODE_MESSAGE_LIST_MISSIONSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mission_node
{
template <class ContainerAllocator>
struct list_missionsRequest_
{
  typedef list_missionsRequest_<ContainerAllocator> Type;

  list_missionsRequest_()
    {
    }
  list_missionsRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::mission_node::list_missionsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mission_node::list_missionsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct list_missionsRequest_

typedef ::mission_node::list_missionsRequest_<std::allocator<void> > list_missionsRequest;

typedef boost::shared_ptr< ::mission_node::list_missionsRequest > list_missionsRequestPtr;
typedef boost::shared_ptr< ::mission_node::list_missionsRequest const> list_missionsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mission_node::list_missionsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mission_node::list_missionsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mission_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mission_node::list_missionsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mission_node::list_missionsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mission_node::list_missionsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mission_node::list_missionsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mission_node::list_missionsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mission_node::list_missionsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mission_node::list_missionsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::mission_node::list_missionsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::mission_node::list_missionsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mission_node/list_missionsRequest";
  }

  static const char* value(const ::mission_node::list_missionsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mission_node::list_missionsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::mission_node::list_missionsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mission_node::list_missionsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct list_missionsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mission_node::list_missionsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::mission_node::list_missionsRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MISSION_NODE_MESSAGE_LIST_MISSIONSREQUEST_H
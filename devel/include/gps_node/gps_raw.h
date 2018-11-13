// Generated by gencpp from file gps_node/gps_raw.msg
// DO NOT EDIT!


#ifndef GPS_NODE_MESSAGE_GPS_RAW_H
#define GPS_NODE_MESSAGE_GPS_RAW_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gps_node
{
template <class ContainerAllocator>
struct gps_raw_
{
  typedef gps_raw_<ContainerAllocator> Type;

  gps_raw_()
    : gps_sats(0)
    , lat(0.0)
    , lon(0.0)
    , heading(0)
    , alt(0)  {
    }
  gps_raw_(const ContainerAllocator& _alloc)
    : gps_sats(0)
    , lat(0.0)
    , lon(0.0)
    , heading(0)
    , alt(0)  {
  (void)_alloc;
    }



   typedef int32_t _gps_sats_type;
  _gps_sats_type gps_sats;

   typedef float _lat_type;
  _lat_type lat;

   typedef float _lon_type;
  _lon_type lon;

   typedef int32_t _heading_type;
  _heading_type heading;

   typedef int32_t _alt_type;
  _alt_type alt;





  typedef boost::shared_ptr< ::gps_node::gps_raw_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gps_node::gps_raw_<ContainerAllocator> const> ConstPtr;

}; // struct gps_raw_

typedef ::gps_node::gps_raw_<std::allocator<void> > gps_raw;

typedef boost::shared_ptr< ::gps_node::gps_raw > gps_rawPtr;
typedef boost::shared_ptr< ::gps_node::gps_raw const> gps_rawConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gps_node::gps_raw_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gps_node::gps_raw_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gps_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'gps_node': ['/home/pi/airdrop_ros/src/gps_node/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gps_node::gps_raw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gps_node::gps_raw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_node::gps_raw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_node::gps_raw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_node::gps_raw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_node::gps_raw_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gps_node::gps_raw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b370abee1ae60162d73fe65bb7c660bd";
  }

  static const char* value(const ::gps_node::gps_raw_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb370abee1ae60162ULL;
  static const uint64_t static_value2 = 0xd73fe65bb7c660bdULL;
};

template<class ContainerAllocator>
struct DataType< ::gps_node::gps_raw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gps_node/gps_raw";
  }

  static const char* value(const ::gps_node::gps_raw_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gps_node::gps_raw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 gps_sats\n\
float32 lat\n\
float32 lon\n\
int32 heading\n\
int32 alt\n\
";
  }

  static const char* value(const ::gps_node::gps_raw_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gps_node::gps_raw_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gps_sats);
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.heading);
      stream.next(m.alt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gps_raw_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gps_node::gps_raw_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gps_node::gps_raw_<ContainerAllocator>& v)
  {
    s << indent << "gps_sats: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gps_sats);
    s << indent << "lat: ";
    Printer<float>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<float>::stream(s, indent + "  ", v.lon);
    s << indent << "heading: ";
    Printer<int32_t>::stream(s, indent + "  ", v.heading);
    s << indent << "alt: ";
    Printer<int32_t>::stream(s, indent + "  ", v.alt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPS_NODE_MESSAGE_GPS_RAW_H

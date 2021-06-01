// Generated by gencpp from file kucing/joystick_node.msg
// DO NOT EDIT!


#ifndef KUCING_MESSAGE_JOYSTICK_NODE_H
#define KUCING_MESSAGE_JOYSTICK_NODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kucing
{
template <class ContainerAllocator>
struct joystick_node_
{
  typedef joystick_node_<ContainerAllocator> Type;

  joystick_node_()
    : left_analog(0)
    , right_analog(0)
    , r1_button(0)
    , r2_button(0)  {
    }
  joystick_node_(const ContainerAllocator& _alloc)
    : left_analog(0)
    , right_analog(0)
    , r1_button(0)
    , r2_button(0)  {
  (void)_alloc;
    }



   typedef int16_t _left_analog_type;
  _left_analog_type left_analog;

   typedef int16_t _right_analog_type;
  _right_analog_type right_analog;

   typedef int16_t _r1_button_type;
  _r1_button_type r1_button;

   typedef int16_t _r2_button_type;
  _r2_button_type r2_button;





  typedef boost::shared_ptr< ::kucing::joystick_node_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kucing::joystick_node_<ContainerAllocator> const> ConstPtr;

}; // struct joystick_node_

typedef ::kucing::joystick_node_<std::allocator<void> > joystick_node;

typedef boost::shared_ptr< ::kucing::joystick_node > joystick_nodePtr;
typedef boost::shared_ptr< ::kucing::joystick_node const> joystick_nodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kucing::joystick_node_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kucing::joystick_node_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kucing::joystick_node_<ContainerAllocator1> & lhs, const ::kucing::joystick_node_<ContainerAllocator2> & rhs)
{
  return lhs.left_analog == rhs.left_analog &&
    lhs.right_analog == rhs.right_analog &&
    lhs.r1_button == rhs.r1_button &&
    lhs.r2_button == rhs.r2_button;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kucing::joystick_node_<ContainerAllocator1> & lhs, const ::kucing::joystick_node_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kucing

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kucing::joystick_node_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kucing::joystick_node_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kucing::joystick_node_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kucing::joystick_node_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kucing::joystick_node_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kucing::joystick_node_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kucing::joystick_node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "59a9a1a36478e9f78bd496b9cfc96a4f";
  }

  static const char* value(const ::kucing::joystick_node_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x59a9a1a36478e9f7ULL;
  static const uint64_t static_value2 = 0x8bd496b9cfc96a4fULL;
};

template<class ContainerAllocator>
struct DataType< ::kucing::joystick_node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kucing/joystick_node";
  }

  static const char* value(const ::kucing::joystick_node_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kucing::joystick_node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 left_analog\n"
"int16 right_analog\n"
"int16 r1_button\n"
"int16 r2_button\n"
;
  }

  static const char* value(const ::kucing::joystick_node_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kucing::joystick_node_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left_analog);
      stream.next(m.right_analog);
      stream.next(m.r1_button);
      stream.next(m.r2_button);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct joystick_node_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kucing::joystick_node_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kucing::joystick_node_<ContainerAllocator>& v)
  {
    s << indent << "left_analog: ";
    Printer<int16_t>::stream(s, indent + "  ", v.left_analog);
    s << indent << "right_analog: ";
    Printer<int16_t>::stream(s, indent + "  ", v.right_analog);
    s << indent << "r1_button: ";
    Printer<int16_t>::stream(s, indent + "  ", v.r1_button);
    s << indent << "r2_button: ";
    Printer<int16_t>::stream(s, indent + "  ", v.r2_button);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUCING_MESSAGE_JOYSTICK_NODE_H

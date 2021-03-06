// Generated by gencpp from file kucing/motor_flag.msg
// DO NOT EDIT!


#ifndef KUCING_MESSAGE_MOTOR_FLAG_H
#define KUCING_MESSAGE_MOTOR_FLAG_H


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
struct motor_flag_
{
  typedef motor_flag_<ContainerAllocator> Type;

  motor_flag_()
    : override_status(false)  {
    }
  motor_flag_(const ContainerAllocator& _alloc)
    : override_status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _override_status_type;
  _override_status_type override_status;





  typedef boost::shared_ptr< ::kucing::motor_flag_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kucing::motor_flag_<ContainerAllocator> const> ConstPtr;

}; // struct motor_flag_

typedef ::kucing::motor_flag_<std::allocator<void> > motor_flag;

typedef boost::shared_ptr< ::kucing::motor_flag > motor_flagPtr;
typedef boost::shared_ptr< ::kucing::motor_flag const> motor_flagConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kucing::motor_flag_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kucing::motor_flag_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kucing::motor_flag_<ContainerAllocator1> & lhs, const ::kucing::motor_flag_<ContainerAllocator2> & rhs)
{
  return lhs.override_status == rhs.override_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kucing::motor_flag_<ContainerAllocator1> & lhs, const ::kucing::motor_flag_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kucing

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kucing::motor_flag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kucing::motor_flag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kucing::motor_flag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kucing::motor_flag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kucing::motor_flag_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kucing::motor_flag_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kucing::motor_flag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4dd85ad23193e9f5e96775d4f377d490";
  }

  static const char* value(const ::kucing::motor_flag_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4dd85ad23193e9f5ULL;
  static const uint64_t static_value2 = 0xe96775d4f377d490ULL;
};

template<class ContainerAllocator>
struct DataType< ::kucing::motor_flag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kucing/motor_flag";
  }

  static const char* value(const ::kucing::motor_flag_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kucing::motor_flag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool override_status\n"
;
  }

  static const char* value(const ::kucing::motor_flag_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kucing::motor_flag_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.override_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct motor_flag_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kucing::motor_flag_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kucing::motor_flag_<ContainerAllocator>& v)
  {
    s << indent << "override_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.override_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUCING_MESSAGE_MOTOR_FLAG_H

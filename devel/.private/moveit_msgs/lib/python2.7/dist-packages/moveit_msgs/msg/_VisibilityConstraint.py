# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from moveit_msgs/VisibilityConstraint.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class VisibilityConstraint(genpy.Message):
  _md5sum = "62cda903bfe31ff2e5fcdc3810d577ad"
  _type = "moveit_msgs/VisibilityConstraint"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# The constraint is useful to maintain visibility to a disc (the target) in a particular frame.
# This disc forms the base of a visibiliy cone whose tip is at the origin of the sensor.
# Maintaining visibility is done by ensuring the robot does not obstruct the visibility cone.
# Note:
# This constraint does NOT enforce minimum or maximum distances between the sensor
# and the target, nor does it enforce the target to be in the field of view of
# the sensor. A PositionConstraint can (and probably should) be used for such purposes.

# The radius of the disc that should be maintained visible 
float64 target_radius

# The pose of the disc; as the robot moves, the pose of the disc may change as well
# This can be in the frame of a particular robot link, for example
geometry_msgs/PoseStamped target_pose

# From the sensor origin towards the target, the disc forms a visibility cone
# This cone is approximated using many sides. For example, when using 4 sides, 
# that in fact makes the visibility region be a pyramid.
# This value should always be 3 or more.
int32 cone_sides

# The pose in which visibility is to be maintained.
# The frame id should represent the robot link to which the sensor is attached.
# It is assumed the sensor can look directly at the target, in any direction.
# This assumption is usually not true, but additional PositionConstraints
# can resolve this issue.
geometry_msgs/PoseStamped sensor_pose

# Even though the disc is maintained visible, the visibility cone can be very small
# because of the orientation of the disc with respect to the sensor. It is possible
# for example to view the disk almost from a side, in which case the visibility cone 
# can end up having close to 0 volume. The view angle is defined to be the angle between
# the normal to the visibility disc and the direction vector from the sensor origin.
# The value below represents the minimum desired view angle. For a perfect view,
# this value will be 0 (the two vectors are exact opposites). For a completely obstructed view
# this value will be Pi/2 (the vectors are perpendicular). This value defined below 
# is the maximum view angle to be maintained. This should be a value in the open interval
# (0, Pi/2). If 0 is set, the view angle is NOT enforced.
float64 max_view_angle

# This angle is used similarly to max_view_angle but limits the maximum angle
# between the sensor origin direction vector and the axis that connects the
# sensor origin to the target frame origin. The value is again in the range (0, Pi/2)
# and is NOT enforced if set to 0.
float64 max_range_angle

# The axis that is assumed to indicate the direction of view for the sensor
# X = 2, Y = 1, Z = 0
uint8 SENSOR_Z=0
uint8 SENSOR_Y=1
uint8 SENSOR_X=2
uint8 sensor_view_direction

# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
float64 weight

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  # Pseudo-constants
  SENSOR_Z = 0
  SENSOR_Y = 1
  SENSOR_X = 2

  __slots__ = ['target_radius','target_pose','cone_sides','sensor_pose','max_view_angle','max_range_angle','sensor_view_direction','weight']
  _slot_types = ['float64','geometry_msgs/PoseStamped','int32','geometry_msgs/PoseStamped','float64','float64','uint8','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       target_radius,target_pose,cone_sides,sensor_pose,max_view_angle,max_range_angle,sensor_view_direction,weight

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VisibilityConstraint, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.target_radius is None:
        self.target_radius = 0.
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      if self.cone_sides is None:
        self.cone_sides = 0
      if self.sensor_pose is None:
        self.sensor_pose = geometry_msgs.msg.PoseStamped()
      if self.max_view_angle is None:
        self.max_view_angle = 0.
      if self.max_range_angle is None:
        self.max_range_angle = 0.
      if self.sensor_view_direction is None:
        self.sensor_view_direction = 0
      if self.weight is None:
        self.weight = 0.
    else:
      self.target_radius = 0.
      self.target_pose = geometry_msgs.msg.PoseStamped()
      self.cone_sides = 0
      self.sensor_pose = geometry_msgs.msg.PoseStamped()
      self.max_view_angle = 0.
      self.max_range_angle = 0.
      self.sensor_view_direction = 0
      self.weight = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_d3I().pack(_x.target_radius, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs))
      _x = self.target_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7di3I().pack(_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.cone_sides, _x.sensor_pose.header.seq, _x.sensor_pose.header.stamp.secs, _x.sensor_pose.header.stamp.nsecs))
      _x = self.sensor_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_9dBd().pack(_x.sensor_pose.pose.position.x, _x.sensor_pose.pose.position.y, _x.sensor_pose.pose.position.z, _x.sensor_pose.pose.orientation.x, _x.sensor_pose.pose.orientation.y, _x.sensor_pose.pose.orientation.z, _x.sensor_pose.pose.orientation.w, _x.max_view_angle, _x.max_range_angle, _x.sensor_view_direction, _x.weight))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      if self.sensor_pose is None:
        self.sensor_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.target_radius, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs,) = _get_struct_d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.target_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.cone_sides, _x.sensor_pose.header.seq, _x.sensor_pose.header.stamp.secs, _x.sensor_pose.header.stamp.nsecs,) = _get_struct_7di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sensor_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.sensor_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 81
      (_x.sensor_pose.pose.position.x, _x.sensor_pose.pose.position.y, _x.sensor_pose.pose.position.z, _x.sensor_pose.pose.orientation.x, _x.sensor_pose.pose.orientation.y, _x.sensor_pose.pose.orientation.z, _x.sensor_pose.pose.orientation.w, _x.max_view_angle, _x.max_range_angle, _x.sensor_view_direction, _x.weight,) = _get_struct_9dBd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_d3I().pack(_x.target_radius, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs))
      _x = self.target_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7di3I().pack(_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.cone_sides, _x.sensor_pose.header.seq, _x.sensor_pose.header.stamp.secs, _x.sensor_pose.header.stamp.nsecs))
      _x = self.sensor_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_9dBd().pack(_x.sensor_pose.pose.position.x, _x.sensor_pose.pose.position.y, _x.sensor_pose.pose.position.z, _x.sensor_pose.pose.orientation.x, _x.sensor_pose.pose.orientation.y, _x.sensor_pose.pose.orientation.z, _x.sensor_pose.pose.orientation.w, _x.max_view_angle, _x.max_range_angle, _x.sensor_view_direction, _x.weight))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      if self.sensor_pose is None:
        self.sensor_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.target_radius, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs,) = _get_struct_d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.target_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.cone_sides, _x.sensor_pose.header.seq, _x.sensor_pose.header.stamp.secs, _x.sensor_pose.header.stamp.nsecs,) = _get_struct_7di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sensor_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.sensor_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 81
      (_x.sensor_pose.pose.position.x, _x.sensor_pose.pose.position.y, _x.sensor_pose.pose.position.z, _x.sensor_pose.pose.orientation.x, _x.sensor_pose.pose.orientation.y, _x.sensor_pose.pose.orientation.z, _x.sensor_pose.pose.orientation.w, _x.max_view_angle, _x.max_range_angle, _x.sensor_view_direction, _x.weight,) = _get_struct_9dBd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7di3I = None
def _get_struct_7di3I():
    global _struct_7di3I
    if _struct_7di3I is None:
        _struct_7di3I = struct.Struct("<7di3I")
    return _struct_7di3I
_struct_9dBd = None
def _get_struct_9dBd():
    global _struct_9dBd
    if _struct_9dBd is None:
        _struct_9dBd = struct.Struct("<9dBd")
    return _struct_9dBd
_struct_d3I = None
def _get_struct_d3I():
    global _struct_d3I
    if _struct_d3I is None:
        _struct_d3I = struct.Struct("<d3I")
    return _struct_d3I

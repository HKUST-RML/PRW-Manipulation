package moveit_msgs;

public interface PickupResult extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "moveit_msgs/PickupResult";
  static final java.lang.String _DEFINITION = "\n# The overall result of the pickup attempt\nMoveItErrorCodes error_code\n\n# The full starting state of the robot at the start of the trajectory\nRobotState trajectory_start\n\n# The trajectory that moved group produced for execution\nRobotTrajectory[] trajectory_stages\n\nstring[] trajectory_descriptions\n\n# The performed grasp, if attempt was successful\nGrasp grasp\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  moveit_msgs.MoveItErrorCodes getErrorCode();
  void setErrorCode(moveit_msgs.MoveItErrorCodes value);
  moveit_msgs.RobotState getTrajectoryStart();
  void setTrajectoryStart(moveit_msgs.RobotState value);
  java.util.List<moveit_msgs.RobotTrajectory> getTrajectoryStages();
  void setTrajectoryStages(java.util.List<moveit_msgs.RobotTrajectory> value);
  java.util.List<java.lang.String> getTrajectoryDescriptions();
  void setTrajectoryDescriptions(java.util.List<java.lang.String> value);
  moveit_msgs.Grasp getGrasp();
  void setGrasp(moveit_msgs.Grasp value);
}

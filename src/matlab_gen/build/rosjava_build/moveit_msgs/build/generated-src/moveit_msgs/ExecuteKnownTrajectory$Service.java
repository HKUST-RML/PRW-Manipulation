package moveit_msgs;

public interface ExecuteKnownTrajectory$Service extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "moveit_msgs/ExecuteKnownTrajectory$Service";
  static final java.lang.String _DEFINITION = "# This service is deprecated and will go away at some point. For new development use the ExecuteTrajectory action.\n# Effective since: Indigo 0.7.4, Jade and Kinetic 0.8.3\n\n# The trajectory to execute \nRobotTrajectory trajectory\n\n# Set this to true if the service should block until the execution is complete\nbool wait_for_execution\n\n---\n\n# Error code - encodes the overall reason for failure\nMoveItErrorCodes error_code\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
}

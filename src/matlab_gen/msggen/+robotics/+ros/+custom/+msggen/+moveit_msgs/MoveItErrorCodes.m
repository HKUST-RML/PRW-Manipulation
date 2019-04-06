classdef MoveItErrorCodes < robotics.ros.Message
    %MoveItErrorCodes MATLAB implementation of moveit_msgs/MoveItErrorCodes
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'moveit_msgs/MoveItErrorCodes' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'aa336b18d80531f66439810112c0a43e' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        SUCCESS = int32(1)
        FAILURE = int32(99999)
        PLANNINGFAILED = int32(-1)
        INVALIDMOTIONPLAN = int32(-2)
        MOTIONPLANINVALIDATEDBYENVIRONMENTCHANGE = int32(-3)
        CONTROLFAILED = int32(-4)
        UNABLETOAQUIRESENSORDATA = int32(-5)
        TIMEDOUT = int32(-6)
        PREEMPTED = int32(-7)
        STARTSTATEINCOLLISION = int32(-10)
        STARTSTATEVIOLATESPATHCONSTRAINTS = int32(-11)
        GOALINCOLLISION = int32(-12)
        GOALVIOLATESPATHCONSTRAINTS = int32(-13)
        GOALCONSTRAINTSVIOLATED = int32(-14)
        INVALIDGROUPNAME = int32(-15)
        INVALIDGOALCONSTRAINTS = int32(-16)
        INVALIDROBOTSTATE = int32(-17)
        INVALIDLINKNAME = int32(-18)
        INVALIDOBJECTNAME = int32(-19)
        FRAMETRANSFORMFAILURE = int32(-21)
        COLLISIONCHECKINGUNAVAILABLE = int32(-22)
        ROBOTSTATESTALE = int32(-23)
        SENSORINFOSTALE = int32(-24)
        NOIKSOLUTION = int32(-31)
    end
    
    properties (Dependent)
        Val
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Val'} % List of non-constant message properties
        ROSPropertyList = {'val'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = MoveItErrorCodes(msg)
            %MoveItErrorCodes Construct the message object MoveItErrorCodes
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function val = get.Val(obj)
            %get.Val Get the value for property Val
            val = int32(obj.JavaMessage.getVal);
        end
        
        function set.Val(obj, val)
            %set.Val Set the value for property Val
            validateattributes(val, {'numeric'}, {'nonempty', 'scalar'}, 'MoveItErrorCodes', 'Val');
            
            obj.JavaMessage.setVal(val);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Val = obj.Val;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Val = strObj.Val;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Val = obj.Val;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.moveit_msgs.MoveItErrorCodes.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.moveit_msgs.MoveItErrorCodes;
            obj.reload(strObj);
        end
    end
end

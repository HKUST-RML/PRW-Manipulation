classdef GetMotionPlanResponse < robotics.ros.Message
    %GetMotionPlanResponse MATLAB implementation of moveit_msgs/GetMotionPlanResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'moveit_msgs/GetMotionPlanResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '37fe7e8f0d4dfa55ccfa53d63c86ae15' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        MoveitMsgsMotionPlanResponseClass = robotics.ros.msg.internal.MessageFactory.getClassForType('moveit_msgs/MotionPlanResponse') % Dispatch to MATLAB class for message type moveit_msgs/MotionPlanResponse
    end
    
    properties (Dependent)
        MotionPlanResponse
    end
    
    properties (Access = protected)
        Cache = struct('MotionPlanResponse', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'MotionPlanResponse'} % List of non-constant message properties
        ROSPropertyList = {'motion_plan_response'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = GetMotionPlanResponse(msg)
            %GetMotionPlanResponse Construct the message object GetMotionPlanResponse
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
        
        function motionplanresponse = get.MotionPlanResponse(obj)
            %get.MotionPlanResponse Get the value for property MotionPlanResponse
            if isempty(obj.Cache.MotionPlanResponse)
                obj.Cache.MotionPlanResponse = feval(obj.MoveitMsgsMotionPlanResponseClass, obj.JavaMessage.getMotionPlanResponse);
            end
            motionplanresponse = obj.Cache.MotionPlanResponse;
        end
        
        function set.MotionPlanResponse(obj, motionplanresponse)
            %set.MotionPlanResponse Set the value for property MotionPlanResponse
            validateattributes(motionplanresponse, {obj.MoveitMsgsMotionPlanResponseClass}, {'nonempty', 'scalar'}, 'GetMotionPlanResponse', 'MotionPlanResponse');
            
            obj.JavaMessage.setMotionPlanResponse(motionplanresponse.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.MotionPlanResponse)
                obj.Cache.MotionPlanResponse.setJavaObject(motionplanresponse.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.MotionPlanResponse = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Recursively copy compound properties
            cpObj.MotionPlanResponse = copy(obj.MotionPlanResponse);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.MotionPlanResponse = feval([obj.MoveitMsgsMotionPlanResponseClass '.loadobj'], strObj.MotionPlanResponse);
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
            
            strObj.MotionPlanResponse = saveobj(obj.MotionPlanResponse);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.moveit_msgs.GetMotionPlanResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.moveit_msgs.GetMotionPlanResponse;
            obj.reload(strObj);
        end
    end
end

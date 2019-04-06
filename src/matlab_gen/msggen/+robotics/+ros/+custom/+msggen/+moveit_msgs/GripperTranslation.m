classdef GripperTranslation < robotics.ros.Message
    %GripperTranslation MATLAB implementation of moveit_msgs/GripperTranslation
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'moveit_msgs/GripperTranslation' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'b53bc0ad0f717cdec3b0e42dec300121' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsVector3StampedClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Vector3Stamped') % Dispatch to MATLAB class for message type geometry_msgs/Vector3Stamped
    end
    
    properties (Dependent)
        Direction
        DesiredDistance
        MinDistance
    end
    
    properties (Access = protected)
        Cache = struct('Direction', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'DesiredDistance', 'Direction', 'MinDistance'} % List of non-constant message properties
        ROSPropertyList = {'desired_distance', 'direction', 'min_distance'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = GripperTranslation(msg)
            %GripperTranslation Construct the message object GripperTranslation
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
        
        function direction = get.Direction(obj)
            %get.Direction Get the value for property Direction
            if isempty(obj.Cache.Direction)
                obj.Cache.Direction = feval(obj.GeometryMsgsVector3StampedClass, obj.JavaMessage.getDirection);
            end
            direction = obj.Cache.Direction;
        end
        
        function set.Direction(obj, direction)
            %set.Direction Set the value for property Direction
            validateattributes(direction, {obj.GeometryMsgsVector3StampedClass}, {'nonempty', 'scalar'}, 'GripperTranslation', 'Direction');
            
            obj.JavaMessage.setDirection(direction.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Direction)
                obj.Cache.Direction.setJavaObject(direction.getJavaObject);
            end
        end
        
        function desireddistance = get.DesiredDistance(obj)
            %get.DesiredDistance Get the value for property DesiredDistance
            desireddistance = single(obj.JavaMessage.getDesiredDistance);
        end
        
        function set.DesiredDistance(obj, desireddistance)
            %set.DesiredDistance Set the value for property DesiredDistance
            validateattributes(desireddistance, {'numeric'}, {'nonempty', 'scalar'}, 'GripperTranslation', 'DesiredDistance');
            
            obj.JavaMessage.setDesiredDistance(desireddistance);
        end
        
        function mindistance = get.MinDistance(obj)
            %get.MinDistance Get the value for property MinDistance
            mindistance = single(obj.JavaMessage.getMinDistance);
        end
        
        function set.MinDistance(obj, mindistance)
            %set.MinDistance Set the value for property MinDistance
            validateattributes(mindistance, {'numeric'}, {'nonempty', 'scalar'}, 'GripperTranslation', 'MinDistance');
            
            obj.JavaMessage.setMinDistance(mindistance);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Direction = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.DesiredDistance = obj.DesiredDistance;
            cpObj.MinDistance = obj.MinDistance;
            
            % Recursively copy compound properties
            cpObj.Direction = copy(obj.Direction);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.DesiredDistance = strObj.DesiredDistance;
            obj.MinDistance = strObj.MinDistance;
            obj.Direction = feval([obj.GeometryMsgsVector3StampedClass '.loadobj'], strObj.Direction);
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
            
            strObj.DesiredDistance = obj.DesiredDistance;
            strObj.MinDistance = obj.MinDistance;
            strObj.Direction = saveobj(obj.Direction);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.moveit_msgs.GripperTranslation.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.moveit_msgs.GripperTranslation;
            obj.reload(strObj);
        end
    end
end

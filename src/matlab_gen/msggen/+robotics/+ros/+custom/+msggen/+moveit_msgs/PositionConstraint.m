classdef PositionConstraint < robotics.ros.Message
    %PositionConstraint MATLAB implementation of moveit_msgs/PositionConstraint
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'moveit_msgs/PositionConstraint' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'c83edf208d87d3aa3169f47775a58e6a' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsVector3Class = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Vector3') % Dispatch to MATLAB class for message type geometry_msgs/Vector3
        MoveitMsgsBoundingVolumeClass = robotics.ros.msg.internal.MessageFactory.getClassForType('moveit_msgs/BoundingVolume') % Dispatch to MATLAB class for message type moveit_msgs/BoundingVolume
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        LinkName
        TargetPointOffset
        ConstraintRegion
        Weight
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'TargetPointOffset', [], 'ConstraintRegion', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'ConstraintRegion', 'Header', 'LinkName', 'TargetPointOffset', 'Weight'} % List of non-constant message properties
        ROSPropertyList = {'constraint_region', 'header', 'link_name', 'target_point_offset', 'weight'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = PositionConstraint(msg)
            %PositionConstraint Construct the message object PositionConstraint
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
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'PositionConstraint', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function linkname = get.LinkName(obj)
            %get.LinkName Get the value for property LinkName
            linkname = char(obj.JavaMessage.getLinkName);
        end
        
        function set.LinkName(obj, linkname)
            %set.LinkName Set the value for property LinkName
            validateattributes(linkname, {'char'}, {}, 'PositionConstraint', 'LinkName');
            
            obj.JavaMessage.setLinkName(linkname);
        end
        
        function targetpointoffset = get.TargetPointOffset(obj)
            %get.TargetPointOffset Get the value for property TargetPointOffset
            if isempty(obj.Cache.TargetPointOffset)
                obj.Cache.TargetPointOffset = feval(obj.GeometryMsgsVector3Class, obj.JavaMessage.getTargetPointOffset);
            end
            targetpointoffset = obj.Cache.TargetPointOffset;
        end
        
        function set.TargetPointOffset(obj, targetpointoffset)
            %set.TargetPointOffset Set the value for property TargetPointOffset
            validateattributes(targetpointoffset, {obj.GeometryMsgsVector3Class}, {'nonempty', 'scalar'}, 'PositionConstraint', 'TargetPointOffset');
            
            obj.JavaMessage.setTargetPointOffset(targetpointoffset.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.TargetPointOffset)
                obj.Cache.TargetPointOffset.setJavaObject(targetpointoffset.getJavaObject);
            end
        end
        
        function constraintregion = get.ConstraintRegion(obj)
            %get.ConstraintRegion Get the value for property ConstraintRegion
            if isempty(obj.Cache.ConstraintRegion)
                obj.Cache.ConstraintRegion = feval(obj.MoveitMsgsBoundingVolumeClass, obj.JavaMessage.getConstraintRegion);
            end
            constraintregion = obj.Cache.ConstraintRegion;
        end
        
        function set.ConstraintRegion(obj, constraintregion)
            %set.ConstraintRegion Set the value for property ConstraintRegion
            validateattributes(constraintregion, {obj.MoveitMsgsBoundingVolumeClass}, {'nonempty', 'scalar'}, 'PositionConstraint', 'ConstraintRegion');
            
            obj.JavaMessage.setConstraintRegion(constraintregion.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.ConstraintRegion)
                obj.Cache.ConstraintRegion.setJavaObject(constraintregion.getJavaObject);
            end
        end
        
        function weight = get.Weight(obj)
            %get.Weight Get the value for property Weight
            weight = double(obj.JavaMessage.getWeight);
        end
        
        function set.Weight(obj, weight)
            %set.Weight Set the value for property Weight
            validateattributes(weight, {'numeric'}, {'nonempty', 'scalar'}, 'PositionConstraint', 'Weight');
            
            obj.JavaMessage.setWeight(weight);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
            obj.Cache.TargetPointOffset = [];
            obj.Cache.ConstraintRegion = [];
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
            cpObj.LinkName = obj.LinkName;
            cpObj.Weight = obj.Weight;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
            cpObj.TargetPointOffset = copy(obj.TargetPointOffset);
            cpObj.ConstraintRegion = copy(obj.ConstraintRegion);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.LinkName = strObj.LinkName;
            obj.Weight = strObj.Weight;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.TargetPointOffset = feval([obj.GeometryMsgsVector3Class '.loadobj'], strObj.TargetPointOffset);
            obj.ConstraintRegion = feval([obj.MoveitMsgsBoundingVolumeClass '.loadobj'], strObj.ConstraintRegion);
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
            
            strObj.LinkName = obj.LinkName;
            strObj.Weight = obj.Weight;
            strObj.Header = saveobj(obj.Header);
            strObj.TargetPointOffset = saveobj(obj.TargetPointOffset);
            strObj.ConstraintRegion = saveobj(obj.ConstraintRegion);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.moveit_msgs.PositionConstraint.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.moveit_msgs.PositionConstraint;
            obj.reload(strObj);
        end
    end
end

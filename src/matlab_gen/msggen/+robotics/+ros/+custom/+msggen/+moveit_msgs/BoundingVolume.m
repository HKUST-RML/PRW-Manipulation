classdef BoundingVolume < robotics.ros.Message
    %BoundingVolume MATLAB implementation of moveit_msgs/BoundingVolume
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'moveit_msgs/BoundingVolume' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '22db94010f39e9198032cb4a1aeda26e' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsPoseClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Pose') % Dispatch to MATLAB class for message type geometry_msgs/Pose
        ShapeMsgsMeshClass = robotics.ros.msg.internal.MessageFactory.getClassForType('shape_msgs/Mesh') % Dispatch to MATLAB class for message type shape_msgs/Mesh
        ShapeMsgsSolidPrimitiveClass = robotics.ros.msg.internal.MessageFactory.getClassForType('shape_msgs/SolidPrimitive') % Dispatch to MATLAB class for message type shape_msgs/SolidPrimitive
    end
    
    properties (Dependent)
        Primitives
        PrimitivePoses
        Meshes
        MeshPoses
    end
    
    properties (Access = protected)
        Cache = struct('Primitives', [], 'PrimitivePoses', [], 'Meshes', [], 'MeshPoses', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'MeshPoses', 'Meshes', 'PrimitivePoses', 'Primitives'} % List of non-constant message properties
        ROSPropertyList = {'mesh_poses', 'meshes', 'primitive_poses', 'primitives'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = BoundingVolume(msg)
            %BoundingVolume Construct the message object BoundingVolume
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
        
        function primitives = get.Primitives(obj)
            %get.Primitives Get the value for property Primitives
            if isempty(obj.Cache.Primitives)
                javaArray = obj.JavaMessage.getPrimitives;
                array = obj.readJavaArray(javaArray, obj.ShapeMsgsSolidPrimitiveClass);
                obj.Cache.Primitives = feval(obj.ShapeMsgsSolidPrimitiveClass, array);
            end
            primitives = obj.Cache.Primitives;
        end
        
        function set.Primitives(obj, primitives)
            %set.Primitives Set the value for property Primitives
            if ~isvector(primitives) && isempty(primitives)
                % Allow empty [] input
                primitives = feval([obj.ShapeMsgsSolidPrimitiveClass '.empty'], 0, 1);
            end
            
            validateattributes(primitives, {obj.ShapeMsgsSolidPrimitiveClass}, {'vector'}, 'BoundingVolume', 'Primitives');
            
            javaArray = obj.JavaMessage.getPrimitives;
            array = obj.writeJavaArray(primitives, javaArray, obj.ShapeMsgsSolidPrimitiveClass);
            obj.JavaMessage.setPrimitives(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Primitives)
                obj.Cache.Primitives = [];
                obj.Cache.Primitives = obj.Primitives;
            end
        end
        
        function primitiveposes = get.PrimitivePoses(obj)
            %get.PrimitivePoses Get the value for property PrimitivePoses
            if isempty(obj.Cache.PrimitivePoses)
                javaArray = obj.JavaMessage.getPrimitivePoses;
                array = obj.readJavaArray(javaArray, obj.GeometryMsgsPoseClass);
                obj.Cache.PrimitivePoses = feval(obj.GeometryMsgsPoseClass, array);
            end
            primitiveposes = obj.Cache.PrimitivePoses;
        end
        
        function set.PrimitivePoses(obj, primitiveposes)
            %set.PrimitivePoses Set the value for property PrimitivePoses
            if ~isvector(primitiveposes) && isempty(primitiveposes)
                % Allow empty [] input
                primitiveposes = feval([obj.GeometryMsgsPoseClass '.empty'], 0, 1);
            end
            
            validateattributes(primitiveposes, {obj.GeometryMsgsPoseClass}, {'vector'}, 'BoundingVolume', 'PrimitivePoses');
            
            javaArray = obj.JavaMessage.getPrimitivePoses;
            array = obj.writeJavaArray(primitiveposes, javaArray, obj.GeometryMsgsPoseClass);
            obj.JavaMessage.setPrimitivePoses(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.PrimitivePoses)
                obj.Cache.PrimitivePoses = [];
                obj.Cache.PrimitivePoses = obj.PrimitivePoses;
            end
        end
        
        function meshes = get.Meshes(obj)
            %get.Meshes Get the value for property Meshes
            if isempty(obj.Cache.Meshes)
                javaArray = obj.JavaMessage.getMeshes;
                array = obj.readJavaArray(javaArray, obj.ShapeMsgsMeshClass);
                obj.Cache.Meshes = feval(obj.ShapeMsgsMeshClass, array);
            end
            meshes = obj.Cache.Meshes;
        end
        
        function set.Meshes(obj, meshes)
            %set.Meshes Set the value for property Meshes
            if ~isvector(meshes) && isempty(meshes)
                % Allow empty [] input
                meshes = feval([obj.ShapeMsgsMeshClass '.empty'], 0, 1);
            end
            
            validateattributes(meshes, {obj.ShapeMsgsMeshClass}, {'vector'}, 'BoundingVolume', 'Meshes');
            
            javaArray = obj.JavaMessage.getMeshes;
            array = obj.writeJavaArray(meshes, javaArray, obj.ShapeMsgsMeshClass);
            obj.JavaMessage.setMeshes(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Meshes)
                obj.Cache.Meshes = [];
                obj.Cache.Meshes = obj.Meshes;
            end
        end
        
        function meshposes = get.MeshPoses(obj)
            %get.MeshPoses Get the value for property MeshPoses
            if isempty(obj.Cache.MeshPoses)
                javaArray = obj.JavaMessage.getMeshPoses;
                array = obj.readJavaArray(javaArray, obj.GeometryMsgsPoseClass);
                obj.Cache.MeshPoses = feval(obj.GeometryMsgsPoseClass, array);
            end
            meshposes = obj.Cache.MeshPoses;
        end
        
        function set.MeshPoses(obj, meshposes)
            %set.MeshPoses Set the value for property MeshPoses
            if ~isvector(meshposes) && isempty(meshposes)
                % Allow empty [] input
                meshposes = feval([obj.GeometryMsgsPoseClass '.empty'], 0, 1);
            end
            
            validateattributes(meshposes, {obj.GeometryMsgsPoseClass}, {'vector'}, 'BoundingVolume', 'MeshPoses');
            
            javaArray = obj.JavaMessage.getMeshPoses;
            array = obj.writeJavaArray(meshposes, javaArray, obj.GeometryMsgsPoseClass);
            obj.JavaMessage.setMeshPoses(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.MeshPoses)
                obj.Cache.MeshPoses = [];
                obj.Cache.MeshPoses = obj.MeshPoses;
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Primitives = [];
            obj.Cache.PrimitivePoses = [];
            obj.Cache.Meshes = [];
            obj.Cache.MeshPoses = [];
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
            cpObj.Primitives = copy(obj.Primitives);
            cpObj.PrimitivePoses = copy(obj.PrimitivePoses);
            cpObj.Meshes = copy(obj.Meshes);
            cpObj.MeshPoses = copy(obj.MeshPoses);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            PrimitivesCell = arrayfun(@(x) feval([obj.ShapeMsgsSolidPrimitiveClass '.loadobj'], x), strObj.Primitives, 'UniformOutput', false);
            obj.Primitives = vertcat(PrimitivesCell{:});
            PrimitivePosesCell = arrayfun(@(x) feval([obj.GeometryMsgsPoseClass '.loadobj'], x), strObj.PrimitivePoses, 'UniformOutput', false);
            obj.PrimitivePoses = vertcat(PrimitivePosesCell{:});
            MeshesCell = arrayfun(@(x) feval([obj.ShapeMsgsMeshClass '.loadobj'], x), strObj.Meshes, 'UniformOutput', false);
            obj.Meshes = vertcat(MeshesCell{:});
            MeshPosesCell = arrayfun(@(x) feval([obj.GeometryMsgsPoseClass '.loadobj'], x), strObj.MeshPoses, 'UniformOutput', false);
            obj.MeshPoses = vertcat(MeshPosesCell{:});
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
            
            strObj.Primitives = arrayfun(@(x) saveobj(x), obj.Primitives);
            strObj.PrimitivePoses = arrayfun(@(x) saveobj(x), obj.PrimitivePoses);
            strObj.Meshes = arrayfun(@(x) saveobj(x), obj.Meshes);
            strObj.MeshPoses = arrayfun(@(x) saveobj(x), obj.MeshPoses);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.moveit_msgs.BoundingVolume.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.moveit_msgs.BoundingVolume;
            obj.reload(strObj);
        end
    end
end

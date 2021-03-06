function R = quat_to_rotm(Q)
%
% OMEGA = quat_to_rotvec(Q)
%
%% ------ input -------
% Q      1 x 4 quaternion [w, x, y, z]
%% ------ output ------
% R  3 x 3 rotation matrix
%

R =[Q(1)^2 + Q(2)^2 - Q(3)^2 - Q(4)^2, ...
    2*(Q(2)*Q(3) - Q(1)*Q(4)), ...
    2*(Q(1)*Q(3) + Q(2)*Q(4)); ...
    
    2*(Q(2)*Q(3) + Q(1)*Q(4)), ...
    Q(1)^2 - Q(2)^2 + Q(3)^2 - Q(4)^2, ...
    2*(Q(3)*Q(4) - Q(1)*Q(2)); ...
    
    2*(Q(2)*Q(4) - Q(1)*Q(3)), ...
    2*(Q(1)*Q(2) + Q(3)*Q(4)), ...
    Q(1)^2 - Q(2)^2 - Q(3)^2 + Q(4)^2];

end


function body2inertial = rot_rpy(euler)

phi = euler(1);
theta = euler(2);
psi = euler(3);

R_z = [cos(psi), sin(psi), 0;
       -sin(psi), cos(psi), 0;
       0, 0, 1];
R_y = [cos(theta), 0, -sin(theta); 
       0, 1, 0;
       sin(theta), 0, cos(theta)];
R_x = [1, 0, 0;
       0, cos(phi), sin(phi);
       0, -sin(phi), cos(phi)];
    
body2inertial = R_x*R_y*R_z;

%     R = [cos(Th(3)) * sin(Th(2)), cos(Th(3))*sin(Th(2))*sin(Th(1))-...
%         cos(Th(1))*sin(Th(3)), sin(Th(3))*sin(Th(1))+cos(Th(3))*cos(Th(1))*sin(Th(2));...
%         cos(Th(2))*sin(Th(3)), cos(Th(3))*cos(Th(1))+sin(Th(3))*sin(Th(2))*sin(Th(1)),...
%         cos(Th(1))*sin(Th(3))*sin(Th(2))-cos(Th(3))*sin(Th(1));...
%         -sin(Th(2)), cos(Th(2))*sin(Th(1)), cos(Th(2))*cos(Th(1))];

end
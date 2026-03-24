function s_dq = abc2dq(wt,s_abc)

% ABC to DQ0 transformation
% s_abc = [a;b;c]
% s_dq0 = [d;q;0]

% Clarke transformation matrix, depends on the electrical angle
T = (2/3)*[cos(wt) cos(wt-2*pi/3) cos(wt+2*pi/3);...
    -sin(wt) -sin(wt-2*pi/3) -sin(wt+2*pi/3);...
    0.5 0.5 0.5];

% DQ0 transformation (only D and Q components are needed)
s_dq0 = T*s_abc;
s_dq = s_dq0(1:2);

end


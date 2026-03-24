function s_abc = dq2abc(wt,s_dq)

% DQ0 to ABC transformation
% s_dq0 = [d;q;0]
% s_abc = [a;b;c]

% Inverse Clarke transformation matrix, depends on the electrical angle
Tinv = [cos(wt) -sin(wt) 1;...
    cos(wt-2*pi/3) -sin(wt-2*pi/3) 1;...
    cos(wt+2*pi/3) -sin(wt+2*pi/3) 1];

s_dq0 = [s_dq;0];
s_abc = Tinv*s_dq0;

end


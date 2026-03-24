function  s_alphabeta = dq2alphabeta(s_dq,wt)
    % dq to alpha beta transform
    % this function returns s_alphabeta

    Tk = [cos(wt) -sin(wt); sin(wt) cos(wt)];
    s_alphabeta = Tk * s_dq;
end


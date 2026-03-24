function s_dq = alphabeta2dq(s_alphabeta,wt)

    Tk = [cos(wt) sin(wt); -sin(wt) cos(wt)];
    s_dq = Tk * s_alphabeta;

end


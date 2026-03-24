function [di_f,dv_s,di_g] = DERMG_SYSEQabc_f(i_f,v_s,i_g,v_c,v_g,bkr,xs)


di_f = -(xs.sim.Rf/xs.sim.Lf)*i_f -(1/xs.sim.Lf)*v_s +(1/xs.sim.Lf)*v_c;
dv_s = -(1/xs.sim.Cf)*i_g*bkr +(1/xs.sim.Cf)*i_f;
di_g = (-(xs.sim.Rg/xs.sim.Lg)*i_g +(1/xs.sim.Lg)*v_s -(1/xs.sim.Lg)*v_g)*bkr;


end

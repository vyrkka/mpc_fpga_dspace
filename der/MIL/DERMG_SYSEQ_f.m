function [di_f,dv_s,di_g] = DERMG_SYSEQ_f(i_f,v_s,i_g,v_c,v_g,xs)


di_f = -(xs.model.Rf/xs.model.Lf)*i_f -(1/xs.model.Lf)*v_s +(1/xs.model.Lf)*v_c;
dv_s = -(1/xs.model.Cf)*i_g +(1/xs.model.Cf)*i_f;
di_g = -(xs.model.Rg/xs.model.Lg)*i_g +(1/xs.model.Lg)*v_s -(1/xs.model.Lg)*v_g;


end


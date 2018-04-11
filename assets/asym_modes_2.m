function err=asym_modes(ha);
global V

%dispersion equations
qa=sqrt(V^2-ha^2);

%Mode equations
err=abs(-ha*cot(ha)-qa);

[e1a,e2a,condAa]=test(6e-8);
[e1b,e2b,condAb]=test(5e-7);
[e1c,e2c,condAc]=test(9e-7);
[e1d,e2d,condAd]=test(9.5e-7);
fprintf("eps  abs(x1-1)  abs(x2-eps)/eps  cond(A)\n %.2e  %.2e  %.2e  %.2e\n %.2e  %.2e  %.2e  %.2e\n %.2e  %.2e  %.2e  %.2e\n %.2e  %.2e  %.2e  %.2e\n ",6e-8,e1a,e2a,condAa,5e-7,e1b,e2b,condAb,9e-7,e1c,e2c,condAc,9.5e-7,e1d,e2d,condAd)

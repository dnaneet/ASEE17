%Creating a PDE interpolant to interpolate data. 
F=pdeInterpolant(p, t, u);

count=0;
for i=0.0:0.01:1
    count=count+1;
    pOut=[i,i; 0,0];
    uOut = evaluate(F,pOut);
    datalow(count,1)=uOut(1,1);
end
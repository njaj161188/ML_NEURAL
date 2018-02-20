function Q = GradientDescend (Xi, Yi, Qi)
%Hops
r=0.11;
%disp(r);

%Copy Q
Q = Qi;
disp(Q);

%Input Matrix
X = [ones(size(Xi,1),1), Xi];

%X transpose
Xt = X';
%disp(Xt);

HQt = X*Q;
%plot(HQt);

for i=1:500,
	%Hypothetical output
	HQ = X*Q;
	disp('HQ');
	disp(HQ);
	
	disp('Yi');
	disp(Yi);
	
	%Error calculation without mean square
	Error=HQ-Yi;    
	disp('Error');
    disp(Error);
	%Error Vector
	ErrVctr = Xt*Error;
	disp('ErrVctr');
	disp(ErrVctr);
	
	%cost function
	CostFunction = ErrVctr * (r/size(X,1));
	disp('CostFunction');
	disp(CostFunction);

	Q=Q-CostFunction
	disp('New Q');
	disp(Q);
end;
HQ1=X*Q;
disp('HQ1');
disp(HQ1);

%gnuplot(HQ1);
end
	
	





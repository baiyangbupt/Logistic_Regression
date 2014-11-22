function deriv = getDeriv(X, Y, theta)
	%% X is the input, Y the label and theta the current coeff
	deriv = Y - logistic(X,theta);
	
	deriv;
end


function y = logistic(X, theta)
	t = X * theta;
	y = 1./(1+exp(-1*t));
	y;
end

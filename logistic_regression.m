function theta = logistic_regression(X, Y, iter)
	%% X input, Y label, iter iteration num

	[n_samp dim] = size(X);
	theta = zeros(dim + 1, 1);
	bias = zeros(n_samp, 1);

	for i = 1:n_samp
		bias(i) = 1;
	end
	
	X = [X bias];

	ALFA = 0.5;

	for cnt = 1:iter
		E = getDeriv(X, Y, theta);
		theta = theta + ALFA * (X' * E);
	end

	theta;
end


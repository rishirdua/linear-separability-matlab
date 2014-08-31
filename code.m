clc; clear; close all;

%set max iteration
maxiter = 10000;

%load data
[Ytrain, Xtrain] = libsvmread('sample.txt'); %libsvm format
mtrain = size(Xtrain,1);
n = size(Xtrain,2);


% learn perceptron
Xtrain_perceptron = [ones(mtrain,1) Xtrain];
alpha = 0.1;
%initialize
theta_perceptron = zeros(n+1,1);
trainerror_mag = 1000000;
iteration = 0;

%loop
while (trainerror_mag>0)
	iteration = iteration+1;
	if (iteration == maxiter)
		break;
	end;
	for i = 1 : mtrain
		Ypredict_temp = sign(theta_perceptron'*Xtrain_perceptron(i,:)');
		theta_perceptron = theta_perceptron + alpha*(Ytrain(i)-Ypredict_temp)*Xtrain_perceptron(i,:)';
	end
	Ytrainpredict_perceptron = sign(theta_perceptron'*Xtrain_perceptron')';
	trainerror_mag = (Ytrainpredict_perceptron - Ytrain)'*(Ytrainpredict_perceptron - Ytrain);
end

if (trainerror_mag==0)
	fprintf('Data is Linearly seperable\n'); 
	fprintf('Parameters are:\n'); 
	disp(theta_perceptron)
else
	fprintf('Data is not linearly seperable');
end;
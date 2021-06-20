#####################################################################
#####################################################################
## 							Q. No. 5. A.
#####################################################################
#####################################################################

## a).Write down the equivalent MATLAB code for the above instructions
##	  using "for" loop and print the output.

x = [2 5; 4 6];
y = [1 5; 6 -2];
z = zeros(2, 2);

for m = 1 : 2,
	for n = 1 : 2,
		z(m, n) = x(m, n) + y(m, n);
	endfor
endfor

disp(z);



## b).Write down the equivalent MATLAB code for the above instructions
##	  using "while" loop and print the output.

x = [2 5; 4 6];
y = [1 5; 6 -2];
z = zeros(2, 2);

m = 1;
while (m-- <= 2),
	n = 1;
	while (n-- <= 2),
		z(m, n) = x(m, n) + y(m, n);
	endwhile
endwhile

disp(z);



## c).Write down a MATLAB code without using loops by performing a 
##    direct sum of matrices X and Y and print the output.

x = [2 5; 4 6];
y = [1 5; 6 -2];
z = zeros(2, 2);

z = x + y;

disp(z);




#####################################################################
#####################################################################
## 							Q. No. 5. B.
#####################################################################
#####################################################################

## a). Write down the equivalent MATLAB code and print the output.

a = 15;
x = 0;

if (a>0),	x = 5;
else		x = 100;
endif

disp(x);




#####################################################################
#####################################################################
##							Q. No. 6. A.
## Consider the function: f[k] = e^0.05k		for 1 <= k <= 30
## Write down MATLAB code and print the result for the following
## operations.
#####################################################################
#####################################################################

## a). Calculate the maximum value in f()
## b). Calculate the minimum value in f()
## c). Sum all the entries in f()
## d). Find the product of all the entries in f()
## e). Find the mean of all the entries in f()
## f). Find the variance of all the entries in f()
## g). Find the dimension of f()
## h). Find the length of f()

f = zeros(1, 30);

for i = 1 : length(f),
	f(i) = exp(0.05*k);
endfor

max_value = max(f);
min_value = min(f);
sum = sum(f);
product = prod(f);
mean = mean(f);
variance = var(f);
dimensions = size(f);
length = length(f);




#####################################################################
#####################################################################
##							Q. No. 6. B.
## Consider two matrices X and Y as given below;
## X = [2 4
##		4 6]
## Y = [1  5
##		6 -2]
#####################################################################
#####################################################################

## a). Find the sum of X and Y
## b). Find the difference between X and Y
## c). Find the product between X and Y
## d). Calculate the transpose of X
## e). Calculate the inverse of X
## f). Perform an element by element multiplication between X and Y
## g). Perform an element by element division between X and Y
## h). Square each element of X
## i). Raise each element in X to the power by its corresponding 
##	   element in Y

X = [2 4; 4 6]; Y = [1 5; 6 -2];

sum  = X + Y;
diff = X - Y;
prod = X * Y;
trans_X = X';
inv_X = inv(X);
prod_e = X .* Y;
div_e  = X ./ Y;
sqr_X  = X .^ 2;
X_raised_y = X .^ Y;




#####################################################################
#####################################################################
##							Q. No. 6. C.
#####################################################################
#####################################################################
## Consider the two row vectors:
 		f = [1, 4, -2, (4-2i)];
		g = [-3, (5+7i), 6, 2];
## Write down MATLAB code to perform the following operations on
## vectors f and g and print the output.

## a). Addition			r1 = f + g
## b). Dot product		r2 = f . g
## c). Mean				r3 = (1/4) * sum(from:1 to:4) of f(k)
## d). Average energy	r4 = (1/4) * sum(from:1 to:4) of f(k) ^ 2

sum = f + g;
dot_prod = f .* g;
mean = mean(f);
avg_energy = mean(f .^ 2);




#####################################################################
#####################################################################
## 							Q. No. 7. A
# Generate and plot the following Continuous Time (CT) signals, using
# MATLAB. Don't use any loops in your code. The horizontal axis
# should extend only for the range over which the signal is defined.
# Label your figures with the appropriate title, x-axis units, and
# y-axis units.
#####################################################################
#####################################################################

# a).
t = -5:5;
x_t = 5 * sin(2 * pi * t) .* cos(pi * t - 8);
plot(t, x_t);
xlabel("t----->");
ylabel("x(t)----->");

# b).
t = -10:10;
x_t = 5 * exp(-0.2 * t) .* sin(2 * pi * t);
scatter(t, x_t);
xlabel("t----->");
ylabel("x(t)----->");




#####################################################################
#####################################################################
## 							Q. No. 7. B
# Generate and plot the following Discrete Time (DT) signals, using
# MATLAB. Don't use any loops in your code. The horizontal axis
# should extend only for the range over which the signal is defined.
# Label your figures with the appropriate title, x-axis units, and
# y-axis units. (Note: K can only be an integer value).
#####################################################################
#####################################################################

# a).
k = -10:10;
f_k = -0.92 * sin(0.1 * pi * k - 3 * pi / 4);
plot(k, f_k);
xlabel("k----->");
ylabel("f(k)----->");

# b).
k = 0:50;
f_k = -0.93 .^ x .* exp((pi * x) .* 1i / sqrt(350));
scatter(k, f_k);
xlabel("k----->");
ylabel("x(k)----->");




#####################################################################
#####################################################################
## 							Q. No. 8
# Compute the graphical solution for the following differential eqn
# using MATLAB and the "ode23" function found in MATLAB. Label your
# figure with the approtpriate title, x-axis units, and y-axis units.
#		dy/dt + 4y(t) = 2cos(2t)
# The initial condition y(0) = 2 and the time interval is 0 <= t <= 15
# seconds. Compare your answer with analytical solution.
#####################################################################
#####################################################################

ode = @(t, y) 2 * cos(2*t) - 4 * y;
[T, Y] = ode23(ode, [0 15], 2);
plot(T, Y);
title("Solution of y' = 2*cos(2*t) - 4*y")
xlabel('t----->');
ylabel('y(t----->)');

# y(t) = 1.6 * exp(-4*t) + 0.4 * cos(2t) + 0.2 * sin(2t)

t = 0:0.1:15
y_t = 1.6 * exp(-4*t) + 0.4 * cos(2*t) + 0.2 * sin(2*t)
plot(t, y_t)
title("y(t) = 1.6 * exp(-4*t) + 0.4 * cos(2*t) + 0.2 * sin(2*t)")
xlabel('t----->');
ylabel('y(t----->)');
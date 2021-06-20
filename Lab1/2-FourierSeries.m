#####################################################################
#####################################################################
## 							Q. No. 9. A
# Write MATLAB code to generate and plot a square wave g(t) having
# the following characteristics:
# Frequency 	=  1 Hz
# Amplitude 	=  5 Volts
# DC-bias		= -3 Volts
# Time Interval = -3 <= t <= 3 seconds

pkg load signal
t = -3 : 0.01 : 3;
f = 1;
a = 5;
b = -3;
sqr = @ (t) a * square(2 * pi * f * t) - b;
g_t = sqr(t);

subplot(2, 1, 1);
plot(t, g_t);
xlabel('t------>');
ylabel('g(t)----->');

# Now, write MATLAB code to approximate the square wave as a Fourier
# series and plot it using m = 1, 5, 10 and 20.
# S(t) = a0/2 + Summation(1, Inf) [ am * cos(2m * pi * f * t) 
#						    	   + bm * sin(2m * f * t)]
# The Fourier coefficients are given by:
# Ao = (2 / T) * Integration(0, T) [ g(t).dt ]
# Am = (2 / T) * Integration(0, T) [ g(t).cos(2m * pi * f * t).dt ]
# Bm = (2 / T) * Integration(0, T) [ g(t).sin(2m * pi * f * t).dt ]
# Label your figure with the appropriate title, x-axis and y-axis
#####################################################################
#####################################################################


# Fourier Series coefficients
T = 0 : 0.01 : 1;
g_T = sqr(T);
m_options = [1 5 10 20 50];
m = m_options(4);

Ao = 2 * trapz(T, g_T);
A = zeros(1, m);
B = zeros(1, m);
S = Ao / 2;

for i = 1 : m
    A(i) = 2 * trapz(T, g_T .* cos( (2 * pi * i * f) .* T ));
    B(i) = 2 * trapz(T, g_T .* sin( (2 * pi * i * f) .* T ));
    S += (A(i) .* cos( (2 * pi * i * f) .* t ) +
          B(i) .* sin( (2 * pi * i * f) .* t ));
endfor

subplot(2, 1, 2);
plot(t, S);
title("Square Wave using Fourier Series");
xlabel("t----->");
ylabel("g(t)----->");




#####################################################################
#####################################################################
## 							Q. No. 9. B
# Write MATLAB code to generate and plot the following function in 
# the time interval -L <= t <= L seconds, where L = 5.
# g(t) = -t^4 + 17t^3 - t^2 - 47
# Label your figure with the appropriate title, x-axis and y-axis
#
# Now, write MATLAB code to approximate the square wave as a Fourier
# series and plot it using m = 1, 5, 10 and 20.
# S(t) = a0/2 + Summation(1, Inf) [ am * cos(m * pi * t / L) 
#						    	  + bm * sin(m * pi * t / L)]
# The Fourier coefficients are given by:
# Ao = (1 / L) * Integration(-L, L) [ g(t).dt ]
# Am = (1 / L) * Integration(-L, L) [ g(t).cos(m * pi * t / L).dt ]
# Bm = (1 / L) * Integration(-L, L) [ g(t).sin(m * pi * t / L).dt ]
# Label your figure with the appropriate title, x-axis and y-axis
#####################################################################
#####################################################################

L = 5;
t = -L : 0.01 : L;
g = @ (t) -t.^4 + 17 * t.^3 - t.^2 - 47;
g_t = g(t);

subplot(2, 1, 1);
plot(t, g_t);
xlabel("t----->");
ylabel("g(t)----->");

m = 20;
Ao = 1 / L * trapz(t, g_t);
A  = zeros(1, m);
B  = zeros(1, m);
S  = Ao / 2;

for i = 1 : m
    A(i) = 1 / L * trapz(t, g_t .* cos( (i * pi / L) .* t));
    B(i) = 1 / L * trapz(t, g_t .* sin( (i * pi / L) .* t));
    S   += (A(i) .* cos( (i * pi / L) .* t) +
            B(i) .* sin( (i * pi / L) .* t));
endfor

subplot(2, 1, 2);
plot(t, S);
title("Using Fourier Series");
xlabel("t----->");
ylabel("g(t)----->");

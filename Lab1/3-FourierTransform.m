#####################################################################
#####################################################################
## 							Q. No. 10. A
# Write MATLAB code to generate and plot a cosine wave g(t) having
# the following characteristics:
# Frequency 	=  5 Hz
# Amplitude 	= 19 Volts
# Time Interval = 0 <= t <= 3 seconds
# Label your figure with the appropriate title, x-axis and y-axis
#####################################################################
#####################################################################

f = 5;
a = 19;
Ts = 0.01;
t = 0 : Ts : 3;
g_t = a * cos(2 * pi * f * t);

subplot(3, 1, 1);
plot(t, g_t);
title("Cosine wave");
xlabel("t----->");
ylabel("g(t)----->");

# a). Perform a Fourier Transform on the above signal using the 
#     command (FFT) and plot the result in the frequency domain.

f_s = fft(g_t);
Fs = 1 / Ts;
f = (0:length(f_s) - 1) * Fs / length(f_s);

subplot(3, 1, 2);
plot(f, abs(f_s));
title("Frequency v/s Amplitude");
xlabel("Frequency (Hz) ----->");
ylabel("Magnitude ----->");

# b). Write MATLAB code to perform an Inverse Fourier Transform
#     of the signal obtained in part (a) using the command(IFFT)
#     and plot the result in the time domain.

z = ifft(f_s);
subplot(3, 1, 3);
plot(t, z);
title("Original signal from ifft() ");
xlabel("t----->");
ylabel("z(t)----->");




#####################################################################
#####################################################################
## 							Q. No. 10. B
# Write MATLAB code to generate and plot a square wave g(t) having
# the following characteristics:
# Frequency 	=  5 Hz
# Amplitude 	= 19 Volts
# Time Interval = 0 <= t <= 3 seconds

f = 5;
a = 19;
Ts = 0.01;
t = 0 : Ts : 3;
g_t = a * square(2 * pi * f * t);

subplot(3, 1, 1);
plot(t, g_t);
title("Square Wave");
xlabel("t----->");
ylabel("g(t)----->");

#####################################################################
#####################################################################

# a). Perform a Fourier Transform on the above signal using the
#     command (FFT) and plot the result in the frequency domain.

f_s = fft(g_t);
Fs = 1 / Ts;
f = (0:length(f_s)-1)*Fs/length(f_s);

subplot(3, 1, 2);
plot(f, abs(f_s));
title("Frequency v/s Amplitude");
xlabel("Frequency(Hz) ----->");
ylabel("Amplitude ----->");

# b). Write MATLAB code to perform an Inverse Fourier Transform of 
#     the signal obtained in part (a) using the command (IFFT) and
#     plot the result in the time domain.

z = ifft(f_s);
subplot(3, 1, 3);
plot(t, z);
title("Original signal from ifft() ");
xlabel("t ----->");
ylabel("z(t) ----->");
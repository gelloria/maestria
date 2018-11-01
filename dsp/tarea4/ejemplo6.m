% Ejemplo 6: filtro muesca de segundo orden
% Ceros en e^jw, e^-jw, con w=0.9
% 
% H(z) = 1 - 2*cos(w0)*z^-1 + z^-2
%
% Por Juan Carlos Rojas

w = 0: 1/pi: pi

w0 = 0.9;
b0 = 1/pi;

b = b0.*[1 -2*cos(w0) 1];
a = [1];
[h] = freqz(b, a, w);

% Graficar la magnitud en escala lineal
figure();
plot(w, abs(h));

% Graficar el diagrama de Bode (en dB) y la fase
figure();
freqz_plot(w, h);

% Graficar polos y ceros en el plano Z
plot_poles_zeros(b, a);


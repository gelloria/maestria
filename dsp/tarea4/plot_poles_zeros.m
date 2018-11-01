% Funci�n para graficar polos y ceros en el c�rclo unitario
% Por Juan Carlos Rojas

function plot_poles_zeros(b, a)

  figure();

  % Calcular los polos y ceros
  p = roots(a);
  z = roots(b);

  % Dibujar el c�rculo unitario
  wstep = 2*pi/100;
  wrange = 0:wstep:2*pi;
  circle = exp(j*wrange);
  plot(circle);
  axis([-1.2 1.2 -1.2 1.2]);
  hold on;

  % Se agrega un n�mero imaginario peque�o para facilitar su ubicaci�n en el gr�fico
  p = p + j*1e-16;
  z = z + j*1e-16;
  plot(p, 'xr');
  plot(z, 'or');

  return
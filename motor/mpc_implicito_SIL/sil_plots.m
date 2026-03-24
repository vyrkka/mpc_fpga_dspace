ref = out.ref;
pos = out.pos;
pos_est = out.pos_est;
vel = out.vel;
vel_est = out.vel_est;
pert = out.pert;
u = out.u;

figure;
linew = 1.5;
scale = 6.741e-6;
x = (1:length(ref)) * scale;

% --- Fila 1 ---
% Posición + referencia
subplot(3,2,1);
h1 = stairs(x, pos, 'LineWidth', linew); hold on;
h2 = stairs(x, ref,'k', 'LineWidth', 0.75);
title('Position with reference', FontSize = 20);
legend([h1 h2], {'Position','Reference'}, FontSize = 11);
xlabel('Time [s]', FontSize = 20)
ylabel('Position [rad]', FontSize = 20)
grid on;

% Posición estimada
subplot(3,2,2);
stairs(x, pos_est, 'LineWidth', linew);
title('Estimated position', FontSize = 20);
xlabel('Time [s]', FontSize = 20)
ylabel('Est. position [rad]', FontSize = 17);
grid on;

% --- Fila 2 ---
% Velocidad real vs estimada
subplot(3,2,3);
stairs(x, vel, 'LineWidth', linew);
title('Velocity', FontSize = 20);
xlabel('Time [s]', FontSize = 20)
ylabel('Velocity [rad/s]', FontSize = 20);
grid on;

% --- Fila 2 ---
% Velocidad real vs estimada
subplot(3,2,4);
stairs(x, vel_est, 'LineWidth', linew);
title('Estimated velocity', FontSize = 20);
xlabel('Time [s]', FontSize = 20)
ylabel('Est. velocity [rad/s]', FontSize = 17);
grid on;


% Control
subplot(3,2,5);
stairs(x, u, 'LineWidth', linew);
title('Control signal', FontSize = 20);
xlabel('Time [s]', FontSize = 20)
ylabel('Control signal [V]', FontSize = 20);
grid on;

% Perturbación estimada
subplot(3,2,6);
stairs(x, pert, 'LineWidth', linew);
title('Estimated perturbation', FontSize = 20);
xlabel('Time [s]', FontSize = 20)
ylabel('Est. perturbation [V]', FontSize = 17);
grid on;


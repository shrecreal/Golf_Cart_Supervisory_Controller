figure(1)
subplot(3,1,1)
plot(tout,1./B.signals.values,"linewidth",2)
xlabel("Time(s)")
ylabel("Barrier function")
title("Plot of Barrier function vs Time")
grid on
axis([0 5 -5*10^-4 5*10^-4])

subplot(3,1,2)
plot(tout,B_dot.signals.values,"linewidth",2)
xlabel("Time(s)")
ylabel("Derivative of Barrier function")
title("Plot of Derivative of Barrier function vs Time")
grid on
axis([0 5 -2*10^5 2*10^5])

subplot(3,1,3)
plot(tout,hx.signals.values,"linewidth",2)
hold on
plot(tout,0.7*ones(length(tout),1),"linewidth",2)
xlabel("Time(s)")
ylabel("h(x)")
title("Plot of h(x) vs Time")
grid on
axis([0 5 0 5])
legend("h(x)","z_(safe)")

figure(2)
subplot(2,1,1)
plot(tout,af.signals.values,"linewidth",2)
hold on
plot(tout,a0.signals.values,"linewidth",2)
xlabel("Time(s)")
ylabel("Acceleration(m/s^2)")
title("Plot of accelereation vs time")
grid on
axis([0 5 -5 5])
legend("Supervisory controller","Lower level navigation controller")

subplot(2,1,2)
plot(tout,rf.signals.values,"linewidth",2)
hold on
plot(tout,0*ones(length(tout),1),"linewidth",2)
xlabel("Time(s)")
ylabel("Yaw rate(rad/s)")
title("Plot of yaw rate vs time")
grid on
axis([0 5 -5 5])
legend("Supervisory controller","Lower level navigation controller")
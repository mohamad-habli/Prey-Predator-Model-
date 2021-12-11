type lotka
t0 = 0; %start timr
tfinal = 35; %end time
y0 = [100; 200];   
[t,y] = ode23(@lotka,[t0 tfinal],y0);
figure
plot(t,y)
title('Predator/Prey Populations Over Time')
xlabel('t')
ylabel('Population')
legend('Prey','Predators','Location','North')
figure
plot(y(:,1),y(:,2))
title('Phase Plane Plot')
xlabel('Prey Population')
ylabel('Predator Population')
% ==== Compare Results of Different Solvers ============== 
[T,Y] = ode45(@lotka,[t0 tfinal],y0);
figure
plot(y(:,1),y(:,2),'-',Y(:,1),Y(:,2),'-');
title('Phase Plane Plot')
legend('ode23','ode45')
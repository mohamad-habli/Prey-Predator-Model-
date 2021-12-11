%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Lotka - Volterra equations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%initialisation
x_y_values = [0.3,1.7,0.5,1.5,0.7,1.3];
beta = 1;
gamma = 1;
ro = 1;

%solving differential equations and plotting graphs 
alpha = 1;

%time dependecies graph
time_steps = [0 25];
for i = 1:2:6
    [ts,x] = ode45(@(ts,x) vl_eqn(x,alpha,beta,gamma,ro),time_steps,x_y_values(i:i+1));
    figure(i+20);
    plot(ts,x(:,1),'',ts,x(:,2),''), xlabel('timestep'), ylabel('x,y values'),axis([0 25 0 3]) 
    title(['Lotka-Volterra - Time dependency - x = ',num2str(x_y_values(i)),' & y = ',num2str(x_y_values(i+1))]) %Title for graph
    legend('x - Preys','y - Predators')
end





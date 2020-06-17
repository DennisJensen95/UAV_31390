clear
clc
close all
%%

T = [0,0,1,2,3,3,3]';

t = [];
for i = 1:(length(T)-1)
    temp = linspace(T(i),T(i+1), 101);
    t = [t, temp(1:(end-1))];
end

N01 = zeros(1,length(t));
for i = 1:length(N01)
    if t(i) >= 0 && t(i) < 1
        N01(i) = t(i);
    elseif t(i)>=1 && t(i) < 2
        N01(i) = 2-t(i);
    end
end

N11 = zeros(1,length(t));
for i = 1:length(N11)
    if t(i) >= 1 && t(i) < 2
        N11(i) = t(i)-1;
    elseif t(i)>=2 && t(i) < 3
        N11(i) = 3-t(i);
    end
end

%% plot 
figure(1)
plot(t, N01+N11, 'g', 'LineWidth',2)
hold on
plot(t,N01, 'r--', 'LineWidth',1)
plot(t,N11, 'b--', 'LineWidth',1)
grid on
xlabel('t')
legend('Combined','N01', 'N11')
axis([0,4,0,2])
hold off
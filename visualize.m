open('O:\Downloads\complex nets\tu.fig')
list = [1647 9171 4075 9240 5785 5888];
pause(5)
for i =1:6
    figure(i)
    T=path{list(i)}
    for i =1:length(T)
        plot(ceil(T(i)/100),mod(T(i),100),'ro','MarkerFaceColor','r');
        pause(1)
    end
end

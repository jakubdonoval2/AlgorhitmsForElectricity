pole = randi(20,1,10);
disp(pole);
pomocaPremenna = 0;
dlzkaX = size(pole);
disp(dlzkaX(2));
a = 2;
n = 0;
b = 2;

while b <= dlzkaX(2) 
    d = pole(b-1);
    if d > pole(b)
        higherValue = pole(b);
        indexHigherValue = b;
        j = 1;
        n = 0;
        while n < 1
            if higherValue < pole(j)
                pomocaPremenna = pole(j);
                pole(j)= higherValue;
                pole(indexHigherValue)= pomocaPremenna;
                n = 1;
                disp(pole);
            end
            j = j + 1;
        end
    else
    b = b + 1;
    end
end



disp(pole);
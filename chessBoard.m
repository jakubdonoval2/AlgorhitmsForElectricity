
function [matrix] =chessBoard(sizeOfBoardSide,numberOfFields)

%calculating how much fields will be on one side of the board
numberOfFieldsPerSide = sqrt(numberOfFields);
disp(numberOfFieldsPerSide);
n= numberOfFieldsPerSide;
numberOfUniyts = 0;

%if the sqrt(numberOfFields) will yield a double we need to make it an
%integer
while n>=1
    n = n -1;
    numberOfUniyts = numberOfUniyts + 1;
end

% if the sqrt will yield a double we will make an integer that is smaller
% than previous value from sqrt
if mod(numberOfFieldsPerSide,numberOfUniyts) ~=1
    numberOfFieldsPerSide = numberOfUniyts;
end

disp("this is the number of units "+numberOfUniyts);
disp("this is nuber of fields per side "+numberOfFieldsPerSide);

n = 0;

%checking if it is possible to one number of fields to one board side, if
%not we will increase the board size so it will be possible
while n < 1
    if mod(sizeOfBoardSide,numberOfFieldsPerSide) ~=0
        sizeOfBoardSide = sizeOfBoardSide + 1;
    else
        n = n + 1;
    end
end

%how much ones and zeros will be in one field
numberOfUnitsPerOneFiels = sizeOfBoardSide/numberOfFieldsPerSide;

matrix = zeros(sizeOfBoardSide,sizeOfBoardSide);
sizeXY = size(matrix);
zeroOrOneValueYAxes = 1;
zeroOrOneValueXAxes = zeroOrOneValueYAxes;

for k = 1:sizeXY(1)
    %here we are setting values for x axes
    for o = 1:sizeXY(2)
        matrix(k,o) = zeroOrOneValueXAxes;
        %here flip values (0 or 1) on the X axes
        if (mod(o,numberOfUnitsPerOneFiels)==0)&&(zeroOrOneValueXAxes == 1)
            zeroOrOneValueXAxes = 0;
        elseif (mod(o,numberOfUnitsPerOneFiels)==0)&&(zeroOrOneValueXAxes ==0)
            zeroOrOneValueXAxes = 1;
        end
    end

%here we flip value of 0 and 1 for Y axes
    if (mod(k,numberOfUnitsPerOneFiels)==0)&&(zeroOrOneValueYAxes == 1)
        zeroOrOneValueYAxes = 0;
    elseif (mod(k,numberOfUnitsPerOneFiels)==0)&&(zeroOrOneValueYAxes ==0)
        zeroOrOneValueYAxes = 1;
    end
%this line is import. Line makes the for loop for x axes start with the first
%value(0 or 1) according to the Y axes
    zeroOrOneValueXAxes = zeroOrOneValueYAxes;

end

disp(matrix);

end
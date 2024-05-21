%Nicholas Fabian
%Full Stitch

clear all; close all; clc; format compact

dotSize = 2;
hold on

% Load in (x, y, z) data for Corner Scans

    A = importdata('testresultsCorner.txt');
    B = importdata('testresultsCornerBase.txt');
    AB = cat(1,A,B);
    
    

    % Extract and assign data v
    x = (AB(:,1))-4.9;
    y = (AB(:,2))-68.15;
    z = (AB(:,3));
    a = 1;
    while a < length(x)+1
        if y(a) < -20
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end

    cornerBL = plot3(x-1.7269, y-17.2372, z-6.666, 'b.','MarkerSize',dotSize);
    rotate(cornerBL, [0 0 1], -38, [-.194856 -16.3517 0])
    cornerFL = plot3(-x+16.7325-1.7269, y-17.2372, z-6.666, 'b.','MarkerSize',dotSize);
    rotate(cornerFL, [0 0 1], 38, [13.4736 -16.3517 0])
    
    cornerBR = plot3(x, -y+200, z, 'b.','MarkerSize',dotSize);
    rotate(cornerBR, [0 0 1], 38, [0 200 0])
    cornerFR = plot3(-x+16.7325, -y+200, z, 'b.','MarkerSize',dotSize);
    rotate(cornerFR, [0 0 1], -38, [16.7325 200 0])


% Load in Data for Section 1
   A = importdata('testresultsFront1.txt');
    B = importdata('testresultsBase1.txt');
    AB = cat(1,A,B);
    
    % Extract and assign data v
    x = AB(:,1);
    y = AB(:,2);
    z = AB(:,3);
    a = 1;


    while a < length(x)+1
        if y(a) > 92.5 || y(a) < 76.03
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end

    Section1 = plot3(x-5.5711, y-41.4937, z-20.3757, 'b.','MarkerSize',dotSize);
    rotate(Section1, [0 0 1], 94, [19.8638 37.2459 0])


    A = importdata('testresultsFront2.txt');
    B = importdata('testresultsBase2.txt');
    AB = cat(1,A,B);
    
    % Extract and assign data v
    x = AB(:,1);
    y = AB(:,2);
    z = AB(:,3);
    a = 1;


    while a < length(x)+1
        if y(a) > 95
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end

    Section2 = plot3(x-5.0861, y+ 5.4801, z-17.1081, 'b.','MarkerSize',dotSize);
    rotate(Section2, [0 0 1], 90, [20.2112 91.1822 0])


    %Section 3

    A = importdata('testresultsFront3.txt');
    B = importdata('testresultsBase3.txt');
    AB = cat(1,A,B);
    
    % Extract and assign data v
    x = AB(:,1);
    y = AB(:,2);
    z = AB(:,3);
    a = 1;

    while a < length(x)+1
        if y(a) > 102 || y(a) < 90
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end
    
    Section3 = plot3(x-10.9272-7.9114, y+ 54.2290-6.1620, z-13.6412, 'b.','MarkerSize',dotSize);
    rotate(Section3, [0 0 1], 90, [12.2626 147.466 0])

    %Section 4
    
    A = importdata('testresultsFront4.txt');
    B = importdata('testresultsBase4.txt');
    AB = cat(1,A,B);
    
    % Extract and assign data v
    x = AB(:,1);
    y = AB(:,2);
    z = AB(:,3);
    a = 1;

    while a < length(x)+1
        if y(a) <93 || y(a) > 110.4 || x(a)>23 && z(a)>14.8
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end

    Section4 = plot3(x-4.8695, y +107.7582, z-12.9074, 'b.','MarkerSize',dotSize);
    rotate(Section4, [0 0 1], 95, [20.629 203.664 ...
        0])



    % Back Wall
    xBW = 185.3534;
    yBW = 287.4862;
    zBW = -14.4163;

    A = importdata('testresultsBase1.txt');
    
    
    % Extract and assign data v
    x = A(:,1);
    y = A(:,2);
    z = A(:,3);
    a = 1;
    
    while a < length(x)+1
        if y(a) > 82 || y(a) < 78
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end
    
    Back1 = plot3(x+xBW, -y+yBW, z+zBW, 'b.','MarkerSize',dotSize);
    

   A = importdata('testresultsBase2.txt');
    
    
    % Extract and assign data v
    x = A(:,1);
    y = A(:,2);
    z = A(:,3);
    a = 1;
    %{
    while a < length(x)+1
        if y(a) > 82 || y(a) < 78
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end
    %}
    Back2 = plot3(x-55+xBW, -y+7+yBW, z+zBW, 'b.','MarkerSize',dotSize);
    


    A = importdata('testresultsBase3.txt');
    % Extract and assign data v
    x = A(:,1);
    y = A(:,2);
    z = A(:,3);
    a = 1;
    %{
    while a < length(x)+1
        if y(a) > 82 || y(a) < 78
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end
    %}
    Back3 = plot3(x-110+xBW, -y+12+yBW, z+zBW, 'b.','MarkerSize',dotSize);

    A = importdata('testresultsBase4.txt');
    % Extract and assign data v
    x = A(:,1);
    y = A(:,2);
    z = A(:,3);
    a = 1;
    %{
    while a < length(x)+1
        if y(a) > 82 || y(a) < 78
                y(a) = [];
                x(a) = [];
                z(a) = [];
        else
            a = a+1;
        end
    end
    %}
    Back4 = plot3(x-160+xBW, -y+17+yBW, z+zBW, 'b.','MarkerSize',dotSize);


    rotate(Back1, [0 0 1], -90, [-3.32527 205.037 0])
    rotate(Back2, [0 0 1], -90, [-3.32527 205.037 0])
    rotate(Back3, [0 0 1], -90, [-3.32527 205.037 0])
    rotate(Back4, [0 0 1], -90, [-3.32527 205.037 0])

res = 1    
%Fill Spaces

[y,z] = meshgrid(-20.6:res:205.2, -60:-17.9);
x = 19.4 + y-y;
P1 = plot3(x,y,z, 'b.','MarkerSize',dotSize);
x = -6.24686 + y-y;
P2 = plot3(x,y,z, 'b.','MarkerSize',dotSize);

[x,z] = meshgrid(-6.24686:res:19.4, -60:-18);
y = -20.6 + x-x;
P3 = plot3(x,y,z, 'b.','MarkerSize',dotSize);
y = 203.8 + x-x;
P4 = plot3(x,y,z, 'b.','MarkerSize',dotSize);

[x,z] = meshgrid(-6.24686:res:19.4, -60:-18);
y = -20.6 + x-x;
P5 = plot3(x,y,z, 'b.','MarkerSize',dotSize);
y = 203.8 + x-x;
P6 = plot3(x,y,z, 'b.','MarkerSize',dotSize);

[x,y] = meshgrid(-6.24686:res:19.4, -20.6:203.8);
z = -18 +x-x;
P7= plot3(x,y,z, 'b.','MarkerSize',dotSize);

[x,y] = meshgrid(-.2:res:15.7, -16:203.8);
z = (x+.2)/15.7 +29;
P8 = plot3(x,y,z, 'b.','MarkerSize',dotSize);

[x,z] = meshgrid(-.2:res:15.7, -18:30);
y = -16 + x-x;
P9 = plot3(x,y,z, 'b.','MarkerSize',dotSize);
y = 202 + x-x;
P10 = plot3(x,y,z, 'b.','MarkerSize',dotSize);

[y,z] = meshgrid(-16:res:202, -17.9:29);
x = -.2 + y-y;
P11 = plot3(x,y,z, 'b.','MarkerSize',dotSize);

[x,y] = meshgrid(-6.24686:res:19.4, -20.6:203.8);
z = -60 +x-x;
P12= plot3(x,y,z, 'b.','MarkerSize',dotSize);

[y,z] = meshgrid(-16:res:202, -17.9:29);
x = 12 + y-y;
P13 = plot3(x,y,z, 'b.','MarkerSize',dotSize);


title('3D Point Cloud');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal
grid on

hold off


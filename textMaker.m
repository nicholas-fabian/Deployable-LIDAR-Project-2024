%{
Xvals = cat(2, cornerBL.XData, cornerBR.XData, cornerFL.XData, ...
    cornerFR.XData, Section1.XData, Section2.XData, Section3.XData, ...
    Section4.XData, Back1.XData, Back2.XData, Back3.XData, Back4.XData)

Yvals = cat(2, cornerBL.YData, cornerBR.YData, cornerFL.YData, ...
    cornerFR.YData, Section1.YData, Section2.YData, Section3.YData, ...
    Section4.YData, Back1.YData, Back2.YData, Back3.YData, Back4.YData)

Zvals = cat(2, cornerBL.ZData, cornerBR.ZData, cornerFL.ZData, ...
    cornerFR.ZData, Section1.ZData, Section2.ZData, Section3.ZData, ...
    Section4.ZData, Back1.ZData, Back2.ZData, Back3.ZData, Back4.ZData)

meshPoints = cat(1, Xvals, Yvals, Zvals)

fileID = fopen('MeshPoints.txt','w')
fprintf(fileID,'%f %f %f\r\n',meshPoints);
fclose(fileID);
%}
% Panels


Xvals = cat(2, P1.XData, P2.XData, P3.XData, ...
    P4.XData, P5.XData, P6.XData, P7.XData, ...
    P8.XData, P9.XData, P10.XData, P11.XData, P12.XData, ...
    P13.XData, Section1.XData, Section2.XData, Section3.XData, ...
    Section4.XData);

Yvals = cat(2, P1.YData, P2.YData, P3.YData, ...
    P4.YData, P5.YData, P6.YData, P7.YData, ...
    P8.YData, P9.YData, P10.YData, P11.YData, P12.YData, ...
    P13.YData, Section1.YData, Section2.YData, Section3.YData, ...
    Section4.YData);


Zvals = cat(2, P1.ZData, P2.ZData, P3.ZData, ...
   P4.ZData, P5.ZData, P6.ZData, P7.ZData, ...
    P8.ZData, P9.ZData, P10.ZData, P11.ZData, P12.ZData, ...
    P13.ZData, Section1.ZData, Section2.ZData, Section3.ZData, ...
    Section4.ZData);

a = 1;
 while a < length(Xvals)+1
        if Xvals(a) >19.5 || Yvals(a)>206
                Yvals(a) = [];
                Xvals(a) = [];
                Zvals(a) = [];
        else if Yvals(a) < 201 && Yvals(a) > -18 && Xvals(a) < 19.4 && Xvals(a) > -6 && Zvals(a)< -20 && Zvals(a) > -60
                Yvals(a) = [];
                Xvals(a) = [];
                Zvals(a) = [];
        else
            a = a+1;
        end
        end
 end



meshPoints = cat(1, Xvals, Yvals, Zvals)

plot3(Xvals, Yvals, Zvals, 'b.','MarkerSize',2);

title('3D Point Cloud');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal
grid on

hold off

fileID = fopen('MeshPointsPanels.txt','w')
fprintf(fileID,'%f %f %f\r\n',meshPoints);
fclose(fileID);
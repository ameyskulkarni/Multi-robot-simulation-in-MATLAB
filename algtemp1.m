function [listout] = cus_alg(simrobot,list,matrix,step,distL,distR)

% your algorithm starts here
[distF, robnum]= readusonic(simrobot,'sensor_front',matrix);
[distL, robnum]= readusonic(simrobot,'sensor_left',matrix);
[distR, robnum]= readusonic(simrobot,'sensor_right',matrix);

disp(size(matrix));

%goal position

xy1 = goal_allocation(1);
                
xy0 = getpos(simrobot);

distT = sqrt((xy0(1,1)-xy1(1,1))^2+(xy0(1,2)-xy1(1,2))^2);
disp(distT);
rot = atan2(xy1(2)-xy0(2),xy1(1)-xy0(1))*180/pi;
if (rot<0)
    rot = 360 + rot;
end

ang = gethead(simrobot);

angR = rot - ang;

if (abs(angR) > 180)
    angR = angR - (angR/abs(angR))*360;
end

tr=1;
tl=1;

if angR > 5
    tl=0.4;
    tr=0.5;
elseif angR < -5
    tl=0.5;
    tr=0.4;
end

if distT<4
    simrobot = setvel(simrobot,[0 0]);
    disp('GOAL REACHED');
else
    if distF<5
        simrobot= setvel(simrobot,[0 2]);
    elseif distF<15
        simrobot= setvel(simrobot,[0.4 0.6]);
    elseif angR>5
        if distL<7
            simrobot=setvel(simrobot,[0.5 0.5]);
        else
            simrobot=setvel(simrobot,[tl tr]);
        end
    elseif angR<-5
        if distR<7
            simrobot=setvel(simrobot,[0.5 0.5]);
        else
            simrobot=setvel(simrobot,[tl tr]);
        end
    else
        simrobot=setvel(simrobot,[tl tr]);
    end
end

disp('...............');


   
%simrobot = LLCm(simrobot,[xi yi],distF);


% end of your algorithm

list(getnum(simrobot)-1)=simrobot;
listout = list;


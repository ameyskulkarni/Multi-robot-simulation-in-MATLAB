function XY = goal_allocation(robot_num)

goal1 = [700 150];
goal2 = [200 100];
goal3 = [800 410];
goal4 = [100 400];

initial_posn1 = [24.717785843920154 3.936488203266787e+02];
initial_posn2 = [18.861161524500915 3.041261343012704e+02];
initial_posn3 = [18.861161524500915,2.045635208711434e+02];
initial_posn4 = [17.187840290381132 99.980943738657000];

alloc_array1 = [((initial_posn1(1)-goal1(1))^2 + (initial_posn1(2)-goal1(2))^2)...
                ((initial_posn1(1)-goal2(1))^2 + (initial_posn1(2)-goal2(2))^2)...
                ((initial_posn1(1)-goal3(1))^2 + (initial_posn1(2)-goal3(2))^2)...
                ((initial_posn1(1)-goal4(1))^2 + (initial_posn1(2)-goal4(2))^2)];

alloc_array2 = [((initial_posn2(1)-goal1(1))^2 + (initial_posn2(2)-goal1(2))^2)...
                ((initial_posn2(1)-goal2(1))^2 + (initial_posn2(2)-goal2(2))^2)...
                ((initial_posn2(1)-goal3(1))^2 + (initial_posn2(2)-goal3(2))^2)...
                ((initial_posn2(1)-goal4(1))^2 + (initial_posn2(2)-goal4(2))^2)];

alloc_array3 = [((initial_posn3(1)-goal1(1))^2 + (initial_posn3(2)-goal1(2))^2)...
                ((initial_posn3(1)-goal2(1))^2 + (initial_posn3(2)-goal2(2))^2)...
                ((initial_posn3(1)-goal3(1))^2 + (initial_posn3(2)-goal3(2))^2)...
                ((initial_posn3(1)-goal4(1))^2 + (initial_posn3(2)-goal4(2))^2)];
            
alloc_array4 = [((initial_posn4(1)-goal1(1))^2 + (initial_posn4(2)-goal1(2))^2)...
                ((initial_posn4(1)-goal2(1))^2 + (initial_posn4(2)-goal2(2))^2)...
                ((initial_posn4(1)-goal3(1))^2 + (initial_posn4(2)-goal3(2))^2)...
                ((initial_posn4(1)-goal4(1))^2 + (initial_posn4(2)-goal4(2))^2)];
            
[Min1,I1] = min(alloc_array1);
[Min2,I2] = min(alloc_array2); 
[Min3,I3] = min(alloc_array3);
[Min4,I4] = min(alloc_array4);

Index_array = [I1, I2, I3, I4];

A = [sort(alloc_array1);sort(alloc_array2);sort(alloc_array3);sort(alloc_array4)];
  

if I1 == I2 && I1~= I3 && I1~=I4
        switch I3
            case 1
                XY3 = goal1;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY1 = goal3;
                        XY2 = goal4;
                    case 3
                        XY4 = goal3;
                        XY1 = goal2;
                        XY2 = goal4;
                    case 4
                        XY4 = goal4;
                        XY1 = goal3;
                        XY2 = goal2;
                end
            case 2
                 XY3 = goal2;
                switch I4
                    case 1
                        XY4 = goal1;
                        XY1 = goal3;
                        XY2 = goal4;
                    case 3
                        XY4 = goal3;
                        XY1 = goal1;
                        XY2 = goal4;
                    case 4
                        XY4 = goal4;
                        XY1 = goal3;
                        XY2 = goal1;
                end
            case 3
                XY3 = goal3;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY1 = goal1;
                        XY2 = goal4;
                    case 1
                        XY4 = goal1;
                        XY1 = goal2;
                        XY2 = goal4;
                    case 4
                        XY4 = goal4;
                        XY1 = goal1;
                        XY2 = goal2;
                end
            case 4
                XY3 = goal4;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY1 = goal3;
                        XY2 = goal1;
                    case 3
                        XY4 = goal3;
                        XY1 = goal2;
                        XY2 = goal1;
                    case 1
                        XY4 = goal1;
                        XY1 = goal3;
                        XY2 = goal2;
                end
        end
    end
if I1 == I3 && I1~= I2 && I1~=I4
        switch I2
            case 1
                XY2 = goal1;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY1 = goal3;
                        XY3 = goal4;
                    case 3
                        XY4 = goal3;
                        XY1 = goal2;
                        XY3 = goal4;
                    case 4
                        XY4 = goal4;
                        XY1 = goal3;
                        XY3 = goal2;
                end
            case 2
                 XY2 = goal2;
                switch I4
                    case 1
                        XY4 = goal1;
                        XY1 = goal3;
                        XY3 = goal4;
                    case 3
                        XY4 = goal3;
                        XY1 = goal1;
                        XY3 = goal4;
                    case 4
                        XY4 = goal4;
                        XY1 = goal3;
                        XY3 = goal1;
                end
            case 3
                XY2 = goal3;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY1 = goal1;
                        XY3 = goal4;
                    case 1
                        XY4 = goal1;
                        XY1 = goal2;
                        XY3 = goal4;
                    case 4
                        XY4 = goal4;
                        XY1 = goal1;
                        XY3 = goal2;
                end
            case 4
                XY2 = goal4;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY1 = goal3;
                        XY3 = goal1;
                    case 3
                        XY4 = goal3;
                        XY1 = goal2;
                        XY3 = goal1;
                    case 1
                        XY4 = goal1;
                        XY1 = goal3;
                        XY3 = goal2;
                end
        end
end

if I1 == I4 && I1~= I2 && I1~=I3
        switch I2
            case 1
                XY2 = goal1;
                switch I3
                    case 2
                        XY3 = goal2;
                        XY1 = goal3;
                        XY4 = goal4;
                    case 3
                        XY3 = goal3;
                        XY1 = goal2;
                        XY4 = goal4;
                    case 4
                        XY3 = goal4;
                        XY1 = goal3;
                        XY4 = goal2;
                end
            case 2
                 XY2 = goal2;
                switch I3
                    case 1
                        XY3 = goal1;
                        XY1 = goal3;
                        XY4 = goal4;
                    case 3
                        XY3 = goal3;
                        XY1 = goal1;
                        XY4 = goal4;
                    case 4
                        XY3 = goal4;
                        XY1 = goal3;
                        XY4 = goal1;
                end
            case 3
                XY2 = goal3;
                switch I4
                    case 2
                        XY3 = goal2;
                        XY1 = goal1;
                        XY4 = goal4;
                    case 1
                        XY3 = goal1;
                        XY1 = goal2;
                        XY4 = goal4;
                    case 4
                        XY3 = goal4;
                        XY1 = goal1;
                        XY4 = goal2;
                end
            case 4
                XY2 = goal4;
                switch I4
                    case 2
                        XY3 = goal2;
                        XY1 = goal3;
                        XY4 = goal1;
                    case 3
                        XY3 = goal3;
                        XY1 = goal2;
                        XY4 = goal1;
                    case 1
                        XY3 = goal1;
                        XY1 = goal3;
                        XY4 = goal2;
                end
        end
end

if I2 == I3 && I2~= I1 && I2~=I4
        switch I1
            case 1
                XY1 = goal1;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY3 = goal3;
                        XY2 = goal4;
                    case 3
                        XY4 = goal3;
                        XY3 = goal2;
                        XY2 = goal4;
                    case 4
                        XY4 = goal4;
                        XY3 = goal3;
                        XY2 = goal2;
                end
            case 2
                 XY1 = goal2;
                switch I4
                    case 1
                        XY4 = goal1;
                        XY3 = goal3;
                        XY2 = goal4;
                    case 3
                        XY4 = goal3;
                        XY3 = goal1;
                        XY2 = goal4;
                    case 4
                        XY4 = goal4;
                        XY3 = goal3;
                        XY2 = goal1;
                end
            case 3
                XY1 = goal3;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY3 = goal1;
                        XY2 = goal4;
                    case 1
                        XY4 = goal1;
                        XY3 = goal2;
                        XY2 = goal4;
                    case 4
                        XY4 = goal4;
                        XY3 = goal1;
                        XY2 = goal2;
                end
            case 4
                XY1 = goal4;
                switch I4
                    case 2
                        XY4 = goal2;
                        XY3 = goal3;
                        XY2 = goal1;
                    case 3
                        XY4 = goal3;
                        XY3 = goal2;
                        XY2 = goal1;
                    case 1
                        XY4 = goal1;
                        XY3 = goal3;
                        XY2 = goal2;
                end
        end
end

if I2 == I4 && I2~= I3 && I2~=I1
         switch I3
            case 1
                XY3 = goal1;
                switch I1
                    case 2
                        XY1 = goal2;
                        XY4 = goal3;
                        XY2 = goal4;
                    case 3
                        XY1 = goal3;
                        XY4 = goal2;
                        XY2 = goal4;
                    case 4
                        XY1 = goal4;
                        XY4 = goal3;
                        XY2 = goal2;
                end
            case 2
                 XY3 = goal2;
                switch I1
                    case 1
                        XY1 = goal1;
                        XY4 = goal3;
                        XY2 = goal4;
                    case 3
                        XY1 = goal3;
                        XY4 = goal1;
                        XY2 = goal4;
                    case 4
                        XY1 = goal4;
                        XY4 = goal3;
                        XY2 = goal1;
                end
            case 3
                XY3 = goal3;
                switch I1
                    case 2
                        XY1 = goal2;
                        XY4 = goal1;
                        XY2 = goal4;
                    case 1
                        XY1 = goal1;
                        XY4 = goal2;
                        XY2 = goal4;
                    case 4
                        XY1 = goal4;
                        XY4 = goal1;
                        XY2 = goal2;
                end
            case 4
                XY3 = goal4;
                switch I1
                    case 2
                        XY1 = goal2;
                        XY4 = goal3;
                        XY2 = goal1;
                    case 3
                        XY1 = goal3;
                        XY4 = goal2;
                        XY2 = goal1;
                    case 1
                        XY1 = goal1;
                        XY4 = goal3;
                        XY2 = goal2;
                end
         end
end

if I3 == I4 && I3~= I1 && I3~=I2
          switch I1
            case 1
                XY1 = goal1;
                switch I2
                    case 2
                        XY2 = goal2;
                        XY3 = goal3;
                        XY4 = goal4;
                    case 3
                        XY2 = goal3;
                        XY3 = goal2;
                        XY4 = goal4;
                    case 4
                        XY2 = goal4;
                        XY3 = goal3;
                        XY4 = goal2;
                end
            case 2
                 XY1 = goal2;
                switch I2
                    case 1
                        XY2 = goal1;
                        XY3 = goal3;
                        XY4 = goal4;
                    case 3
                        XY2 = goal3;
                        XY3 = goal1;
                        XY4 = goal4;
                    case 4
                        XY2 = goal4;
                        XY3 = goal3;
                        XY4 = goal1;
                end
            case 3
                XY1 = goal3;
                switch I2
                    case 2
                        XY2 = goal2;
                        XY3 = goal1;
                        XY4 = goal4;
                    case 1
                        XY2 = goal1;
                        XY3 = goal2;
                        XY4 = goal4;
                    case 4
                        XY2 = goal4;
                        XY3 = goal1;
                        XY4 = goal2;
                end
            case 4
                XY1 = goal4;
                switch I2
                    case 2
                        XY2 = goal2;
                        XY3 = goal3;
                        XY4 = goal1;
                    case 3
                        XY2 = goal3;
                        XY3 = goal2;
                        XY4 = goal1;
                    case 1
                        XY2 = goal1;
                        XY3 = goal3;
                        XY4 = goal2;
                end
          end
end

                   

if I1 == I2 && I3 == I4 && I1~=I3
    switch I1
        case 1
            XY1 = goal1;
            switch I3
                case 2
                    XY3 = goal2;
                    XY2 = goal3;
                    XY4 = goal4;
                case 3
                    XY3 = goal3;
                    XY2 = goal2;
                    XY4 = goal4;
                case 4
                    XY3 = goal4;
                    XY2 = goal2;
                    XY4 = goal3;
            end
        case 2
            XY1 = goal2;
            switch I3
                case 1
                    XY3 = goal1;
                    XY2 = goal3;
                    XY4 = goal4;
                case 3
                    XY3 = goal3;
                    XY2 = goal1;
                    XY4 = goal4;
                case 4
                    XY3 = goal4;
                    XY2 = goal1;
                    XY4 = goal3;
            end
        case 3
            XY1 = goal3;
            switch I3
                case 2
                    XY3 = goal2;
                    XY2 = goal1;
                    XY4 = goal4;
                case 1
                    XY3 = goal1;
                    XY2 = goal2;
                    XY4 = goal4;
                case 4
                    XY3 = goal4;
                    XY2 = goal2;
                    XY4 = goal1;
            end
        case 4
            XY1 = goal4;
            switch I3
                case 2
                    XY3 = goal2;
                    XY2 = goal3;
                    XY4 = goal1;
        
                case 3
                    XY3 = goal3;
                    XY2 = goal2;
                    XY4 = goal1;
                case 1
                    XY3 = goal1;
                    XY2 = goal2;
                    XY4 = goal3;
            end
    end
end

if ~all(diff(sort(Index_array))) == 0
      switch I1
          case 1
              XY1 = goal1;
              switch I2
                  case 2
                      XY2 = goal2;
                      switch I3
                          case 3
                              XY3 = goal3;
                              XY4 = goal4;
                          case 4
                              XY4 = goal3;
                              XY3 = goal4;
                      end
                  case 3
                      XY2 = goal3;
                      switch I3
                          case 2
                              XY3 = goal2;
                              XY4 = goal4;
                          case 4
                              XY4 = goal2;
                              XY3 = goal4;
                      end
                  case 4
                      XY2 = goal4;
                      switch I3
                          case 3
                              XY3 = goal3;
                              XY4 = goal2;
                          case 2
                              XY4 = goal3;
                              XY3 = goal2;
                      end
              end
          case 2
              XY1 = goal2;
              switch I2
                  case 1
                      XY2 = goal1;
                      switch I3
                          case 3
                              XY3 = goal3;
                              XY4 = goal4;
                          case 4
                              XY4 = goal3;
                              XY3 = goal4;
                      end
                  case 3
                      XY2 = goal3;
                      switch I3
                          case 2
                              XY3 = goal1;
                              XY4 = goal4;
                          case 4
                              XY4 = goal1;
                              XY3 = goal4;
                      end
                  case 4
                      XY2 = goal4;
                      switch I3
                          case 3
                              XY3 = goal3;
                              XY4 = goal1;
                          case 2
                              XY4 = goal3;
                              XY3 = goal1;
                      end
              end
          case 3
              XY1 = goal3;
              switch I2
                  case 2
                      XY2 = goal2;
                      switch I3
                          case 3
                              XY3 = goal1;
                              XY4 = goal4;
                          case 4
                              XY4 = goal1;
                              XY3 = goal4;
                      end
                  case 1
                      XY2 = goal1;
                      switch I3
                          case 2
                              XY3 = goal2;
                              XY4 = goal4;
                          case 4
                              XY4 = goal2;
                              XY3 = goal4;
                      end
                  case 4
                      XY2 = goal4;
                      switch I3
                          case 3
                              XY3 = goal1;
                              XY4 = goal2;
                          case 2
                              XY4 = goal1;
                              XY3 = goal2;
                      end
              end
          case 4
              XY1 = goal4;
              switch I2
                  case 2
                      XY2 = goal2;
                      switch I3
                          case 3
                              XY3 = goal3;
                              XY4 = goal1;
                          case 4
                              XY4 = goal3;
                              XY3 = goal1;
                      end
                  case 3
                      XY2 = goal3;
                      switch I3
                          case 2
                              XY3 = goal2;
                              XY4 = goal1;
                          case 4
                              XY4 = goal2;
                              XY3 = goal1;
                      end
                  case 1
                      XY2 = goal1;
                      switch I3
                          case 3
                              XY3 = goal3;
                              XY4 = goal2;
                          case 2
                              XY4 = goal3;
                              XY3 = goal2;
                      end
              end
      end
end

    
if robot_num == 1
        XY = XY1;
elseif robot_num == 2
        XY = XY2;
elseif robot_num == 3
        XY = XY3;
else
        XY = XY4;
end
                             
end
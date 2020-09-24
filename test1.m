clear all
clc

yaw_d = 0;
Rd = eye(3);
for t = 0:0.1:20
    A = [9.8*sin(0.4*t),0,9.8*cos(0.4*t) - 9.8]';
    Old_Rd = Rd;
    [Rd, Rd_all] = cal_Rd_new(A, yaw_d, Rd);   
    ob = [0,0,0]';
    xb = [ob,Rd(:,1)];
    yb = [ob,Rd(:,2)];
    zb = [ob,Rd(:,3)];
    figure(1)
    plot3(xb(1,:),xb(2,:),xb(3,:),'r-','LineWidth',2.0);
    hold on
    plot3(yb(1,:),yb(2,:),yb(3,:),'g-','LineWidth',2.0);
    plot3(zb(1,:),zb(2,:),zb(3,:),'b-','LineWidth',2.0);
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    
    figure(2)

    for i = 2:length(Rd_all)
        xb = [ob,Rd_all{i}(:,1)];
        yb = [ob,Rd_all{i}(:,2)];
        zb = [ob,Rd_all{i}(:,3)];
        plot3(xb(1,:),xb(2,:),xb(3,:),'Color',[0.5+0.5/length(Rd_all)*i,0,0],'LineWidth',2.0);
        hold on
        plot3(yb(1,:),yb(2,:),yb(3,:),'Color',[0,0.5+0.5/length(Rd_all)*i,0],'LineWidth',2.0);
        plot3(zb(1,:),zb(2,:),zb(3,:),'Color',[0,0,0.5+0.5/length(Rd_all)*i],'LineWidth',2.0);
    end
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    pause(0.1);
end

yaw_d = 0;
Rd = eye(3);
for t = 0:0.1:20
    A = [0, 9.8*sin(0.4*t),9.8*cos(0.4*t) - 9.8]';
    Old_Rd = Rd;
    [Rd, Rd_all] = cal_Rd_new(A, yaw_d, Rd);   
    ob = [0,0,0]';
    xb = [ob,Rd(:,1)];
    yb = [ob,Rd(:,2)];
    zb = [ob,Rd(:,3)];
    figure(1)
    plot3(xb(1,:),xb(2,:),xb(3,:),'r-','LineWidth',2.0);
    hold on
    plot3(yb(1,:),yb(2,:),yb(3,:),'g-','LineWidth',2.0);
    plot3(zb(1,:),zb(2,:),zb(3,:),'b-','LineWidth',2.0);
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    
    figure(2)

    for i = 2:length(Rd_all)
        xb = [ob,Rd_all{i}(:,1)];
        yb = [ob,Rd_all{i}(:,2)];
        zb = [ob,Rd_all{i}(:,3)];
        plot3(xb(1,:),xb(2,:),xb(3,:),'Color',[0.5+0.5/length(Rd_all)*i,0,0],'LineWidth',2.0);
        hold on
        plot3(yb(1,:),yb(2,:),yb(3,:),'Color',[0,0.5+0.5/length(Rd_all)*i,0],'LineWidth',2.0);
        plot3(zb(1,:),zb(2,:),zb(3,:),'Color',[0,0,0.5+0.5/length(Rd_all)*i],'LineWidth',2.0);
    end
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    pause(0.1);
end

yaw_d = 0;
Rd = eye(3);
for t = 0:0.1:20
    A = [9.8*sin(0.2*t), 9.8*sin(0.4*t)*cos(0.2*t),9.8*cos(0.4*t)*cos(0.2*t) - 9.8]';
    Old_Rd = Rd;
    [Rd, Rd_all] = cal_Rd_new(A, yaw_d, Rd);   
    ob = [0,0,0]';
    xb = [ob,Rd(:,1)];
    yb = [ob,Rd(:,2)];
    zb = [ob,Rd(:,3)];
    figure(1)
    plot3(xb(1,:),xb(2,:),xb(3,:),'r-','LineWidth',2.0);
    hold on
    plot3(yb(1,:),yb(2,:),yb(3,:),'g-','LineWidth',2.0);
    plot3(zb(1,:),zb(2,:),zb(3,:),'b-','LineWidth',2.0);
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    
    figure(2)

    for i = 2:length(Rd_all)
        xb = [ob,Rd_all{i}(:,1)];
        yb = [ob,Rd_all{i}(:,2)];
        zb = [ob,Rd_all{i}(:,3)];
        plot3(xb(1,:),xb(2,:),xb(3,:),'Color',[0.5+0.5/length(Rd_all)*i,0,0],'LineWidth',2.0);
        hold on
        plot3(yb(1,:),yb(2,:),yb(3,:),'Color',[0,0.5+0.5/length(Rd_all)*i,0],'LineWidth',2.0);
        plot3(zb(1,:),zb(2,:),zb(3,:),'Color',[0,0,0.5+0.5/length(Rd_all)*i],'LineWidth',2.0);
    end
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    pause(0.1);
end


yaw_d = 0;
Rd = eye(3);
for t = 0:0.1:20
    A = [9.8*sin(0.2*t), 9.8*sin(0.4*t)*cos(0.2*t),9.8*cos(0.4*t)*cos(0.2*t) - 9.8]';
    yaw_d = sin(0.2*t);
    Old_Rd = Rd;
    [Rd, Rd_all] = cal_Rd_new(A, yaw_d, Rd);   
    ob = [0,0,0]';
    xb = [ob,Rd(:,1)];
    yb = [ob,Rd(:,2)];
    zb = [ob,Rd(:,3)];
    figure(1)
    plot3(xb(1,:),xb(2,:),xb(3,:),'r-','LineWidth',2.0);
    hold on
    plot3(yb(1,:),yb(2,:),yb(3,:),'g-','LineWidth',2.0);
    plot3(zb(1,:),zb(2,:),zb(3,:),'b-','LineWidth',2.0);
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    
    figure(2)

    for i = 2:length(Rd_all)
        xb = [ob,Rd_all{i}(:,1)];
        yb = [ob,Rd_all{i}(:,2)];
        zb = [ob,Rd_all{i}(:,3)];
        plot3(xb(1,:),xb(2,:),xb(3,:),'Color',[0.5+0.5/length(Rd_all)*i,0,0],'LineWidth',2.0);
        hold on
        plot3(yb(1,:),yb(2,:),yb(3,:),'Color',[0,0.5+0.5/length(Rd_all)*i,0],'LineWidth',2.0);
        plot3(zb(1,:),zb(2,:),zb(3,:),'Color',[0,0,0.5+0.5/length(Rd_all)*i],'LineWidth',2.0);
    end
    grid on
    axis([-2,2,-2,2,-2,2]);
    hold off
    pause(0.1);
end
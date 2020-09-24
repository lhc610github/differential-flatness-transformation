function [Rd, Rd_all] = cal_Rd(A,yaw, Rd_old)
    e3 = [0,0,1]';
    g = 9.8;
    b3 = (A + g*e3)/ norm(A + g*e3)
    gamma = 15/180*pi;
    Rd_all = {Rd_old};
    index_all = {-1};
    eps = 0.05;
    % case 0: (standard)
    bc = [cos(yaw), sin(yaw), 0]';
    cross_b3_bc = cross(b3, bc);
    if (norm(cross_b3_bc) > eps)
        b2 = cross_b3_bc/norm(cross_b3_bc);
        b1 = cross(b2,b3);
        Rd = [b1, b2, b3];
        Rd_all = [Rd_all, Rd];
        index_all = [index_all, 0];
    end
    % case 2: yc
    bc = [-sin(yaw), cos(yaw), 0]';
    cross_bc_b3 = cross(bc, b3);
    if (norm(cross_bc_b3) > eps)
        b1 = cross_bc_b3/norm(cross_bc_b3);
        b2 = cross(b3,b1);
        Rd = [b1, b2, b3];
        Rd_all = [Rd_all, Rd];
        index_all = [index_all, 2];
    end   
    error_R = inf;
    final_index = inf;
    for i = 2:length(Rd_all)
        delta_error = 0;
        for j = 1:3
            delta_error = delta_error + 1-dot(Rd_all{i}(:,j), Rd_old(:,j));
        end
        if (delta_error < error_R)          
            error_R = delta_error;
            final_index = index_all{i};
            Rd = Rd_all{i};
        end
    end
    fprintf("choose %d", final_index);
end
function [f, g] = plot_if_constraints(R, L, show, s1, s2)
    % circle2poly: Approximates a circle with a polygon and computes inequalities
    % and plots an example signal inside the restriction space.

    %% --- Geometry ---
    angle = 2 * pi / L;

    f = zeros(L, 2);
    g = zeros(L, 1);

    vertices_x = R * cos((0:L-1) * angle);
    vertices_y = R * sin((0:L-1) * angle);

    for i = 1:L
        next_index = mod(i, L) + 1;

        x1 = vertices_x(i);
        y1 = vertices_y(i);
        x2 = vertices_x(next_index);
        y2 = vertices_y(next_index);

        normal = [y1 - y2, x2 - x1];
        normal = normal / norm(normal);

        offset = abs(dot(normal, [x1; y1]));

        f(i, :) = normal;
        g(i) = offset;
    end

    s1= s1';
    s2= s2';
    %% --- Optional plotting ---
    if show
        figure;
        hold on; axis equal; grid on;
        title('Filter Currents Soft Constraints');

        % Plot half-spaces
        x_range = linspace(-1.5*R, 1.5*R, 400);
        y_range = linspace(-1.5*R, 1.5*R, 400);
        [X, Y] = meshgrid(x_range, y_range);

        for j = 1:L
            Z = f(j,1) * X + f(j,2) * Y - g(j);
            contour(X, Y, Z, [0 0], 'k', 'LineWidth', 1, 'HandleVisibility','off');
        end


        % Fill polygon
        fill(vertices_x, vertices_y, 'g', 'FaceAlpha', 0.15, ...
             'EdgeColor', 'k', 'HandleVisibility','off');

        % Plot signal
        plot(s1(1,:), s1(2,:), 'Color',[0.0 0.45 0.74], 'LineWidth', 1.5, 'DisplayName','MPC');
        %plot(s1(1,1), s1(2,1), 'ko', 'MarkerFaceColor','k', 'HandleVisibility','off');

        % Plot signal
        plot(s2(1,:), s2(2,:), 'Color',[0.85 0.33 0.10], 'LineWidth', 1.5, 'DisplayName','DNN');
        %plot(s2(1,1), s2(2,1), 'ko', 'MarkerFaceColor','k', 'HandleVisibility','off');
        
        % Plot true circle
        theta = linspace(0, 2*pi, 200);
        plot(R*cos(theta), R*sin(theta), 'k', 'LineWidth', 3.5, 'HandleVisibility','off');

        legend('Location','best');

        xlim([-1.1*R 1.1*R]);
        ylim([-1.1*R 1.1*R]);
        xlabel('$i_{fd}$ [A]','Interpreter','latex')
        ylabel('$i_{fq}$ [A]','Interpreter','latex')
        hold off;
    end
end
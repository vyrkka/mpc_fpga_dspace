
function [f, g] = circle2poly(R, L, show)
    % circle2poly: Approximates a circle with a polygon and computes the defining inequalities.
    %
    % Inputs:
    %   R     - Radius of the circle to be approximated.
    %   L     - Number of sides of the polygonal approximation (higher values yield a closer approximation).
    %   show  - Logical flag to determine whether to display the plot (true) or not (false).
    %
    % Outputs:
    %   f     - An Lx2 matrix, where each row represents the normal vector to each side of the approximation.
    %   g     - An Lx1 vector, where each element represents the distance from the origin to the line
    %           corresponding to the normal vector in 'f'. These vectors form the inequalities:
    %           f * [x; y] <= g, which define the boundaries of the approximation.
    %
    % Description:
    %   This function computes a polygonal approximation of a circle by calculating vertices evenly spaced
    %   along the circle's perimeter. For each pair of adjacent vertices, the function calculates the outward
    %   pointing normal vector and the corresponding offset from the origin. If 'show' is true, it plots
    %   the original circle, the approximation, and the lines defined by the inequalities. This function is useful
    %   for geometric visualizations and analyses in computational geometry or robotics path planning.
    %
    %   The inequalities defined by matrices f and g form the boundaries such that for any point [x; y] inside
    %   the approximation, the condition f * [x; y] <= g holds true.

    % Calculate the angle increment for each segment
    angle = 2 * pi / L;

    % Initialize matrices to store the normal vectors and offsets
    f = zeros(L, 2);
    g = zeros(L, 1);

    % Compute each vertex of the polygon approximating the circle
    vertices_x = R * cos((0:L-1) * angle);
    vertices_y = R * sin((0:L-1) * angle);

    % Calculate the normal vectors and offset for each face of the approximation
    for i = 1:L
        % Determine the next vertex in the sequence, wrapping around at the end
        next_index = mod(i, L) + 1;

        % Current vertex coordinates
        x1 = vertices_x(i);
        y1 = vertices_y(i);

        % Next vertex coordinates
        x2 = vertices_x(next_index);
        y2 = vertices_y(next_index);

        % Calculate normal vector (pointing outward)
        normal = [y1 - y2, x2 - x1];
        norm_length = sqrt(normal(1)^2 + normal(2)^2);
        normal = normal / norm_length; % Normalize the normal vector

        % Calculate the distance from the origin to the line along the normal
        offset = abs(dot(normal, [x1; y1]));

        % Store normal vector and offset
        f(i, :) = normal;
        g(i) = offset;
    end

    % Optionally display the approximation and the circle
    if show
        % Create figure for plotting
        figure;
        hold on;
        axis equal;
        grid on;
        title('Approximation of a Circle by a Polygonal Shape');

        % Define a range for x and y values
        x_range = linspace(-1.5*R, 1.5*R, 400);
        y_range = linspace(-1.5*R, 1.5*R, 400);
        [X, Y] = meshgrid(x_range, y_range);

        % Evaluate each inequality
        for j = 1:L
            % Plot the half-spaces defined by the inequalities
            Z = f(j,1) * X + f(j,2) * Y + g(j);
            contour(X, Y, Z, [0, 0], 'LineColor', 'k', 'LineWidth', 1);
        end
        
        % Plot the original circle for reference
        theta = linspace(0, 2*pi, 100);
        circle_x = R * cos(theta);
        circle_y = R * sin(theta);
        plot(circle_x, circle_y, 'r', 'LineWidth', 2); % Red line for the circle

        % Fill the approximation to show the shape
        fill(vertices_x, vertices_y, 'b', 'FaceAlpha', 0.15);

        % Set axis limits
        xlim([-1.1*R, 1.1*R]);
        ylim([-1.1*R, 1.1*R]);

        hold off;
    end
end

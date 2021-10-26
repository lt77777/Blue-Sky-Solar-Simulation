function [total_area] = area_of_nsided_convex_polygon(vertices)
% input n number of vertices, and output the area, assuming
% it is convex (think polar coordinates)
% I am assuming the vertices are ordered
total_area = 0;
n = size(vertices,1);
for i= (mod(n,2) + n)/2 - 1
    total_area = total_area + ((norm(cross(abs(vertices(2*(i-1)+1,:)-vertices(2*i,:)),abs(vertices(2*i,:)-vertices(2*i+1,:)))))/2);
end
if mod(n,2) == 1
    total_area = total_area + ((norm(cross(abs(vertices(n,:)-vertices(1,:)),abs(vertices(1,:)-vertices(2,:)))))/2);
end
% n = size(vertices, 1);
% total_area = 0;
% centroid_x = 0;
% centroid_y = 0;
% centroid_z = 0;
% for i = 1:n
%     centroid_x = centroid_x + vertices(i, 1);
%     centroid_y = centroid_y + vertices(i, 2);
%     centroid_z = centroid_z + vertices(i, 3);
% end
% centroid = [(centroid_x / n), (centroid_y / n), (centroid_z / n)];
% for i = 1:(n - 1)
%     total_area = total_area + area_of_triangle(centroid, vertices(i,:), vertices(i + 1,:)); %add up areas of triangles formed by centroid and 2 consecutative vertices
%  end
% total_area = total_area + area_of_triangle(centroid, vertices(1, :), vertices(n, :)); %account for first and last consecutative vertices

% n = size(vertices, 1);
% total_area = 0;
% centroid_x = 0;
% centroid_y = 0;
% centroid_z = 0;
% for i = 1:n
%     centroid_x = centroid_x + vertices(n, 1);
%     centroid_y = centroid_y + vertices(n, 2);
%     centroid_z = centroid_z + vertices(n, 3);
% end
% centroid = [(centroid_x / n), (centroid_y / n), (centroid_z / n)];
% vertices_ordered = zeros(n, 3);
% curr_vertex = vertices(1, :);
% vertices_ordered(1,:) = curr_vertex(1,:);
% closest_vertex = zeros(1, 3);
% compared_vertex = zeros(1, 3);
% for i = 1:n
%     dist = 9999999999999;
%     curr_vertex = vertices_ordered (i,:);
%     for j = 1:n
%         if j ~= i
%             compared_vertex = vertices(j,:);
%         end
%         curr_dist = sqrt(((curr_vertex(1) - compared_vertex(1))^2) + ((curr_vertex(2) - compared_vertex(2))^2) + ((curr_vertex(3) - compared_vertex(3))^2));
%             if curr_dist < dist
%                 dist = curr_dist;
%                 closest_vertex = compared_vertex;
%             end
%     end
%     vertices_ordered(i,:) = closest_vertex;
% end
% for i = 1:(n - 1)
%     total_area = total_area + area_of_triangle(centroid, vertices_ordered(i,:), vertices_ordered(i + 1,:)); %add up areas of triangles formed by centroid and 2 consecutative vertices
% end
% total_area = total_area + area_of_triangle(centroid, vertices_ordered(1, :), vertices_ordered(n, :)); %account for first and last consecutative vertices

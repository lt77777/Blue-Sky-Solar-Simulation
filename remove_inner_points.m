function[points] = remove_inner_points(unfiltered_points)
% this function accepts a set of points which are all assumed to
% be on some plane, it then requires you to remove all points
% except for the outermost points that describe the perimeter. A
% useful function to look at is “convhull/convexhull”

temp = convhull(unfiltered_points(:,1),unfiltered_points(:,2), unfiltered_points(:,3));
points = setdiff(unfiltered_points, temp, 'rows');

% normal = cross(unfiltered_points(1,:)-unfiltered_points(2,:), unfiltered_points(1,:)-unfiltered_points(3,:));
% for i = 1:size(unfiltered_points,1)
%     temp(i,:) = unfiltered_points(i,:) - (dot(unfiltered_points(i,:),[1,1,0])*[1,1,0]);
% end
% [x,y] = convhull(temp(:,1),temp(:,2));

% projected_points = boundary(temp(:,1),temp(:,2));
% projected_points = (temp(:,1)(projected_points), temp(:,2)(projected_points));
% projected_points(:,3) = 0;
% points(i,:) = [x,y,0] - (dot([x,y,0],normal)*normal);

% % unfiltered_points(1,:) = unfiltered_points(1,:) + [0,0,1];
% points = setdiff(unfiltered_points, convhull(unfiltered_points), 'rows');
% 
% n = size(unfiltered_points,1);
% hull = zeros(n,3);
% k = 1;
% for i = 1:n
%     temp = unfiltered_points;
%     temp(i,:) = [];
%     if area_of_nsided_convex_polygon(unfiltered_points) - area_of_nsided_convex_polygon(temp) ~= 0
%         hull(k,:) = unfiltered_points(i,:);
%         k = k + 1; 
%     end
% end
% points_to_remove = setdiff(unfiltered_points,hull, 'rows');
% points = setdiff(unfiltered_points,points_to_remove, 'rows');

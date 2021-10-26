function[binary] = point_in_triangle(point,triangle)
% This function will take in a point and triangle as arguments, and will
% determine whether that point exists within a triangle in 3d space. Try to
% think about how that might be important for shading.

% binary = 1;
% angle_1 = 0;
% angle_2 = 0;
% angle_3 = 0;
% angle_1 = atan2(norm(cross(point,triangle(1,:)),dot(point,triangle(1,:))));
% angle_2 = atan2(norm(cross(point,triangle(2,:)),dot(point,triangle(2,:))));
% angle_3 = atan2(norm(cross(point,triangle(3,:)),dot(point,triangle(3,:))));
% if angle_1 + angle_2 + angle_3 ~= 180
%     binary = 0;
% end
binary = 0;
total_area = area_of_triangle(triangle(1,:), triangle(2,:), triangle(3,:));
sub_area1 = area_of_triangle(point, triangle(2,:), triangle(3,:));
sub_area2 = area_of_triangle(triangle(1,:), point, triangle(3,:));
sub_area3 = area_of_triangle(triangle(1,:), triangle(2,:), point);
area = (sub_area1 + sub_area2 + sub_area3);
if total_area - area < 0.0001 %there needed to be a small margin of error for significant figures
    binary = 1;
end
   
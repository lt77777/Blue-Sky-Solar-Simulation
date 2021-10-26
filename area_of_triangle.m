function [area] = area_of_triangle(v1, v2, v3)
% takes in 3 points in 3d space, returns the area, simple enough
% I am going to use Heron's Formula
side1 = sqrt(((v1(1) - v2(1))^2) + ((v1(2) - v2(2))^2) + ((v1(3) - v2(3))^2));
side2 = sqrt(((v1(1) - v3(1))^2) + ((v1(2) - v3(2))^2) + ((v1(3) - v3(3))^2));
side3 = sqrt(((v2(1) - v3(1))^2) + ((v2(2) - v3(2))^2) + ((v2(3) - v3(3))^2));
s = (side1 + side2 + side3)/2;
area = sqrt(s*(s-side1)*(s-side2)*(s-side3));

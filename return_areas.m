function[areas] = return_areas(vertices)
% this function is meant to return the total area of any number of
% triangles, again, think about how this will be useful
n = size(vertices,1);
areas = 0;
for i = 1:(n/3)
    a = i-1;
    areas = areas + area_of_triangle(vertices(1+3*a,:),vertices(3*a + 2,:), vertices(3*a + 3,:));
end
% n = size(vertices,1);
% bool = 1;
% areas = 0;
% for i = 1:n
%     for j = 1:n
%         if i~=j
%             for k = 1:n
%                 if j ~= k || i ~= k
%                     for l = 1:n
%                         if i ~=l || j~=l || k~=l
%                             bool = 1;
%                             curr_triangle = [vertices(i,:); vertices(j,:); vertices(k,:)];
%                             temp = [vertices(i,:); vertices(j,:); vertices(k,:); vertices(l,:)];
%                             if  isequal(remove_inner_points(temp), curr_triangle)
%                                 bool = 0;
%                                 break
%                             end    
%                         end
%                     end
%                 end
%             if bool ~= 0
%                 areas = areas + area_of_triangle(vertices(i,:), vertices(j,:), vertices(k,:));
%             end
%             end
%         end
%     end
% end
                                
                            
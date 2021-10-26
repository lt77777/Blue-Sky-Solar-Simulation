function [total_power] = main()
%  FV = STLREAD(FILENAME); % imports triangular faces from the ASCII or binary
% %    STL file idicated by FILENAME, and returns the patch struct FV, with fields
% %    'faces' and 'vertices'.
% %
% [F,V] = STLREAD(FILENAME); % returns the faces F and vertices V separately.
% %
% [F,V,N] = STLREAD(FILENAME) % also returns the face normal vectors.
% array = importGeometry('Aerobody Gen X DV4 A.1 ARRAY.stl');
% canopy = importGeometry('Aerobody Gen X DV4 A.1 CANOPY.stl');
[v_array, f_array, n_array, name_array] = stlread2('Aerobody Gen X DV4 A.1 ARRAY.stl');
[v_canopy, f_canopy, n_canopy, name_canopy] = stlread2('Aerobody Gen X DV4 A.1 CANOPY.stl'); % outputs the vertices of all of
% the triangles, and f denotes the indices at which the paired vertices occur.
total_power = 0;
t1 = datetime(2022,10,1,22,30,0);
t2 = datetime(2022,10,2,7,20,0); % does not include last time interval
t = t1:minutes(10):t2; % split into 10 minute intervals
AzEl = zeros(54,2);
sun_vectors = zeros(54,3);
array_order = order_vertices(v_array,f_array);
canopy_order = order_vertices(v_canopy,f_canopy);
lat = -23.6980;
long = 133.8807;
elv = 545;
array_sun_vector_project = cell(1,54);
canopy_sun_vector_project = cell(1,54);

for i = 1:54
    AzEl(i,:) = SolarAzEl(t(i),lat, long, elv);
    sun_vectors(i,:) = create_sun_vector_simple(AzEl(i,1), AzEl(i,2));
    array_sun_vector_project = project_onto_sun_vector(array_order, sun_vectors(i,:));
    canopy_sun_vector_project = project_onto_sun_vector(canopy_order, sun_vectors(i,:));
    shade = shading(canopy_sun_vector_project,array_sun_vector_project);
    shade = remove_inner_points(shade);
    total_power = total_power + ((return_areas(array_sun_vector_project) -area_of_nsided_convex_polygon(shade)) *(1/24000000));
end
% shade = shading(canopy_sun_vector_project,array_sun_vector_project);
% %  = setdiff(array_sun_vector_project,canopy_sun_vector_project, 'rows');
% % for i = 1:size(new_array_sun_vector_project,1)
% shade = remove_inner_points(shade);
% % new_array_sun_vector_project = remove_inner_points(array_sun_vector_project);
% total_power = total_power + ((return_areas(array_sun_vector_project) -area_of_nsided_convex_polygon(shade)) *(1/24000000)); %Get power in kwh and convert mm^2 to m^2, account for 25% effieceny and six-10 min intervals an hour
% % end




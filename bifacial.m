function [added_power] = bifacial(time, lat, long, elv, reflector_vertices, v_array,f_array)
% Takes in car's spacetime position to determine the added power for a
% single triangle input on the reflector
reflector_reflectance = 0.85;
efficiency = 0.24;
array_order = order_vertices(v_array,f_array);
AzEl = SolarAzEl(time,lat, long, elv);
sun_vector = create_sun_vector_simple(AzEl(1), AzEl(2));
added_area = project_onto_sun_vector(reflector_vertices, sun_vector);
array_sun_vector_project = project_onto_sun_vector(array_order, sun_vector);
shade = shading(array_sun_vector_project,added_area);
shade = remove_inner_points(shade);
added_area = return_areas(added_area) - area_of_nsided_convex_polygon(shade);
added_power = added_area * reflector_reflectance * efficiency;
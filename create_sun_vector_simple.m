function[vector] = create_sun_vector_simple(azimuth,elevation)
% Usually angles for azimuth and elevation are not necessarily useful,
% try converting these angles into a vector that describes sun rays, make sure
% that the magnitude of the vector is equal to that of the suns irradiance
vector = [sind(90 - elevation) * sind(azimuth), sind(90 - elevation) * cosd(azimuth), cosd(90 - elevation)]; % 1000 W/m^2 Irradiance so 1 kw/m^2

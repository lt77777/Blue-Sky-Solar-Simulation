function[points] = project_onto_sun_vector(vertices,sun_vector)
% the name of this function is slightly misleading, what it actually wants you
% to do is to project points onto a plane described by the sun vector. Think
% about how this might be relevant in determining solar power at different
% angles.
n = size(vertices, 1);
points = zeros(n,3);
for i = 1:n
    points(i,:) = vertices(i,:) - (dot(vertices(i,:),sun_vector)*sun_vector);
end
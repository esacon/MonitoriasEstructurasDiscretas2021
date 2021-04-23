function v = dist(x, s)
    v =  x./s^2.*exp(-x.^2./(2.*s.^2));
end

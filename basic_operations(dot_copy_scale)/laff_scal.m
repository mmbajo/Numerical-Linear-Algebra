function [ x_out ] = laff_scal( alpha, x )

% x = scal( alpha, x ) scales vector x by the scalar alpha.
% Arguments:
%   alpha -> scalar
%   x -> vector
% Output:
%   x_out -> rescaled vector with same size as x

if ~isscalar(alpha)
    x_out = 'FAILED';
    return
end

if ~isvector(x)
    x_out = 'FAILED';
    return
end

[m_x, n_x] = size(x);

x_out = zeros(m_x, n_x);
if (m_x == 1) % x is a row vector
    for i = 1:n_x
        x_out(1, i) = alpha * x(1, i);
    end
else
    for i = 1:m_x
        x_out(i, 1) = alpha * x(i, 1);
    end
end
return
end
    
        




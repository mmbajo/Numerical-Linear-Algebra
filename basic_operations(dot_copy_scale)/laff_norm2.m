function [ alpha ] = laff_norm2( x )
% alpha = norm2( x ) returns length of vector x.
% Arguments:
%   x -> vector
% Output:
%   alpha -> length of vector x

if ~isvector(x)
    alpha = 'FAILED';
    return
end

[ m_x, n_x ] = size( x );

alpha = 0;


if ( n_x == 1 )     % x is a column vector
    for i=1:m_x   
        alpha = alpha + x( i,1 ) * x( i,1 );
    end
else    % x is a row vector
    for i=1:n_x   
        alpha = alpha + x( 1,i ) * x( 1,i );
    end
end

alpha = sqrt(alpha)
return
end
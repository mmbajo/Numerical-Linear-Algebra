function [ alpha ] = laff_dot( x, y )
% alpha = dot( x, y ) returns the dot/inner prodduct of vector x and y.
% Arguments:
%   x -> vector
%   y -> vector
% Output:
%   alpha -> result of dot product

if ~isvector(x)
    alpha = 'FAILED';
    return
end

if ~isvector(y)
    alpha = 'FAILED';
    return
end


[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

if (m_x * n_x) ~= (m_y * n_y)
    alpha = 'FAILED';
    return
end

alpha = 0;

if ( n_x == 1 )     % x is a column vector
    if ( n_y == 1 )     % y is a column vector
        for i=1:m_x   
            alpha = alpha + x( i,1 ) * y( i,1 );
        end
    else     % y is a row vector
        for i=1:m_x   
            alpha = alpha + x( i,1 ) * y( 1,i );
        end
    end
else    % x is a row vector
    if ( n_y == 1 )     % y is a column vector
        for i=1:n_x   
            alpha = alpha + x( 1,i ) * y( i,1 );
        end
    else     % y is a row vector
        for i=1:n_x   
            alpha = alpha + x( 1,i ) * y( 1,i );
        end
    end
end

return
end
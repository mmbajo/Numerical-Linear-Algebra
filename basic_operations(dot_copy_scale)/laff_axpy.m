function [ y_out ] = laff_axpy( alpha, x, y )
% x = axpy( alpha, x ) scales vector x by the scalar alpha and add vector y in it.
% Arguments:
%   alpha -> scalar
%   x -> vector
%   y -> vector
% Output:
%   y_out -> result of axpy

if ~isscalar(alpha)
    y_out = 'FAILED';
    return
end

if ~isvector(x)
    y_out = 'FAILED';
    return
end

if ~isvector(y)
    y_out = 'FAILED';
    return
end


[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

if (m_x * n_x) ~= (m_y * n_y)
    y_out = 'FAILED';
    return
end

if ( n_x == 1 )     % x is a column vector
    if ( n_y == 1 )     % y is a column vector
        for i=1:m_x   
            y( i,1 ) = alpha * x( i,1 ) + y( i,1 );
        end
    else     % y is a row vector
        for i=1:m_x   
            y( 1,i ) = alpha * x( i,1 ) + y( 1,i );
        end
    end
else    % x is a row vector
    if ( n_y == 1 )     % y is a column vector
        for i=1:n_x   
            y( i,1 ) = alpha * x( 1,i ) + y( i,1 );
        end
    else     % y is a row vector
        for i=1:n_x   
            y( 1,i ) = alpha * x( 1,i ) + y( 1,i );
        end
    end
end

y_out = y;

return
end
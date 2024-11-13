function [recursive1,recursive2] = fibonacci_recursive(n)
    %
    recursive1 = NaN;
    recursive2 = NaN;
    % Base cases
    if n == 0
        fibonacci = 0;
    elseif n == 1
        fibonacci = 1;
    else
        % Recursive calls for the two previous Fibonacci numbers
        fibonacci = fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2);
        recursive1 = fibonacci_recursive(n - 1);
        recursive2 = fibonacci_recursive(n - 2);
    end
end
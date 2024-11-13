function result = myFunction(n)
    % User enter the caculation mode into 'caculationMode'
    caculationMode = input('Please type in which caculation you want (sum, factorial, fibonacci): ', 's');
    % Maximal caculation time is 3 seconds
    maxTime = 3;
    %Start the timer
    tic;
    % Perform the calculation based on the caculationMode
    % Sum of n
    if strcmp(caculationMode, 'sum')
        disp('Calculate the sum of all integers from 1 to n:');
        result = sum(1:n); 
    % Factorial of n    
    elseif strcmp(caculationMode, 'factorial')
        disp('Calculate the factorial of n:');
        result = factorial(n);
        
    elseif strcmp(caculationMode, 'fibonacci')
        disp('Calculate the nth element of the Fibonacci series:');
        
        % Calculate the nth Fibonacci
        if n <= 0
            error('Input n must be a positive integer.');
        elseif n == 1
            result = 0;
        elseif n == 2
            result = 1;
        else
            fib = [0, 1];
            for i = 3:n
                fib(i) = fib(i-1) + fib(i-2);
                currentTimeUse = toc;
                if currentTimeUse > maxTime
                    % Caculation time is too long
                    disp('Caculation time has exceeded maximal time.');
                    result = NaN;
                    return
                end
            end
            result = fib(n);
        end
        
    else
        % Not valid input
        error('Invalid mode. Re-enter "sum", "factorial", or "fibonacci".');
    end
    
    % Display the result
    disp(['Result: ', result]);
end
function n = collatz(n, varargin)
% This function checks for the Collatz conjecture for a given number. 
% It can be customized to check other variants different to 3n+1
% Takes a number n. If it’s even, divide by 2. If it’s odd, multiply
% by 3 and add 1. Repeat. Do all starting numbers lead to 1?
% INPUTS
% n                 A positive real number greater than 2.
% [OPTIONAL INPUTS]
% modNum            Modulus number, default modNum = 2
% multFac           Multiplication factor, default multFac = 3
% addSum            Sumand to add, default addSum = 1
% nStop             stop after nStop steps (avoid infinite loop) 
%                   default nStop = 1000
% OUTPUT
% n              	Final value (n=1)
% ______________________________________________________________________________
% Copyright (C) 2019 Edgar Guevara, PhD
% ______________________________________________________________________________
if n >= 2 && isreal(n)
    % Handle optional inputs
    % only want 1 optional input at most
    numVarArgs = length(varargin);
    if numVarArgs > 4
        error('collatz:TooManyInputs', ...
            'requires at most 4 optional inputs: modNum, multFac, addSum, nStop');
    end
    
    % set defaults for optional inputs ()
    optArgs = {2, 3, 1, 1000};
    
    % now put these defaults into the optArgs cell array,
    % and overwrite the ones specified in varargin.
    optArgs(1:numVarArgs) = varargin;
    
    % Place optional args in memorable variable names
    modNum      = optArgs{1};
    multFac     = optArgs{2};
    addSum      = optArgs{3};
    nStop       = optArgs{4};
    nIter       = nStop;
    
    % Main loop
    while n~= 1 && nStop > 0
        if mod(n,modNum) > 0
            n = multFac*n + addSum;
        else
            n = n/modNum;
        end
        nStop = nStop - 1;
        fprintf('#%d: %d\n', nIter - nStop, n)
    end
else
    fprintf('Input number %d must be real and >= 2!\n', n)
end

% EOF
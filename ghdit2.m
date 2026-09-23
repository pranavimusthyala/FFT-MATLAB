clc;
clear;
close all;

% DIT-FFT (Decimation in Time Fast Fourier Transform)

% Input sequence
x = [1 2 3 4 4 3 2 1];

% Number of samples
N = length(x);

% Check whether N is a power of 2
if mod(log2(N),1) ~= 0
    error('N must be a power of 2');
end

% Bit-reversal of input
x = bitrevorder(x);

% Number of stages
stages = log2(N);

% DIT-FFT computation
for stage = 1:stages

    % Size of each butterfly group
    M = 2^stage;

    % Twiddle factor
    W_M = exp(-1j * 2 * pi / M);

    % Process each group
    for k = 1:M:N

        W = 1;

        % Butterfly operations
        for j = 0:(M/2-1)

            index1 = k + j;
            index2 = k + j + M/2;

            % Butterfly
            T = W * x(index2);

            x(index2) = x(index1) - T;
            x(index1) = x(index1) + T;

            % Update twiddle factor
            W = W * W_M;
        end
    end
end

% Display DIT-FFT output
disp('Input Sequence:');
disp([1 2 3 4 4 3 2 1]);

disp('DIT-FFT Output:');
disp(x);

% Plot magnitude spectrum
f = 0:N-1;

figure;
stem(f, abs(x), 'filled');
xlabel('Frequency Index');
ylabel('Magnitude');
title('DIT-FFT Magnitude Spectrum');
grid on;

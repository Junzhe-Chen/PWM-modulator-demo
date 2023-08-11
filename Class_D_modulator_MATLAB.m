%% Initialise
clear all;
close all;
clc;

%% Sine wave (as the I/P signal) generation

% Parameters
sineFrequency = 1; % Frequency in Hz Default set as standard 1kHz
sineNumPoints = 20000; % Number of data points
sineSamplingRate = 1000* sineFrequency; % Sampling rate in Hz, 1000 points per cycle
t = (0:sineNumPoints-1) / sineSamplingRate;% Define time axis

sineAmplitude = 0.5; % Amplitude of Sine wave
sineWaveSignal = sineAmplitude * sin(2 * pi * sineFrequency * t); % Sine wave output

% Modulating multiplier is set as the ratio between the input signal
% frequency and the modulated signal frequency. In my opinion rather than
% setting two frequencies (both input sine wave and the modulation
% trianglar wave), that is a better idea coz the input is in the range from
% 20Hz to 20kHz
modulatingMultiplier = 100; 

% % Plot the sine wave
% plot(t, sineWaveSignal);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Discrete Sine Wave');
% grid on;

%% Sawtooth wave generation
% Parameters
sawtoothFrequency = modulatingMultiplier * sineFrequency; % Frequency in Hz
sawtoothNumPoints = sineNumPoints; % Number of data points, sync with the datapoint for I/P signal
sawtoothSamplingRate = sineSamplingRate; % Sampling rate in Hz, sync with the sampling rate for I/P signal
t = (0:sawtoothNumPoints-1) / sawtoothSamplingRate; % Define time axis

% Generate the sawtooth wave
sawtoothAmplitude = 1; % Amplitude of the sawtooth wave
sawtoothWaveReference = sawtoothAmplitude * sawtooth(2 * pi * sawtoothFrequency * t, 1);

% % Plot the sawtooth wave
% plot(t, sawtoothWaveReference);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Discrete Sawtooth Wave');
% grid on;

%% Testbench, plotting sine and sawtooth wave in one graph
% plot(t, sineWaveSignal);
% hold on;
% plot(t, sawtoothWaveReference);
% hold off;
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Discrete Sine Wave');
% grid on;

%% Class D modulation of the sine wave
outputVal = zeros(1,20000);
 for i = 1:1:20000
     if sawtoothWaveReference(i) <= sineWaveSignal(i)
         outputVal(i) = 1;
     else
         outputVal(i) = -1;
     end
 end

 %% Drawing out the figure
 figure();
plot(t, sawtoothWaveReference)
hold on;
plot(t, sineWaveSignal)
hold on;
plot(t, outputVal, 'LineWidth',2)
hold off;
grid on

%% PWM and filtering results
figure();
plot(t,outputVal,'LineWidth',1,'Color','cyan')

lowpass_output = lowpass(outputVal, 0.01);
second_lowpass_output = lowpass(lowpass_output, 0.01);
mean_output = movmean(lowpass_output,500);

hold on;
plot(t, mean_output,'LineWidth',3,'Color','blue')
hold off;

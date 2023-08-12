# PWM-modulator-demo
A PWM modulator demo written in MATLAB uses the figure to demonstrate the PWM (Class D) modulation process of a sine wave.

I uploaded the MATLAB script file (.m); it might have some minor issues, and I will fix them later. Also, I am considering making a MATLAB live script (.mlx) with sliders that you can tweak around during the demo session. I will commit the file as soon as I finish coding it. 

In the program, there are five plots, namely:

- Figure of sine wave input
![Sine wave input](https://github.com/Junzhe-Chen/PWM-modulator-demo/assets/141964509/7a373d59-a91a-42a1-929f-8a713f9425f6)

- Figure of sawtooth wave reference
![Sawtooth wave reference](https://github.com/Junzhe-Chen/PWM-modulator-demo/assets/141964509/2fdb3283-6568-43dd-9b59-be4cf7ea41be)

- Figure that contains the input signal, reference sawtooth waveform and output PWM that shows the modulation process
![PWM modulation plot](https://github.com/Junzhe-Chen/PWM-modulator-demo/assets/141964509/5e7a755f-5b6b-483b-a5b0-c2df8f0a6736)
  
- Figure of the output filter process
![Filtered output waveform](https://github.com/Junzhe-Chen/PWM-modulator-demo/assets/141964509/bcb0a2fa-6e99-44be-8432-912abf14f766)

- Figure that compares the difference between the input signal and the filtered output signal
![difference between input and output](https://github.com/Junzhe-Chen/PWM-modulator-demo/assets/141964509/bf7dfc00-b015-4499-95e2-57093bdb5a39)

Ver. 1.2 Update: I redesign that program in live editor, it looks like this:

![Live editor UI](https://github.com/Junzhe-Chen/PWM-modulator-demo/assets/141964509/954c1bb6-6da2-4502-88c9-95d94bf0eab7)

Now the following parameters can be changed by tweaking sliders:

- Frequency of the input sine wave
- period of the sine wave that is being displayed
- modulation multiplier

Have fun playing around!

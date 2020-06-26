function plotsound(y,Fs)
waitTime = .1;
samples = ceil(Fs*waitTime);
figure, hold on, xlim([0 length(y)]), ylim([.9*min(y) 1.1*max(y)])
        title('Audio sample')
sound(y,Fs)
    for i = 1:samples:length(y)-samples
        plot(i:i+samples,y(i:i+samples),'b')
        pause(waitTime)
    end
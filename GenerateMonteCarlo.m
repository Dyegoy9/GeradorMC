function GenerateMonteCarlo(Server)
    DIR = pwd();

    cd('GerarSinaisMonteCarlo')

    if ~Server
        fprintf('Generating simulated signals for GP\n')
    end
    prepareSignals(Server)
    prepareSignalsCurve(Server)

    if ~Server
        fprintf('Generating simulated signals with multiples SNR\n')
    end
    if ~Server
        fprintf('Preparing real EEG data\n')
    end
end

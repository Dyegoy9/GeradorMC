clear;clc;close;
Server = true;
DeleteMonteCarloData = false;
    %Gera os diretórios necessários e faz backup do experimento anterior
    if DeleteMonteCarloData
        if isdir('MC')
            rmdir('MC','s');
        end
    end
    try
        mkdir('MC')
    catch
        
SNR = -20:0.5:-10;
parfor i = SNR
    GenerateMonteCarlo(Server,i);
end
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
    end        
    GenerateMonteCarlo(Server);
exit()

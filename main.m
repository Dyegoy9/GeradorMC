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
        mkdir('MC');
        mkdir('MC_curva');
    catch
    end        
    GenerateMonteCarlo(Server);
exit()

function [] = main()

% /usr/local/MATLAB/R2017a/bin/matlab -nodisplay -nosplash -nodesktop open matlab in terminal;
% apenas um teste para as funções que já estão implementadas
zlRET = [2, 10];
zlPOL = calculePolar(zlRET(1), zlRET(2));

zaRET = [150, 0];
zaPOL = calculePolar(zaRET(1), zaRET(2));

zbRET = [150, -265.39];
zbPOL = calculePolar(zbRET(1), zbRET(2));

zcRET = [150, 133.04];
zcPOL = calculePolar(zcRET(1), zcRET(2));


totalZARET = emSerie(zlRET, zaRET);
totalZBRET = emSerie(zlRET, zbRET);
totalZCRET = emSerie(zlRET, zcRET);

totalZAPOL = calculePolar(totalZARET(1), totalZARET(2));
totalZBPOL = calculePolar(totalZBRET(1), totalZBRET(2));
totalZCPOL = calculePolar(totalZCRET(1), totalZCRET(2));


admZA = calculeAdmitancia(totalZAPOL(1), totalZAPOL(2));
admZB = calculeAdmitancia(totalZBPOL(1), totalZBPOL(2));
admZC = calculeAdmitancia(totalZCPOL(1), totalZCPOL(2));
 

var = calcularTensoes("abc", 380, 0);


calculeVNN(var, admZA, admZB, admZC)

end
function [] = main()

zlRET = [2, 10];
zlPOL = calculePolar(zlRET(1), zlRET(2))

zaRET = [150, 0];
zaPOL = calculePolar(zaRET(1), zaRET(2))

zbRET = [150, -265,39];
zbPOL = calculePolar(zbRET(1), zbRET(2))

zcRET = [150, 133,04];
zcPOL = calculePolar(zcRET(1), zcRET(2))




totalZARET = emSerie(zlRET, zaRET);

totalZAPOL = calculePolar(totalZARET(1), totalZARET(2));

admZA = calculeAdmitancia(totalZAPOL(1), totalZAPOL(2))





end
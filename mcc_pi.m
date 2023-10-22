function [tocke_krog, tocke_kvadrat,x,y] = mcc_pi(tocke)

    x = 2 * rand(1, 10000) - 1;
    y = 2 * rand(1, 10000) - 1;

    razdalje = sqrt(x.^2 + y.^2);
    tocke_krog = (razdalje <= 1);


    tocke_kvadrat = true(1, tocke);
end
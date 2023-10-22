
tocke = 10000; 


[tocke_krog, tocke_kvadrat,x,y] = mcc_pi(tocke);


[approx_pi, pi_napaka] = area_pi(tocke_krog, tocke);


fprintf('Približna vrednost π: %f\n', approx_pi);
fprintf('Napaka: %f\n', pi_napaka);


lok = @(alfa) [cos(alfa); sin(alfa)];



figure;
plot(x(tocke_kvadrat), y(tocke_kvadrat), 'k.'); 
hold on;
plot(x(tocke_krog), y(tocke_krog), 'm.'); 
al = 0:0.01:2*pi; 
lok_tocke = lok(al);
plot(lok_tocke(1, :), lok_tocke(2, :), 'k-', 'LineWidth', 2); 
axis equal;


function [approx_pi, pi_napaka] = area_pi(tocke_krog, tocke)
    
    approx_pi = 4 * sum(tocke_krog) / tocke;
    
   
    pi_napaka = abs(approx_pi - pi);

end
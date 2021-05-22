n=100;
imat=1;
% nombre d'itérations max pour atteindre la convergence
maxit = 100;

% on génère la matrice (1) ou on lit dans un fichier (0)
genere = 1;

% méthode de calcul
v = 0; % subspace iteration v0

% nombre de valeurs propres cherchées (v0)
m = 10;
for imat=1:4
    figure;
    [A,D,info]=matgen_csad(imat,n);
    c=D
    for i=1:n
        c(i)=sum(D(1:i))/sum(D);
    end
    plot(c);
    str=sprintf("imat= %d", imat);
    title(str);
    xlabel(' valeur propre de A')
    ylabel('contraste')
end
    

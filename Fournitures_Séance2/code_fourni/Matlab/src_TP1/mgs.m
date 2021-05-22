%--------------------------------------------------------------------------
% ENSEEIHT - 1SN - Calcul scientifique
% TP1 - Orthogonalisation de Gram-Schmidt
% mgs.m
%--------------------------------------------------------------------------

function Q = mgs(A)

    % Recuperation du nombre de colonnes de A
    [~, m] = size(A);
    
    % Initialisation de la matrice Q avec la matrice A
    Q = A;
    
    %------------------------------------------------
    % A remplir
    % Algorithme de Gram-Schmidt modifie
    %------------------------------------------------
    for i=1:size(A,2)
        y=A(:,i);
        for j=1:i-1
            y=y-Q(:,j)'*y*Q(:,j);
        end
        normey=sqrt(y'*y);
        Q(:,i)=y/normey;
    end 
end
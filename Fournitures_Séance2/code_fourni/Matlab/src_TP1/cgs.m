%--------------------------------------------------------------------------
% ENSEEIHT - 1SN - Calcul scientifique
% TP1 - Orthogonalisation de Gram-Schmidt
% cgs.m
%--------------------------------------------------------------------------

function Q = cgs(A)

    % Recuperation du nombre de colonnes de A
    [~, m] = size(A);
    
    % Initialisation de la matrice Q avec la matrice A
    Q = A;
    
    %------------------------------------------------
    % A remplir
    % Algorithme de Gram-Schmidt classique
    %------------------------------------------------
    
    for i=1:size(A,2)
        S=0;
      
        
        for j=1:i-1
            
            S=S+Q(:,j)'*A(:,i)*Q(:,j);
        end
        S=Q(:,1:i-1)*(Q(:,1:i-1)'*A(:,i));
        y=A(:,i)-S;
        normey=sqrt(y'*y);
        Q(:,i)=y/normey;
    end 
end
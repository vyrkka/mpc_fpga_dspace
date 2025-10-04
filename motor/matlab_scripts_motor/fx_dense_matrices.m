% Función para generar las matrices de Acal*x_0 + Ocal*vec{u}
% Acal = [   A
%            A^2
%            .
%            .
%            A^(N)]
%        
% Ocal = [   B
%            AB          B
%            .           .        .
%            A^(N-1)B    A^(N-2)B . . . B]       
function [E,F] = fx_dense_matrices(A,B,N)
    E=[]; F=[];  
    for i=1:1:N
        AB=[];
        E=[E;A^i];
        for j=1:1:i 
            AB=[AB,A^(i-j)*B]; 
        end
        Fl=[AB,zeros(size(AB,1),N-i)];
        F=[F;Fl];
    end
end
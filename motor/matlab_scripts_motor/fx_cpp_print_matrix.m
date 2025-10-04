%% 
% ===============================================================================
% Alfonso Cortes Neira - Universidad Técnica Federico Santa María
% 06-09-2023
% ===============================================================================​
function fx_cpp_print_matrix(txtfileID, A, def_string, n, m)
    if (nargin == 5)
        fprintf(txtfileID, "\n" + def_string +" =\t{{");
        for row = 1:(n-1)
            fprintf(txtfileID, '%.15e, ', A(row,1:(m-1)));
            fprintf(txtfileID, '%.15e},\n\t\t\t\t\t {', A(row,m));
        end
        fprintf(txtfileID, '%.15e, ', A(n,1:(m-1)));
        fprintf(txtfileID, '%.15e}};\n\n', A(n,m));
    else
        fprintf(txtfileID, def_string +' =\t{');
        fprintf(txtfileID, '%.15e, ', A(1:(n-1)));
        fprintf(txtfileID, '%.15e};\n\n', A(n));
    end
end
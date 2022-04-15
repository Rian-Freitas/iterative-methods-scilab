function [x_k, norm_diff, k, norm_resid]=GaussSeidel_com_inversa(A, b, x_0, E, M, tipo_norm)
    L = tril(A, -1)
    D = diag(diag(A))
    U = triu(A, 1)
    
    k = 0
    x_j = x_0
    x_k = x_0
    norm_diff = 1
    
    LD_inv = inv(L + D)
    
    while norm_diff > E && k < M
        x_k = -LD_inv*U*x_j + LD_inv*b
        norm_diff = norm(x_k - x_j, tipo_norm)
        x_j = x_k
        k = k + 1 
    end
    
    norm_resid = norm(b - A*x_k, tipo_norm)
endfunction

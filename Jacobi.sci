
function [x_k, norm_diff, k, norm_resid]=Jacobi(A, b, x_0, E, M, tipo_norm)
    L = tril(A, -1)
    D = diag(diag(A))
    U = triu(A, 1)
    
    D_inv = diag(1./diag(A))
    
    k = 0
    x_j = x_0 // valores iniciais só para conseguir começar o loop
    x_k = x_0
    norm_diff = 1 // valor escolhido meramente para ser maior que E, para começar o loop

    while norm_diff > E && k < M
        x_k = -D_inv*(L + U)*x_j + D_inv*b
        norm_diff = norm(x_k - x_j, tipo_norm)
        x_j = x_k
        k = k+1  
    end
    
    norm_resid = norm(b - A*x_k, tipo_norm)
endfunction

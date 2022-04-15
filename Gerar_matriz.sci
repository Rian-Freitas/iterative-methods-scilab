function [A, b]= gerar_matriz(n)
    A = eye(n, n)
    A_1 = 1.+A
    
    fator_soma = sum(A_1 - diag(diag(A_1)))/n - 1
    
    A_2 = A_1 + eye(n, n)*fator_soma
    A = A_2
    
    valor_b = sum(A(1,:))
    
    b = ones(n,1)*valor_b
endfunction

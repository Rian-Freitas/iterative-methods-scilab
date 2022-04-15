# Iterative Methods in Scilab

A sort of functions in Scilab so as to execute the iterative methods for sparse linear systems.

![image](https://user-images.githubusercontent.com/85463854/163596720-cf957b47-8362-4144-965b-0a89e85c2f1d.png)

There are four functions avaiable to be tested:

- Jacobi(A, b, E, x_0, M, tipo_norm): A function that reproduce in Scilab the Jacobi's iterative method for sparse liear systems.
- GaussSeidel(A, b, E, x_0, M, tipo_norm): A function that reproduce in Scilab the Gauss-Seidel's iterative method for sparse liear systems. In this case, it was not used the function inv() in order to optimize the execution.
- GaussSeidel_com_inversa(A, b, E, x_0, M, tipo_norm): The same as the previous one but it was used the function inv() for comparative tests.
- Gerar_matriz(n): The function that creates n x n A matrix and n x 1 b matrix so that the iterative methods can be tested.

The arguments used in the functions:

- A: the coefficient matrix.
- b: the matrix with the independent term of each equation.
- x_0: a matrix with inicial values so that the iteration can start.
- E: the tolerance of the difference norm between x(k) and x(k-1).
- M: The maximum of iterations for the function to stop.
- tipo_norm: the type of norm desirable for the functions (Suggested: 1, 2 our %inf)

Created by Rian Freitas da Silva

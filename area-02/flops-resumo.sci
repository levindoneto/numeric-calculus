/**[Q1]
   Sendo:
   A uma matriz 10x33 (M x N)
   B uma matriz 33x30 (N x P)
   quantos flops são necessários para calcular A.B (produto escalar)
>>> (2N-1) * M * P
************************************************************************/


/** [Q2]
 *  Quantos flops (+,-,*,/) são necessários no algoritmo
 *    S=0 
 *    for k=1:29
 *        S=S+A(k,1:k)*A(1:k,k) 
 *    end 
 */
k=1:29
a=k.*2
numero_flops=sum(k.*2)
/***********************************************************************/


/** Flops de * e / APENAS
S=0
for k=1:158
    for j=1:158
        S = S+A(k:k+2,j:j+2)*B(1:3,1:3)
    end
end
k=158
j=158

S= A(1:158,
     1:160)
   A = [1 1 1]
   B(1 1 1,
     1 1 1
     1 1 1)
160*3*2*160

iteracao   M_B  Operacoes de multiplicao no B
158*158  * 3*3 * 3                           = 674028

k=158 (linhas)
j=158 (colunas)
	B(a b c
          d e f
          g h i)
	3->linhas de B
        3->colunas de B
	[A(1)*B(1) + A(2)*B(2) + A(3)*B(3)] -> Maximo pro B -> 3 multiplicacoes



/***********************************************************************/
/** [Q4]
x: vetor com 183 elementos
Quantos flops em y = (3-5*x)./(x.*x+1)?

5 operacoes * 183 = 915 flops
************************************************************************/





set Compartimento;   # conjunto de tanques 
set Produto;         # conjunto de produtos 
/* set Caminhao;  */       # conjunto de caminhões 

#definição dos paramentros
param capacidade{Compartimento};  # capacidade de cada tanque
param demanda{Produto};           # demanda de cada produto 
param produto_adicional{Produto}; # preço de transporte em cada tanque (litros)

#definição das variaveis 
var x{Produto, Compartimento},integer >= 0;  # quantidade de litros (em milhar) do produto i no compartimento j
var y{Produto, Compartimento}, binary;       # 1 se o produto usar compartimento e 0 se não.

#restrições
s.t. uso_comp_{t in Compartimento, p in Produto}: x[p, t] <= y[p, t]*capacidade[t]; 
s.t. um_prod_por_comp{t in Compartimento}: sum{p in Produto} y[p, t] <= 1;
s.t. som_todos_compart{p in Produto}: sum{t in Compartimento} x[p, t] = demanda[p]; 

#função objetiva
minimize Z: sum{i in Produto, j in Compartimento} x[i, j] * produto_adicional[i]; 
 
data;

set Compartimento := C11, C21, C31, C41, C51, C12, C22, C32, C42, C52, C13, C23, C33, C43, C53, C14, C24, C34, C44, C54, CE1, CE2, CE3, CE4 ;
set Produto := P1, P2, P3, P4;
param capacidade := 
C11 500
C21 750
C31 1200
C41 1500
C51 1750
C12 500
C22 750
C32 1200
C42 1500
C52 1750
C13 500
C23 750
C33 1200
C43 1500
C53 1750
C14 500
C24 750
C34 1200
C44 1500
C54 1750
CE1 100000
CE2 100000
CE3 100000
CE4 100000;
param demanda := 
P1 10000
P2 15000 
P3 12000
P4 8000;
param produto_adicional :=
P1 0.05
P2 0.12
P3 0.08
P4 0.10;

end;

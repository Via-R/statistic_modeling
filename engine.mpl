
                            restart;

                     writeto("output.txt");
             Scoloneqreaddata("s.txt",float, 3)[1];
X1coloneqS[1];  X2coloneqS[2];  TcoloneqS[3];    Y_strcoloneq

  parse(readdata("y.txt",string, 3)[1][1], statement);  ycoloneq

  unapply(Y_str,x1,x2,t);  y(0,0,42);  
                                /         2                     
                                | PartialD                 2    
     ccoloneq1;  Lcolonequnapply|----------- y(x1,x2,t) - c sdot
                                |          2                    
                                \PartialD t                     

  /         2                       2             \        \    
  | PartialD                PartialD              |        |    
  |------------ y(x1,x2,t)+------------ y(x1,x2,t)|,x1,x2,t|;  u
  |           2                       2           |        |    
  \PartialD x1             PartialD x2            /        /    

  coloneq(x1,x2,t)srarrL(x1,x2,t);  u(0.5,0.5,0.5);    Gcoloneq(

                        /               2   2   
  x1,x2,t)srarrpiecewise|csdottuminus0x1 +x2 >0,
                        |                       
                        \                       

                  1                   \    /  1    \             
  ----------------------------------,0|;  G|0,-,0.3|;  y(1,1,1); 
                  / 2 2   /  2   2\\  |    \  5    /             
  Pisdot2sdotcsdot\c t  - \x1 +x2 //  /                          

   u(12,uminus01,12);      

                                 
#with(plots):  #animate3d(y(x1,x2,t),x1=uminus0X1..X1,x2=uminus0

  X2..X2,t=0..1,color=sin(x1sdotx2));
                                   /[[1 1  ] [1 1  ] [1 1  ] [1 1
#￐﾿￐ﾾ￑ﾇ￐ﾰ￑ﾂ￐ﾺ￐ﾾ￐ﾲ￑ﾖ ￑ﾃ￐ﾼ￐ﾾ￐ﾲ￐ﾸ  Y0rlcoloneqMatrix|[[-,-,0],[-,-,0],[-,-,0],[-,-
                                   \[[2 2  ] [3 3  ] [4 4  ] [5 5

    ] [1 1  ]]\                                                  
  ,0],[-,-,0]]|; L0coloneq5;  Y0icoloneqVector(5):  for i from 1 
    ] [6 6  ]]/                                                  

  to 5 do:  Y0i[i]coloneqy(Y0rl[i,1],Y0rl[i,2],Y0rl[i,3]);od;
                                  /[[1   1] [    1] [  1 1] [1   
#￐ﾳ￑ﾀ￐ﾰ￐ﾽ￐ﾸ￑ﾇ￐ﾽ￑ﾖ ￑ﾃ￐ﾼ￐ﾾ￐ﾲ￐ﾸ  YGrlcoloneqMatrix|[[-,1,-],[0,0,-],[0,-,-],[-,0,
                                  \[[2   7] [    2] [  3 5] [2   

  1] [  1 1]]\                                                   
  -],[0,-,-]]|;   LGcoloneq5;  YGicoloneqVector(5):  for i from 1
  4] [  2 8]]/                                                   

   to 5 do:  YGi[i]coloneqevalf(y(YGrl[i,1],YGrl[i,2],YGrl[i,3]))

  ;od;  
                /[[1 1         ] [1 1         ]]\                
Sm0coloneqMatrix|[[-,-,uminus01],[-,-,uminus02]]|;  M0coloneq2;  
                \[[2 2         ] [3 3         ]]/                

                  /[[        1] [             1]]\              
  SmGcoloneqMatrix|[[1.1,1.5,-],[uminus00.5,2,-]]|;  MGcoloneq2;
                  \[[        2] [             2]]/              
;

yIcoloneq0;  for i1 from 1 to 10 do  for i2 from 1 to 10 do   for

                                          /      2   /    2     2
                                          | 2/i3\    |/i1\  /i2\ 
   i3 from 1 to 10 do  yI1coloneqpiecewise|c |--|  - ||--| +|--| 
                                          |  \10/    \\10/  \10/ 
                                          |                      
                                          |                      
                                          \                      

  \    
  |    
  |ne0,
  /    

                                   1                                 
  -------------------------------------------------------------------
                  /              2   /             2              2\\
                  | 2/        i3\    |/         i1\  /         i2\ ||
  Pisdot2sdotcsdot|c |tuminus0--|  - ||x1uminus0--| +|x2uminus0--| ||
                  \  \        10/    \\         10/  \         10/ //

                            \                                    
       /i1 i2 i3\           |                                    
  sdotL|--,--,--|sdot0.001,0|;  yIcoloneqyI+yI1:  od;  od;  od;  
       \10 10 10/           |                                    
                            |                                    
                            |                                    
                            /                                    

  yInfcolonequnapply(yI,x1,x2,t):  evalf(yInf(0,0.65,0.3));
Y0coloneqVector(L0);  for l from 1 to L0 do:  Y0[l]coloneqY0i[l]

   - evalf(yInf(Y0rl[l,1],Y0rl[l,2],Y0rl[l,3]));  od;
YGcoloneqVector(LG);  for l from 1 to LG do:  YG[l]coloneqYGi[l]

   - evalf(yInf(YGrl[l,1],YGrl[l,2],YGrl[l,3]));  od;
YbarcoloneqVector(L0+LG):  for i from 1 to L0 do:  Ybar[i]coloneq

  Y0[i];  od;  for i from 1 to LG do:  Ybar[L0+i]coloneqYG[i];  

  od;
A11coloneqMatrix(L0,M0):  AcoloneqMatrix(L0+LG,M0+MG):  for i 

  from 1 to L0 do:  for j from 1 to M0 do:  A11[i,j]coloneqevalf(

  G(Y0rl[i,1] - Sm0[j,1],Y0rl[i,2] - Sm0[j,2],Y0rl[i,3] - Sm0[j,3

  ]));  A[i,j]coloneqA11[i,j];  od;  od;  A11;
A12coloneqMatrix(L0,MG):  for i from 1 to L0 do:  for j from 1 to

   MG do:  A12[i,j]coloneqevalf(G(Y0rl[i,1] - SmG[j,1],Y0rl[i,2]

   - SmG[j,2],Y0rl[i,3] - SmG[j,3]));  A[i,j+M0]coloneqA12[i,j]; 

   od;  od;  icoloneq2;jcoloneq1;   A12[i,j]coloneqevalf(G(Y0rl[i

  ,1] - SmG[j,1],Y0rl[i,2] - SmG[j,2],Y0rl[i,3] - SmG[j,3]));  

  A12;
A21coloneqMatrix(LG,M0):  for i from 1 to LG do:  for j from 1 to

   M0 do:  A21[i,j]coloneqevalf(G(YGrl[i,1] - Sm0[j,1],YGrl[i,2]

   - Sm0[j,2],YGrl[i,3] - Sm0[j,3]));  A[L0+i,j]coloneqA21[i,j]; 

   od;  od;  A21;
A22coloneqMatrix(LG,MG):  for i from 1 to LG do:  for j from 1 to

   MG do:  A22[i,j]coloneqevalf(G(YGrl[i,1] - SmG[j,1],YGrl[i,2]

   - SmG[j,2],YGrl[i,3] - SmG[j,3]));  A[i+L0,j+M0]coloneqA22[i,j

  ];  od;  od;  A22;
                               A;
# Псевдообернена:
     with(LinearAlgebra);  AtcoloneqMultiply(Transpose(A),

       MatrixInverse(Multiply(A,Transpose(A))));  
                ufinalcoloneqMultiply(At,Ybar);
u0coloneqVector(M0);  y0coloneq0;  for i from 1 to M0 do:  u0[i]

  colonequfinal[i];   od;  for i from 1 to M0 do:  y0coloneqy0+G

  (x1 - Sm0[i,1],x2 - Sm0[i,2],t - Sm0[i,3])sdotu0[i]:  od:  #

  y0￢ﾉﾔunapply(y0,x1,x2,t);  
uGcoloneqVector(MG);  for i from 1 to MG do:  uG[i]colonequfinal

  [M0+i];  od;  yGcoloneq0;  for i from 1 to MG do:  yGcoloneqyG+

  G(x1 - SmG[i,1],x2 - SmG[i,2],t - SmG[i,3])sdotuG[i]:  od: #

   yG￢ﾉﾔunapply(yG,x1,x2,t);  
                     /(evalf(yInf(x1,x2,t)+y0+yG))        \   
 yfinalcolonequnapply|----------------------------,x1,x2,t|;  
                     \             1                      /   

   yfinal;
 #animate3d(yfinal(x1,x2,t),x1=uminus0X1..X1,x2=uminus0X2..X2,t=0

  ..1,color=sin(x1sdotx2));



restart;
writeto(terminal);
NULL;
S := readdata("s.txt", float, 3)[1];
X1 := S[1];
X2 := S[2];
T := S[3];
Y_str := parse(readdata("y.txt", string, 3)[1][1], statement);
y := unapply(Y_str, x1, x2, t);
y(0, 0, 42);
L_str := parse(readdata("L_eq.txt", string, 100)[1][1], statement);
G_str := parse(readdata("G.txt", string, 100)[1][1], statement);
c := 1;
L := unapply(L_str, x1, x2, t);
u := (x1, x2, t) -> L(x1, x2, t);
G := unapply(G_str, x1, x2, t);
;
u(0.5, 0.5, 0.5);
G(0, 1/5, 0.3);
y(0, 0, 42);

plotsetup(maplet);
with(plots);
animate3d(y(x1, x2, t), x1 = -X1 .. X1, x2 = -X2 .. X2, t = 0 .. 1, color = sin(x1*x2));
Y0rl := Matrix([[1/2, 1/2, 0], [1/3, 1/3, 0], [1/4, 1/4, 0], [1/5, 1/5, 0], [1/6, 1/6, 0]]);
L0 := 5;
Y0i := Vector(5);
for i to 5 do
    Y0i[i] := y(Y0rl[i, 1], Y0rl[i, 2], Y0rl[i, 3]);
end do;
YGrl := Matrix([[1/2, 1, 1/7], [0, 0, 1/2], [0, 1/3, 1/5], [1/2, 0, 1/4], [0, 1/2, 1/8]]);
LG := 5;
YGi := Vector(5);
for i to 5 do
    YGi[i] := evalf(y(YGrl[i, 1], YGrl[i, 2], YGrl[i, 3]));
end do;
Sm0 := Matrix([[1/2, 1/2, -1], [1/3, 1/3, -2]]);
M0 := 2;
SmG := Matrix([[1.1, 1.5, 1/2], [-0.5, 2, 1/2]]);
MG := 2;

yI := 0;
for i1 to 10 do
    for i2 to 10 do for i3 to 10 do yI1 := piecewise(c(i3/10)^4 + (-(i1/10)^2 - (i2/10)^2) <> 0, 0.001*1/(2*Pi*c*(c(t - i3/10)^4 + (-(x1 - i1/10)^2 - (x2 - i2/10)^2)))*L(i1/10, i2/10, i3/10), 0); yI := yI + yI1; end do; end do;
end do;
yInf := unapply(yI, x1, x2, t);
evalf(yInf(0, 0.65, 0.3));
Y0 := Vector(L0);
for l to L0 do
    Y0[l] := Y0i[l] - evalf(yInf(Y0rl[l, 1], Y0rl[l, 2], Y0rl[l, 3]));
end do;
YG := Vector(LG);
for l to LG do
    YG[l] := YGi[l] - evalf(yInf(YGrl[l, 1], YGrl[l, 2], YGrl[l, 3]));
end do;
Ybar := Vector(L0 + LG);
for i to L0 do
    Ybar[i] := Y0[i];
end do;
for i to LG do
    Ybar[L0 + i] := YG[i];
end do;
A11 := Matrix(L0, M0);
A := Matrix(L0 + LG, M0 + MG);
for i to L0 do
    for j to M0 do A11[i, j] := evalf(G(Y0rl[i, 1] - Sm0[j, 1], Y0rl[i, 2] - Sm0[j, 2], Y0rl[i, 3] - Sm0[j, 3])); A[i, j] := A11[i, j]; end do;
end do;
A11;
A12 := Matrix(L0, MG);
for i to L0 do
    for j to MG do A12[i, j] := evalf(G(Y0rl[i, 1] - SmG[j, 1], Y0rl[i, 2] - SmG[j, 2], Y0rl[i, 3] - SmG[j, 3])); A[i, j + M0] := A12[i, j]; end do;
end do;
i := 2;
j := 1;
A12[i, j] := evalf(G(Y0rl[i, 1] - SmG[j, 1], Y0rl[i, 2] - SmG[j, 2], Y0rl[i, 3] - SmG[j, 3]));
A12;
A21 := Matrix(LG, M0);
for i to LG do
    for j to M0 do A21[i, j] := evalf(G(YGrl[i, 1] - Sm0[j, 1], YGrl[i, 2] - Sm0[j, 2], YGrl[i, 3] - Sm0[j, 3])); A[L0 + i, j] := A21[i, j]; end do;
end do;
A21;
A22 := Matrix(LG, MG);
for i to LG do
    for j to MG do A22[i, j] := evalf(G(YGrl[i, 1] - SmG[j, 1], YGrl[i, 2] - SmG[j, 2], YGrl[i, 3] - SmG[j, 3])); A[i + L0, j + M0] := A22[i, j]; end do;
end do;
A22;
A;
# Псевдообернена:
with(LinearAlgebra);
At := Multiply(Transpose(A), MatrixInverse(Multiply(A, Transpose(A))));
ufinal := Multiply(At, Ybar);
u0 := Vector(M0);
y0 := 0;
for i to M0 do
    u0[i] := ufinal[i];
end do;
for i to M0 do
    y0 := y0 + G(x1 - Sm0[i, 1], x2 - Sm0[i, 2], t - Sm0[i, 3])*u0[i];
end do;
uG := Vector(MG);
for i to MG do
    uG[i] := ufinal[M0 + i];
end do;
yG := 0;
for i to MG do
    yG := yG + G(x1 - SmG[i, 1], x2 - SmG[i, 2], t - SmG[i, 3])*uG[i];
end do;
yfinal := unapply(evalf(yInf(x1, x2, t) + y0 + yG), x1, x2, t);

save yfinal, "y_final.log";
animate3d(yfinal(x1, x2, t), x1 = -X1 .. X1, x2 = -X2 .. X2, t = 0 .. T, color = sin(x1*x2));


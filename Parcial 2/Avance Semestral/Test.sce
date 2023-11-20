

[L,U]=lu(K);

x = lusolve(L,U,f);

disp(x);

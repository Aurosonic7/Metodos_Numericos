clear();
s=0.05;
Oa=2*%pi;
[fd_ace_abs,SST_ace_abs,Sheetnames_ace_abs,Sheetpos_ace_abs] = xls_open('./acelerabsoluSCTMEXT1_000t00_01d163_84.xls');  
[aa,TextInd_ace_abs] = xls_read(fd_ace_abs,Sheetpos_ace_abs(1));                            
mclose(fd_ace_abs);
Te=1;
tam=max(size(aa));
K=zeros(tam,tam);
for i=1:tam-1
    for j=1:tam
        if i==j    
            if i==1
                K(i,j)=((s*Oa)+(Oa^2*Te)/3);
            else
                K(i,j)=2*((s*Oa)+(Oa^2*Te)/3);
                K(i+1,j)=((s*Oa)+(Oa^2*Te/6));
                K(i,j+1)=((s*Oa)+(Oa^2*Te/6));
            end
        end
    end
end
K(tam,tam)=((s*Oa)+(Oa^2*Te)/3); 
f(1)=(Te/2)*(aa(1));
for i=2:tam-1
    f(i)=(Te)*(aa(i));
end
f(tam)=(Te/2)*(aa(tam));

[L,U]=lu(K);

x = lusolve(L,U,f);

disp(x);





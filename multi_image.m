x=10;
Aspin1=[-1 -1 -1 -1 1 1 -1 -1 -1 -1;
        -1 -1 -1 1 1 1 1 -1 -1 -1;
        -1 -1 1 1 -1 -1 1 1 -1 -1;
        -1 1 1 -1 -1 -1 -1 1 1 -1;
        -1 1 1 1 1 1 1 1 1 -1;
        1 1 1 1 1 1 1 1 1 1;
        1 1 1 -1 -1 -1 -1 1 1 1;
        1 1 -1 -1 -1 -1 -1 -1 1 1;
        1 1 -1 -1 -1 -1 -1 -1 1 1;
        1 1 -1 -1 -1 -1 -1 -1 1 1;]
 
Bspin1=[-1 -1 1 1 1 1 1 -1 -1 -1;
        -1 -1 1 1 -1 -1 1 1 -1 -1;
        -1 -1 1 1 -1 -1 1 1 -1 -1;
        -1 -1 1 1 -1 -1 1 1 -1 -1;
        -1 -1 1 1 1 1 1 -1 -1 -1;
        -1 -1 1 1 1 1 1 -1 -1 -1;
        -1 -1 1 1 -1 -1 1 1 -1 -1;
        -1 -1 1 1 -1 -1 1 1 -1 -1;
        -1 -1 1 1 -1 -1 1 1 -1 -1;
        -1 -1 1 1 1 1 1 -1 -1 -1;]
Cspin1=[-1 -1 1  1 1 1 1 1 1 -1;
        -1  1 1  1 1 1 1 1 1 -1;
        -1  1 1  1 -1 -1 -1 -1 -1 -1;
        -1  1 1 -1 -1 -1 -1 -1 -1 -1;
        -1  1 1 -1 -1 -1 -1 -1 -1 -1;
        -1  1 1 -1 -1 -1 -1 -1 -1 -1;
        -1  1 1 -1 -1 -1 -1 -1 -1 -1;
        -1  1 1  1 -1 -1 -1 -1 -1 -1;
        -1  1 1  1 1 1 1 1 1 -1;
        -1 -1 1  1 1 1 1 1 1 -1;]
 
 
for m1=1:x
for m2=1:x
for n1=1:x
for n2=1:x
 
 
J(m1,n1,m2,n2)=(Aspin1(m1,n1)*Aspin1(m2,n2)+Bspin1(m1,n1)*Bspin1(m2,n2)+Cspin1(m1,n1)*Cspin1(m2,n2))/3;
 
 
end 
end 
end 
end
A2=[-1 -1 -1 -1 -1 -1 -1 -1 -1 -1;
    -1 -1 -1 -1 1 -1 -1 -1 -1 -1;
    -1 -1 -1 1 -1 1 -1 -1 -1 -1;
    -1 -1 1 -1 -1 -1 1 -1 -1 -1;
    -1 -1 1 -1 -1 -1 1 -1 -1 -1;
    -1 1 -1 -1 -1 -1 -1 1 -1 -1;
    -1 1 -1 -1 -1 -1 -1 1 -1 -1;
    1 -1 -1 -1 -1 -1 -1 -1 1 -1;
    1 -1 -1 -1 -1 -1 -1 -1 1 -1;
    1 -1 -1 -1 -1 -1 -1 -1 1 -1;]
B2=[-1 -1 -1 1 1 1 1 -1 1 -1;
    -1 -1 1 -1 -1 -1 1 1 -1 -1;
    -1 -1 1 1 -1 -1 1 1 -1 -1;
    -1 -1 -1 1 -1 -1 1 1 -1 -1;
    -1 -1 1 1 1 1 1 -1 1 -1;
    -1 -1 1 1 1 1 1 -1 1 -1;
    -1 -1 1 1 -1 -1 1 1 -1 1;
    -1 -1 1 1 -1 -1 1 1 1 -1;
    -1 -1 1 1 -1 -1 1 1 -1 -1;
    -1 -1 1 1 1 1 -1 -1 -1 1;]
C2=[-1 -1 1  1 1 1 1 1 -1 -1;
    -1  1 -1  1 1 1 1 1 1 -1;
    -1  1 1  1 -1 -1 -1 -1 -1 -1;
    -1  1 -1 -1 -1 -1 -1 -1 -1 -1;
    -1  1 1 -1 -1 -1 -1 -1 -1 -1;
     1  1 1 -1 -1 -1 -1 -1 1 -1;
    -1  1 1 -1 -1 -1 -1 -1 1 -1;
    -1  1 1  1 -1 -1 -1 -1 -1 -1;
    -1  1 1  1 -1 1 1 1 1 -1;
    -1 -1 1  1 1 1 1 1 1 1;]
 
A1=A2;
B1=B2;
C1=C2;
for it=1:2 
for ll=1:x
for kk=1:x
dE=0;
 
for ii=1:x
for jj=1:x
if (ii~=ll&jj~=kk)
 dE=2*J(ll,kk,ii,jj)*A2(ll,kk)*A2(ii,jj)+dE;
end
end
end
if dE<0
A2(ll,kk)=-A2(ll,kk);
end
subplot(2,1,1)
image((A1)*128);
axis square;colormap bone;
subplot(2,1,2)
image((A2)*128); 
set(gca,'YTickLabel',[],'XTickLabel',[]); 
axis square; colormap bone; drawnow; 
  
end
end
end

for it=1:2 
for ll=1:x
for kk=1:x
dE=0;
 
for ii=1:x
for jj=1:x
if (ii~=ll&jj~=kk)
dE=2*J(ll,kk,ii,jj)*B2(ll,kk)*B2(ii,jj)+dE;
end
end
end
if dE<0
B2(ll,kk)=-B2(ll,kk);
end
subplot(2,1,1)
image((B1)*128);
axis square;colormap bone;
subplot(2,1,2)
image((B2)*128); 
set(gca,'YTickLabel',[],'XTickLabel',[]); 
axis square; colormap bone; drawnow; 
 
 
end
end
end
for it=1:2 
for ll=1:x
for kk=1:x
dE=0;
 
for ii=1:x
for jj=1:x
if (ii~=ll&jj~=kk)
 dE=2*J(ll,kk,ii,jj)*C2(ll,kk)*C2(ii,jj)+dE;
end
end
end
if dE<0
C2(ll,kk)=-C2(ll,kk);
end
subplot(2,1,1)
image((C1)*128);
axis square;colormap bone;
subplot(2,1,2)
image((C2)*128); 
set(gca,'YTickLabel',[],'XTickLabel',[]); 
axis square; colormap bone; drawnow; 
end
end
end

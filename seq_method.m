x=10;
spin1=[-1 -1 -1 -1 1 1 -1 -1 -1 -1;
    -1 -1 -1 1 1 1 1 -1 -1 -1;
    -1 -1 1 1 -1 -1 1 1 -1 -1;
    -1 1 1 -1 -1 -1 -1 1 1 -1;
    -1 1 1 1 1 1 1 1 1 -1;
    1 1 1 1 1 1 1 1 1 1;
    1 1 1 -1 -1 -1 -1 1 1 1;
    1 1 -1 -1 -1 -1 -1 -1 1 1;
    1 1 -1 -1 -1 -1 -1 -1 1 1;
    1 1 -1 -1 -1 -1 -1 -1 1 1;]
 
for m1=1:x
    for m2=1:x
        for n1=1:x
            for n2=1:x
                J(m1,n1,m2,n2)=spin1(m1,n1)*spin1(m2,n2);

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
            image((A2)*128); 
            set(gca,'YTickLabel',[],'XTickLabel',[]); 
            axis square; colormap bone; drawnow; 
        end
    end
end

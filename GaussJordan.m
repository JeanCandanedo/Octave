clc; clear;
matris = [3 4 -9 3;2 4 -8 0;-2 -3 4 -1];
[m,n]=size(matris);
for j=1:m-1
    for b=2:m
        if matris(j,j)==0
            t=matris(1,:);matris(1,:)=matris(b,:);
            matris(b,:)=t;
        end
    end
    for i=j+1:m
        matris(i,:)=matris(i,:)-matris(j,:)*(matris(i,j)/matris(j,j));
    end
end

for j=m:-1:2
    for i=j-1:-1:1
        matris(i,:)=matris(i,:)-matris(j,:)*(matris(i,j)/matris(j,j));
    end  
end

for s=1:m
    matris(s,:)=matris(s,:)/matris(s,s);
    res(s)=matris(s,n);
end
disp('Matris:');
matris
res
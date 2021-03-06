function [ center,U,obj_fcn ] = FCMCluster( data,n,l1,l2,l3 )
%use fcm clustering
%GUI findcluster
%--------------------------------------------------------------------------
[center,U,obj_fcn] = fcm(data,n);
plot3(data(:,l1),data(:,l2),data(:,l3),'o');
maxU=max(U);
for i=1:n
    index=find(U(i,:)==maxU);
    cl=rand(1,3);
    line(data(index,l1),data(index,l2),data(index,l3),'linestyle','none',...
        'marker','*','color',cl);
    hold on
    %plot3(center(i,1),center(i,2),center(i,3),'o','MarkerEdgeColor',...
     %   cl,'MarkerSize',12);
end
end


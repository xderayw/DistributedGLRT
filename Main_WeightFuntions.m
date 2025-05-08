close all;clear;
linestyle={'-+','-*','-o','-d','-s','-<'};
%权值随信噪比增大而增大
K=32;
L=16;
lamda=0:10:5000;
eta=0.5; %0到1之间
lamda_len=length(lamda);
for h=1:lamda_len
    temp1=hypergeom(K+3-L,2,lamda(h)*eta);
    temp2=hypergeom(K+2-L,1,lamda(h)*eta);
    temp3=lamda(h)*(K+2-L)/(K+1-L)*(1-eta);
    weight(h)=temp1/temp2; %temp3*
end
plot(lamda,weight,'linewidth',1.5,'markersize',10);hold on;

% %%权值随参考单元
% K=16:32;
% L=16;
% lamda=5;
% eta=0.5; %0到1之间
% K_len=length(K);
% for h=1:K_len
%     temp1=hypergeom(K(h)+3-L,2,lamda*eta);
%     temp2=hypergeom(K(h)+2-L,1,lamda*eta);
%     temp3=lamda*(K(h)+2-L)/(K(h)+1-L)*(1-eta);
%     weight(h)=temp3*temp1/temp2; %
% end
% plot(K,weight,'linewidth',1.5,'markersize',10);hold on;

% % 权值随快拍数
% K=32;
% L=5:20;
% lamda=5;
% eta=0.5; %0到1之间
% L_len=length(L);
% for h=1:L_len
%     temp1=hypergeom(K+3-L(h),2,lamda*eta);
%     temp2=hypergeom(K+2-L(h),1,lamda*eta);
%     temp3=lamda*(K+2-L(h))/(K+1-L(h))*(1-eta);
%     weight(h)=temp3*temp1/temp2; %
% end
% plot(L,weight,'linewidth',1.5,'markersize',10);hold on;


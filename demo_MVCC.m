clear
clc
% addpath('./data');
addpath('tools')
% 
% load('MSRC-v1.mat');kk = 23; islocal_1 = 1; X_train = X; truth = gnd;
% % load('Number123456'); kk = 20; islocal_1 = 1;
% % load('COIL_20_ZCQ'); kk = 3; islocal_1 = 0;
% num_views  = length(X_train);
% numClust = length(unique(truth));
% n = length(truth);
% 
% A = zeros(n,n,num_views);
% for v = 1:num_views 
% 	A(:,:,v) = Updata_Sv(X_train{v},numClust,kk, islocal_1);
% end
% clearvars -except A num_views numClust truth
% load A_MSRC;
% load A_COIL
load A_Number
numiter = 5;
k = 1;
% t = 0.6:5:100;
t = 0.6;
acc = zeros(length(t),1);
for beta2 = t
% beta2 = 0.6;
    [y,acc(k,1), nmi, Pu, P, R, F, AR,OBJ] = obj_MVCC(A,num_views,numClust,beta2,truth,numiter);
    k = k +1;
end
% plot(OBJ),axis([0 6 min(OBJ)-5 max(OBJ+5)]),xlabel('Iteration number','Interpreter','latex'),ylabel('Objective value')

% k =1;
% figure(1),hold on;plot(t(1:k:end),acc(1:k:end,1)),axis([0 100 0 100]),xlabel('$\beta$','Interpreter','latex'),ylabel('ACC')
% clearvars -except acc t
% save msrc_0_6-5-100
% _________

% % CAN
% nv = size(A,3);
% for v = 1:nv
%     S = A(:,:,v);
%     [~, y] = graphconncomp(sparse(S)); y = y';
%     [acc, nmi, Pu] = ClusteringMeasure(truth, y);
%     AR = RandIndex(truth, y+1);
%     [F,P,R] = compute_f(truth,y);
    fprintf('&%.2f$\\pm$%.2f\n', 100*acc(1),  0);
    fprintf('&%.2f$\\pm$%.2f\n', 100*nmi(1), 0);
    fprintf('&%.2f$\\pm$%.2f\n', 100*Pu(1), 0);
    fprintf('&%.2f$\\pm$%.2f\n', 100*P(1), 0);
    fprintf('&%.2f$\\pm$%.2f\n', 100*R(1), 0);
    fprintf('&%.2f$\\pm$%.2f\n', 100*F(1), 0);
    fprintf('&%.2f$\\pm$%.2f\n', 100*AR(1), 0);
% end
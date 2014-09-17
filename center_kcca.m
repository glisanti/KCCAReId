%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) Copyright 2012-14  Anonymous Authors ICDSC14 #23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [train_a_ker,test_a_ker,train_b_ker,test_b_ker] = center_kcca(train_a_ker,test_a_ker,train_b_ker,test_b_ker)

l =size(train_b_ker, 1);
j = ones(l,1);
test_b_ker = test_b_ker - (ones(size(test_b_ker))*train_b_ker) / l - (test_b_ker*(j*j'))/l +((j'*train_b_ker*j)*ones(size(test_b_ker)))/(l^2);

l =size(train_a_ker, 1);
j = ones(l,1);
test_a_ker = test_a_ker - (ones(size(test_a_ker))*train_a_ker) / l - (test_a_ker*(j*j'))/l +((j'*train_a_ker*j)*ones(size(test_a_ker)))/(l^2);

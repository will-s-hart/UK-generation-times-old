% Import posterior parameter distributions obtained by fitting the
% independent transmission and symptoms model to data from three
% sub-intervals of the study period using data augmentation MCMC, and
% calculate the posterior distribution of the proportion of presymptomatic
% transmissions

clear all; close all; clc;

addpath('../../Data')
addpath('../../Results')
addpath('../../Functions/Indep')

% Load output of MCMC fitting procedure

load('../../Results/Split_data/param_fit_indep_splitdata.mat','theta_mat1','ll_vec1','output1','theta_mat2','ll_vec2','output2','theta_mat3','ll_vec3','output3')

% Calculate posterior distributions of individual model parameters

mean_post1 = (theta_mat1(:,1));
sd_post1 = (theta_mat1(:,2));
beta_post1 = (theta_mat1(:,3));

mean_post2 = (theta_mat2(:,1));
sd_post2 = (theta_mat2(:,2));
beta_post2 = (theta_mat2(:,3));

mean_post3 = (theta_mat3(:,1));
sd_post3 = (theta_mat3(:,2));
beta_post3 = (theta_mat3(:,3));

% Save results

save('../../Results/Split_data/mcmc_posterior_indep_splitdata.mat','mean_post1','mean_post2','mean_post3','sd_post1','sd_post2','sd_post3','beta_post1','beta_post2','beta_post3')

rmpath('../../Data')
rmpath('../../Results')
rmpath('../../Functions/Indep')
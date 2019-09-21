%% Script that generates and saves data to file

% The generated data files are stored in the directory "InitialData" and read by the script runlearn that learns the
% parameters.

dirname = 'InitialData';
if ~exist(dirname, 'dir')
  mkdir(dirname)
end
seed=4656;
prefix='get_data_';

%% 2D squares
dtype='squares_2d';
ndata=1000;
nlayers=50;
channels=2;
fname = sprintf('%s/%s%s_s%dnl%dch%dnd%d.mat',dirname,prefix,dtype,seed,nlayers,channels,ndata);
if ~exist(dirname, 'dir')
  mkdir(dirname)
end
rng(seed);
[features, labels] = get_data_squares_2d(ndata);
Y0=features';
C=labels'; %round((labels+1)/2)';
K=cell(nlayers,1);
b=cell(nlayers,1);
for k=1:nlayers
    K{k} = randn(channels);
    b{k} = randn(1,channels);
end
W=randn(channels,1);
mu=rand(1);
save(fname,'Y0','C','K','b','W','mu');

%% 1D donut
dtype='donut_1d';
ndata=1000;
nlayers=50;
channels=2;
fname = sprintf('%s/%s%s_s%dnl%dch%dnd%d.mat',dirname,prefix,dtype,seed,nlayers,channels,ndata);

rng(seed);
[features, labels] = get_data_donut_1d(ndata);
Y0=features';
C=labels'; %round((labels+1)/2)';
K=cell(nlayers,1);
b=cell(nlayers,1);
for k=1:nlayers
    K{k} = randn(channels);
    b{k} = randn(1,channels);
end
W=randn(channels,1);
mu=rand(1);
save(fname,'Y0','C','K','b','W','mu');



%% 2D donut
dtype='donut_2d';
ndata=1000;
nlayers=50;
channels=2;
fname = sprintf('%s/%s%s_s%dnl%dch%dnd%d.mat',dirname,prefix,dtype,seed,nlayers,channels,ndata);

rng(seed);
[features, labels] = get_data_donut_2d(ndata);
Y0=features';
C=labels'; %round((labels+1)/2)';
K=cell(nlayers,1);
b=cell(nlayers,1);
for k=1:nlayers
    K{k} = randn(channels);
    b{k} = randn(1,channels);
end
W=randn(channels,1);
mu=rand(1);
save(fname,'Y0','C','K','b','W','mu');

%% 2D spiral
dtype = 'spiral_2d';
ndata=1000;
nlayers=50;
channels=2;
fname = sprintf('%s/%s%s_s%dnl%dch%dnd%d.mat',dirname,prefix,dtype,seed,nlayers,channels,ndata);

rng(seed);
[features, labels] = get_data_spiral_2d(ndata);
Y0=features';
C=labels'; %round((labels+1)/2)';
K=cell(nlayers,1);
b=cell(nlayers,1);
for k=1:nlayers
    K{k} = randn(channels);
    b{k} = randn(1,channels);
end
W=randn(channels,1);
mu=rand(1);
save(fname,'Y0','C','K','b','W','mu');





%% Machine Learning Online Class
%  Exercise 6 | Spam Classification with SVMs
%

%% Initialization
clear ; close all; clc

%% ==================== Part 1: "Peer Assessment Comments" Preprocessing  ====================
%  Use processEmail to extract word list 
%  

fprintf('\nPreprocessing all comments file (halfComments.txt)\n');

% Extract Features
file_contents = readFile('halfComments.txt');
[unique_words counts] = CreateVocabList(file_contents);
[newcounts idx] = sort(counts, 'descend');

% Print Stats
% fprintf('Number of all non-zero entries: %d\n', length(unique_words(:,1)));

order = unique_words(idx,:);

save('vocabulary.mat', 'order', 'newcounts');

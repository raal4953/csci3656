function [y, X, labels] = process_datafile(filename)
    % PROCESS_DATAFILE
    % Munging a .csv file with delimiter ';' and a row of column headers.
    data = dlmread(filename, ';', 1, 0);
    X = data(:,1:end-1); y = data(:,end);
    fid = fopen('winequality-red.csv');
    s = fgetl(fid);
    s(s=='"') = [];
    z = textscan(s, '%s', 'Delimiter', ';');
    labels = z{1};
end
%read file from Text File 
%read path and open
fileID = fopen("xy.txt");
%scan file
C = textscan(fileID,'%f %f');
%close file
fclose(fileID);
%select Cell
celldisp(C);
%convert cell to matrix
B = cell2mat(C) ;

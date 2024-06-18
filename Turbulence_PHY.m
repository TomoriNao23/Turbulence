clc;
clear;


fileID = fopen('PHYSICAL.DAT', 'r'); 
PHYSICAL = textscan(fileID, '%f %f %f %f %f %f %f', 'HeaderLines', 3);
fclose(fileID);

%computational domain
%(Lx, Ly, Lz) = (2*pi*h, 2*h, pi*h)

NX = 96; 
NY = 129; 
NZ = 96; 

Re =2800;


N = length(PHYSICAL{1});
if N ~= NX * NY * NZ
    error('1');
end


 X1 = reshape(PHYSICAL{1}, [NZ, NY, NX]);
 Y1 = reshape(PHYSICAL{2}, [NZ, NY, NX]);
 Z1 = reshape(PHYSICAL{3}, [NZ, NY, NX]);
 X2 = X1(1,1,:);
 Y2 = Y1(1,:,1);
 Z2 = Z1(:,1,1);
  X = squeeze(X2);
  Y = Y2';
  Z = squeeze(Z2);


 tUp = reshape(PHYSICAL{4}, [NZ, NY, NX]);
 tVp = reshape(PHYSICAL{5}, [NZ, NY, NX]);
 tWp = reshape(PHYSICAL{6}, [NZ, NY, NX]);
 tP = reshape(PHYSICAL{7}, [NZ, NY, NX]);
 Up = permute(tUp, [3, 2, 1]);
 Vp = permute(tVp, [3, 2, 1]);
 Wp = permute(tWp, [3, 2, 1]);
  P = permute(tP, [3, 2, 1]);
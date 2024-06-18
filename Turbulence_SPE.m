clc;
clear;


fileID = fopen('文件路径(例如:D:\2024湍流统计\Code\SPECTRAL.DAT)', 'r'); 
SPECTRAL = textscan(fileID, '%f %f %f %f %f %f %f %f %f %f %f', 'HeaderLines', 3);
fclose(fileID);

%computational domain
%(Lx, Ly, Lz) = (2*pi*h, 2*h, pi*h)

NXH = 32; 
NY = 129; 
NZ = 64;

Re=2800;
N = length(SPECTRAL{1});

if N ~= NXH * NY * NZ
    error('数组大小与指定的三维数组大小不匹配');
end


 KX1 = reshape(SPECTRAL{1}, [NZ, NY, NXH]);
  Y1 = reshape(SPECTRAL{2}, [NZ, NY, NXH]);
 KZ1 = reshape(SPECTRAL{3}, [NZ, NY, NXH]);
 KX2 = KX1(1,1,:);
 KZ2 = KZ1(:,1,1);
 KXH = squeeze(KX2);
   Y = Y1(1,:,1)';
  KZ = squeeze(KZ2);

 ReU = reshape(SPECTRAL{4}, [NZ, NY, NXH]);
 ImU = reshape(SPECTRAL{5}, [NZ, NY, NXH]);
 ReV = reshape(SPECTRAL{6}, [NZ, NY, NXH]);
 ImV = reshape(SPECTRAL{7}, [NZ, NY, NXH]);
 ReW = reshape(SPECTRAL{8}, [NZ, NY, NXH]);
 ImW = reshape(SPECTRAL{9}, [NZ, NY, NXH]); 
 ReP = reshape(SPECTRAL{10}, [NZ, NY, NXH]);
 ImP = reshape(SPECTRAL{11}, [NZ, NY, NXH]);
 U_Re = permute(ReU, [3, 2, 1]);
 U_Im = permute(ImU, [3, 2, 1]);
 V_Re = permute(ReV, [3, 2, 1]);
 V_Im = permute(ImV, [3, 2, 1]);
 W_Re = permute(ReW, [3, 2, 1]);
 W_Im = permute(ImW, [3, 2, 1]);
 P_Re = permute(ReP, [3, 2, 1]);
 P_Im = permute(ImP, [3, 2, 1]);








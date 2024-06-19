%% 
PP = -1*uv(1:64).*(diff(mU(1:65))./diff(Y(1:65)'+1));
kv = mean(mean(((Up-mU).^2+(Vp-mV).^2+(Wp-mW).^2).*(Vp-mV),3),1)/2;
DT = -1*diff(kv(1:65))./diff(Y(1:65)'+1);
mP = mean(mean(P,3),1);
pv = mean(mean((P-mP).*(Vp-mV),3),1);
DP = -1*diff(pv(1:65))./diff(Y(1:65)'+1);
Dd = diff(mean(mean((Up-mU).^2+(Vp-mV).^2+(Wp-mW).^2,3),1),2)./diff(Y+1,2)'/Re/2;
Dd = Dd(1:63);
re = zeros(64,1);
exux = cat(1,(Up-mU),(Up(1,:,:)-mU));
exuy = cat(2,(Up-mU),(Up(:,1,:)-mU(1)));
exuz = cat(3,(Up-mU),(Up(:,:,1)-mU));
exvx = cat(1,(Vp-mV),(Vp(1,:,:)-mV));
exvy = cat(2,(Vp-mV),(Vp(:,1,:)-mV(1)));
exvz = cat(3,(Vp-mV),(Vp(:,:,1)-mV));
exwx = cat(1,(Wp-mW),(Wp(1,:,:)-mW));
exwy = cat(2,(Wp-mW),(Wp(:,1,:)-mW(1)));
exwz = cat(3,(Wp-mW),(Wp(:,:,1)-mW));
eps = -1*mean(mean((diff(exux,1,1)./squeeze(cat(1,diff(X),diff(X(1:2))))).^2 ...
+(diff(exvx,1,1)./squeeze(cat(1,diff(X),diff(X(1:2))))).^2 ...
+ (diff(exuy,1,2)./squeeze(cat(1,diff(Y),diff(Y(1:2))))').^2 ...
+(diff(exvy,1,2)./squeeze(cat(1,diff(Y),diff(Y(1:2))))').^2 ...
+ (diff(exuz,1,3)./repmat(cat(1,diff(Z),diff(Z(1:2))),[1,1,96])).^2 ...
+(diff(exvz,1,3)./repmat(cat(1,diff(Z),diff(Z(1:2))),[1,1,96])).^2 ...
+(diff(exwx,1,1)./squeeze(cat(1,diff(X),diff(X(1:2))))).^2 ...
+(diff(exwy,1,2)./squeeze(cat(1,diff(Y),diff(Y(1:2))))').^2 ...
+ (diff(exwz,1,3)./repmat(cat(1,diff(Z),diff(Z(1:2))),[1,1,96])).^2,3),1)/Re;
eps = eps(1:64);
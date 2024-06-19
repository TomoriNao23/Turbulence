function diss = calculatediss(X,Y,Z,u_turb,v_turb,w_turb)
    X_diff = diff(X);
    Y_diff = diff(Y);
    Z_diff = diff(Z);

    XX_diff = repmat(X_diff,[1 129 96]);
    YY_diff = repmat(Y_diff',[96 1 96]);
    ZZ_diff = repmat(Z_diff,[1 129 96]);
    ZZ_diff = permute(ZZ_diff,[3 2 1]);

    su1 = u_turb(2:end,:,:) - u_turb(1:end-1,:,:);
    dsu1 = su1 ./ XX_diff;
    dsu1 = dsu1 .* dsu1;
    dsu1 = mean(dsu1,[1 3]);
    dsu1 = dsu1(1:end-1);

    su2 = u_turb(:,2:end,:) - u_turb(:,1:end-1,:);
    dsu2 = su2 ./ YY_diff;
    dsu2 = dsu2 .* dsu2;
    dsu2 = mean(dsu2,[1 3]);

    su3 = u_turb(:,:,2:end) - u_turb(:,:,1:end-1);
    dsu3 = su3 ./ ZZ_diff;
    dsu3 = dsu3 .* dsu3;
    dsu3 = mean(dsu3,[1 3]);
    dsu3 = dsu3(1:end-1);

    sv1 = v_turb(2:end,:,:) - v_turb(1:end-1,:,:);
    dsv1 = sv1 ./ XX_diff;
    dsv1 = dsv1 .* dsv1;
    dsv1 = mean(dsv1,[1 3]);
    dsv1 = dsv1(1:end-1);

    sv2 = v_turb(:,2:end,:) - v_turb(:,1:end-1,:);
    dsv2 = sv2 ./ YY_diff;
    dsv2 = dsv2 .* dsv2;
    dsv2 = mean(dsv2,[1 3]);

    sv3 = v_turb(:,:,2:end) - v_turb(:,:,1:end-1);
    dsv3 = sv3 ./ ZZ_diff;
    dsv3 = dsv3 .* dsv3;
    dsv3 = mean(dsv3,[1 3]);
    dsv3 = dsv3(1:end-1);

    sw1 = w_turb(2:end,:,:) - w_turb(1:end-1,:,:);
    dsw1 = sw1 ./ XX_diff;
    dsw1 = dsw1 .* dsw1;
    dsw1 = mean(dsw1,[1 3]);
    dsw1 = dsw1(1:end-1);

    sw2 = w_turb(:,2:end,:) - w_turb(:,1:end-1,:);
    dsw2 = sw2 ./ YY_diff;
    dsw2 = dsw2 .* dsw2;
    dsw2 = mean(dsw2,[1 3]);

    sw3 = w_turb(:,:,2:end) - w_turb(:,:,1:end-1);
    dsw3 = sw3 ./ ZZ_diff;
    dsw3 = dsw3 .* dsw3;
    dsw3 = mean(dsw3,[1 3]);
    dsw3 = dsw3(1:end-1);

    diss = dsu1 + dsu2 + dsu3 + dsv1 + dsv2 + dsv3 + dsw1 + dsw2 + dsw3;
    diss = -diss / 2800 ;

end
function enst = calculateEnstrophy(X, Y, Z, u_turb, v_turb, w_turb)

    xx_diff = diff(X);
    yy_diff = diff(Y);
    zz_diff = diff(Z);

    x_diff = repmat(xx_diff, [1 128 95]);
    y_diff = repmat(yy_diff', [95 1 95]);
    z_diff = repmat(zz_diff, [1 128 95]);
    z_diff = permute(z_diff, [3 2 1]);

    wx = calculategrident(y_diff, w_turb, 2) - calculategrident(z_diff, v_turb, 3);
    wy = calculategrident(z_diff, u_turb, 3) - calculategrident(x_diff, w_turb, 1);
    wz = calculategrident(x_diff, v_turb, 1) - calculategrident(y_diff, u_turb, 2);

    enst = wx .^ 2 + wy .^ 2 + wz .^ 2;
    enst = enst ./ 2;
end

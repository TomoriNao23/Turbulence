function [x_diff,y_diff,z_diff] = calculatedissdx(X,Y,Z)
    xx_diff = diff(X);
    yy_diff = diff(Y);
    zz_diff = diff(Z);

    x_diff = repmat(xx_diff,[1 128 96]);
    y_diff = repmat(yy_diff',[96 1 96]);
    z_diff = repmat(zz_diff,[1 128 96]);
    z_diff = permute(z_diff,[3 2 1]);
end
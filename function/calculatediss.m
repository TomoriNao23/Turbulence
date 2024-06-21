function output = calculatediss(X, Y, Z, u_turb, v_turb, w_turb)
    [x_diff, y_diff, z_diff] = calculatedissdx(X, Y, Z);

    dissipation(1, :) = calculatedissgrident(x_diff, u_turb, 1);
    dissipation(2, :) = calculatedissgrident(y_diff, u_turb, 2);
    dissipation(3, :) = calculatedissgrident(z_diff, u_turb, 3);
    dissipation(4, :) = calculatedissgrident(x_diff, v_turb, 1);
    dissipation(5, :) = calculatedissgrident(y_diff, v_turb, 2);
    dissipation(6, :) = calculatedissgrident(z_diff, v_turb, 3);
    dissipation(7, :) = calculatedissgrident(x_diff, w_turb, 1);
    dissipation(8, :) = calculatedissgrident(y_diff, w_turb, 2);
    dissipation(9, :) = calculatedissgrident(z_diff, w_turb, 3);

    output = sum(dissipation, 1);
    output = -output / 2800;

end

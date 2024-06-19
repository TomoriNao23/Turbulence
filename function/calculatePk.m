function pk = calculatePk(Y,u_avg,rey_uw)
    Y_diff = diff(Y);
    ut_avg_diff = diff(u_avg);
    u_avg_diff = ut_avg_diff ./ Y_diff';
    pk = -rey_uw(1:end-1) .* u_avg_diff;
end

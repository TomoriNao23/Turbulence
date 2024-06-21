function grident_avg = calculatedissgrident(dx, y, k)

    switch (k)
        case 1
            dy = y(2:end, 1:end - 1, :) - y(1:end - 1, 1:end - 1, :);
        case 2
            dy = y(:, 2:end, :) - y(:, 1:end - 1, :);
        case 3
            dy = y(:, 1:end - 1, 2:end) - y(:, 1:end - 1, 1:end - 1);
    end

    grident = dy ./ dx;
    grident = grident .^ 2;
    grident_avg = mean(grident, [1 3]);
end

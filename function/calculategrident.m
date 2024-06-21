function grident = calculategrident(dx, y, k)

    switch (k)
        case 1
            dy = y(2:end, 1:end - 1,1:end-1) - y(1:end - 1, 1:end - 1, 1:end-1);
        case 2
            dy = y(1:end-1, 2:end, 1:end-1) - y(1:end-1, 1:end - 1, 1:end-1);
        case 3
            dy = y(1:end-1, 1:end - 1, 2:end) - y(1:end-1, 1:end - 1, 1:end - 1);
    end

    grident = dy ./ dx;
end

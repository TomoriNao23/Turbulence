function pic=plot11(X, Y, colors, outputPath, labelsx, labelsy, title, leg, xlims, ylims)

    n = size(colors, 2);
    figure;
    % Plotting
    hold on;

    for i = 1:n
        plot(X, Y{i}, colors{i}, 'LineWidth', 1.4);
    end

    hold off;
    box on;

    xlabel(labelsx, 'Interpreter', 'latex', 'FontSize', 15);
    ylabel(labelsy, 'Interpreter', 'latex', 'FontSize', 15);
    legend(leg, 'Interpreter', 'latex', 'Box', 'off', 'Location', 'NorthEast','FontSize', 10);
    sgtitle(title, 'HorizontalAlignment', 'center');
    ylim(ylims);
    xlim(xlims);
    pic = gcf;
    % Save the plot as PNG with high resolution
    print(gcf, outputPath, '-dpng', '-r300');
end

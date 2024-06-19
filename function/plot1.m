function plot1(X, Y, colors,outputPath, labelsx, labelsy, title, leg)
 
n =size(colors,2);
figure;
% Plotting
hold on;
for i = 1:n
    plot(X, Y{i}, colors{i}, 'LineWidth', 1.5);
end
hold off;
box on;

xlabel(labelsx, 'Interpreter', 'latex');
ylabel(labelsy, 'Interpreter', 'latex');
legend(leg, 'Interpreter', 'latex', 'Box', 'off', 'Location', 'NorthEast');
sgtitle(title, 'HorizontalAlignment', 'center');

% Save the plot as PNG with high resolution
print(gcf, outputPath, '-dpng', '-r300');
end

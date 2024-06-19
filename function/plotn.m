function plotn( X, Y, outputPath, labelsx, labelsy, title)
    
    % Create the figure
    figure;

    % Labels for the subplots

    % Plot each Reynolds stress component
    n = size(labelsx, 2);
    for i = 1:n
        subplot(n / 3, 3, i);
        plot(X{i}, Y);
        xlabel(labelsx{i}, 'Interpreter', 'latex');
        ylabel(labelsy{i}, 'Interpreter', 'latex');
    end

    % Add a title for the entire figure
    sgtitle(title, 'HorizontalAlignment', 'center');

    % Save the figure as a PNG file
    print(gcf, outputPath, '-dpng', '-r300');

    % Close the figure
    close(gcf);

    % Display the image
    imshow(imread(outputPath), 'InitialMagnification', 'fit')
end

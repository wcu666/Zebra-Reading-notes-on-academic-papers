% MATLAB Script: Curvature-Dependent Diffusion Rate d(kappa)
% Fixed Layout: Legend moved outside to prevent blocking curves

clear; clc; close all;

% Define curvature range (kappa)
kappa = linspace(-3, 3, 400);

% Define coupling coefficients (r_d)
rd_neg  = -2;   % Negative coupling (Natural condition)
rd_zero = 0;    % Uncoupled (Isotropic)
rd_pos  = 2;    % Positive coupling

% Sigmoid coupling formula: d(kappa) / d_0 = 0.5 + 1 / (1 + exp(-kappa * r_d))
d_neg  = 0.5 + 1 ./ (1 + exp(-kappa * rd_neg));
d_zero = 0.5 + 1 ./ (1 + exp(-kappa * rd_zero));
d_pos  = 0.5 + 1 ./ (1 + exp(-kappa * rd_pos));

% Figure Setup (Increased width to accommodate outside legend)
fig = figure('Units', 'pixels', 'Position', [100, 100, 850, 480], 'Color', 'w');
hold on; box on; grid on;

% Plot curves
p1 = plot(kappa, d_neg,  'Color', [0.85, 0.20, 0.20], 'LineWidth', 2.8, ...
    'DisplayName', 'r_d < 0 (Negative / Natural)');
p2 = plot(kappa, d_zero, 'Color', [0.40, 0.40, 0.40], 'LineWidth', 2.0, ...
    'LineStyle', '--', 'DisplayName', 'r_d = 0 (Uncoupled / Isotropic)');
p3 = plot(kappa, d_pos,  'Color', [0.20, 0.50, 0.80], 'LineWidth', 2.5, ...
    'LineStyle', '-.', 'DisplayName', 'r_d > 0 (Positive / Reversed)');

% Reference Lines
yline(1.0, ':', 'Color', [0.6 0.6 0.6], 'LineWidth', 1, 'HandleVisibility', 'off');
xline(0.0, ':', 'Color', [0.6 0.6 0.6], 'LineWidth', 1, 'HandleVisibility', 'off');

% Labels and Formatting
xlabel('Local Curvature (\kappa)', 'FontSize', 12, 'FontWeight', 'bold', 'FontName', 'Arial');
ylabel('Relative Diffusion Rate d(\kappa) / d_0', 'FontSize', 12, 'FontWeight', 'bold', 'FontName', 'Arial');
title('Curvature-Dependent Sigmoidal Diffusion Coupling', 'FontSize', 14, 'FontWeight', 'bold', 'FontName', 'Arial');

% Axis limits & ticks
xlim([-3, 3]);
ylim([0.2, 1.8]);
set(gca, 'FontSize', 11, 'LineWidth', 1.2, 'GridAlpha', 0.15, 'FontName', 'Arial');

% Legend (Placed outside on the right to prevent overlapping)
lgd = legend('Location', 'northeastoutside', 'FontSize', 10.5, 'FontName', 'Arial');
title(lgd, 'Coupling Strength (r_d)');

% Annotations (Placed in non-overlapping regions)
text(-2.8, 1.68, '\bfNatural Condition (r_d < 0):', 'FontSize', 10, 'Color', [0.75, 0.1, 0.1], 'FontName', 'Arial');
text(-2.8, 1.58, 'High curvature \rightarrow Slower diffusion', 'FontSize', 9, 'Color', [0.3, 0.3, 0.3], 'FontName', 'Arial');

text(0.2, 0.42, '\bfReversed Condition (r_d > 0):', 'FontSize', 10, 'Color', [0.1, 0.4, 0.75], 'FontName', 'Arial');
text(0.2, 0.32, 'High curvature \rightarrow Faster diffusion', 'FontSize', 9, 'Color', [0.3, 0.3, 0.3], 'FontName', 'Arial');

% Export High-Res Image
exportgraphics(fig, 'sigmoid_coupling.png', 'Resolution', 300);
disp('Successfully updated and saved "sigmoid_coupling.png" without legend overlapping!');
function [fitresult, gof] = createFit(stresstime, isat)
%CREATEFIT(STRESSTIME,ISAT)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : stresstime
%      Y Output: isat
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 15-Mar-2022 15:38:11 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( stresstime, isat );

% Set up fittype and options.
ft = fittype( 'a*x^n', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.053 0.164];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'isat vs. stresstime', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'stresstime', 'Interpreter', 'none' );
ylabel( 'isat', 'Interpreter', 'none' );
grid on



%% data

%data source: Hot-Carrier to Cold-Carrier Device Lifetime Modeling with Temperature for Low power 40nm Si-Bulk NMOS and PMOS FETs
%data type: x-stress time, y-$-\Delta I_{Sat}/I_{Sat0}$ Vgs=Vds=Vdd/2V FWD
%data condition: PMOS Low Power Wg=10um
% Worst Case DC Vgd=0
% Stress: Vds=1.3Vdd

stresstime = [
    0.9869900993318479
    1.5711170106746244
    2.4684086612311664
    3.9550902511289974
    6.254729477281436
    9.956444229356778
    15.745497891606856
    24.73801957904494
    39.12164083397327
    62.37310540232812
    99.02866555049695
    155.44890877817932
    248.68090740896528
    394.8262355986102
    624.4878022536989
    995.2521459930384
    1568.2145413853923
    2518.2906045587442
    3968.059713714858
    6228.808083343236
    10002.425344191426
    15701.171940935665
    25118.102895323478
    39428.80239727188
];

isat = [
    0.04169783332542287
    0.04678925465531854
    0.052039516561328256
    0.059174192077310124
    0.06552371751364217
    0.07096699361131163
    0.07823494016961902
    0.09014935855583517
    0.1048018931434099
    0.10650598458955367
    0.1201463886487186
    0.1271280483386109
    0.13835939061103197
    0.14943017693987196
    0.1634663433350877
    0.17564435126839945
    0.18490174735899534
    0.19614941408044378
    0.2140249214603521
    0.2329319013012598
    0.2383990213284569
    0.2628027996643538
    0.27313542441930067
    0.2957456036790863
];

%% data plot

% loglog(stresstime,isat,'*');
% grid on;

%% fit

%isat = a*t^n

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

disp(fitresult);
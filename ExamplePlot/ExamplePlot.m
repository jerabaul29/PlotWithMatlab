clear all;
close all;

%% plot a dummy figure to illustrate all commands

% data to plot
x = 0:0.01:2*pi;
sinx = sin(x);
cosx = cos(x);

% how to plot a clean figure
%
% open a new figure -------------------------------------------------------
figure(1)
% parameters for the plotting ---------------------------------------------
nColumnsPlotParam = 1;
FtSize            = 12;
Lwdth             = 2;
% call the pre script -----------------------------------------------------
ScriptAspectFigures_Pre;
%
% plot the data -----------------------------------------------------------
plot(x,sinx,'--r','LineWidth',Lwdth);
% put several curves together
hold on;
plot(x,cosx,'.-b','LineWidth',Lwdth);
% add the labels ----------------------------------------------------------
xlabel('x quantity (unit)');
ylabel('y quantity (unit)');
% add the limit for the plot domain ---------------------------------------
xlim([0 2*pi]);
ylim([-1.2 1.2]);
% add the legend ----------------------------------------------------------
legend('curve_1','curve_2','Location','SouthWest');
% parameters for saving the figure ----------------------------------------
figName = 'InterestingFigure';
saveFig = true;
% call the post script ----------------------------------------------------
ScriptAspectFigures_Post;
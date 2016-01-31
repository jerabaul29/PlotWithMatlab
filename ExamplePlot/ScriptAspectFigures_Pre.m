%% units conversion cm / pixel
cm2p=0.0282;      % centimetres to pixels

%% aspect ration of phi look best
height=1/1.618;
width=1;

%% select one or two columns size
% one column is 20/39 ratio, two column is 39/39
%
if (nColumnsPlotParam==1)
sml = 20/39;
elseif (nColumnsPlotParam==2)
sml = 39/39;
end
%
scale=16.38/cm2p*2/nColumnsPlotParam; % scale for two-column in pixels
xpos=50;
ypos=500;

%% visual details
axes('FontName','Times New Roman') % Set axis font style
box('on');                         % Define box around whole figure
set(gcf,'Position',[xpos ypos scale*width*sml scale*height*sml]) 






% % script for gestion of the figures aspect and visual result
% 
% %% for paper article
% 
% if (style=='paper01')
% 
% cm2p=0.0282;      % centimetres to pixels
% height=1/1.618;
% width=1;
% sml=39/39;        % one column is 20/39 ratio, two column is 39/39
% scale=16.38/cm2p; % scale for two-column in pixels
% xpos=50;
% ypos=500;
% 
% axes('FontName','Times New Roman') % Set axis font style
% box('on'); % Define box around whole figure
% set(gcf,'Position',[xpos ypos scale*width*sml scale*height*sml]) 
% 
% set(gcf,'PaperUnits','centimeters');
% set(gcf,'PaperSize',[width height].*16.38*sml);
% set(gcf,'PaperPositionMode','manual');
% set(gcf,'PaperPosition',[0 0 width height].*16.38*sml);
% 
% end
% 
% %% for a beamer
% 
% % For a beamer slide: width=5.04 in, length=3.78 in
% % What is the desired figure size?
% % here, chosen to be figure width=4in, figure height=2in
% 
% if (style == 'beamer0')
% 
% x0 = 0.1;
% y0 = 0.1;
% width = 4;
% height = 2;
% set(gcf,'Units','inches','Position',[x0 y0 width height],'PaperPositionMode','auto');
% 
% end

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






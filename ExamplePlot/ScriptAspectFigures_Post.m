% % FtSize = 9;
% 
% set(gca,...
% 'Units','normalized',...
% 'Position',[.15 .2 .75 .7],...
% 'FontUnits','points',...
% 'FontWeight','normal',...
% 'FontSize',FtSize,...
% 'FontName','Times');
% 
% % ylabel({'$y(t)$'},...
% % 'FontUnits','points',...
% % 'interpreter','latex',...
% % 'FontSize',FtSize,...
% % 'FontName','Times');
% % 
% % xlabel('Time(s)',...
% % 'FontUnits','points',...
% % 'FontWeight','normal',...
% % 'FontSize',FtSize,...
% % 'FontName','Times');
% % 
% % legend({'$y=\sin(t)$'},...
% % 'FontUnits','points',...
% % 'interpreter','latex',...
% % 'FontSize',FtSize,...
% % 'FontName','Times',...
% % 'Location','NorthEast');
% % 
% % title('Sinusoidal function',...
% % 'FontUnits','points',...
% % 'FontWeight','normal',...
% % 'FontSize',FtSize,...
% % 'FontName','Times');

%% update the figure
pause(0.5);
drawnow;
pause(0.5);

%% set the font size
set(gca,'FontSize',FtSize);

%% set the size of the figure paper
set(gcf,'PaperUnits','centimeters');
set(gcf,'PaperSize',[width height].*16.38*sml);
set(gcf,'PaperPositionMode','manual');
set(gcf,'PaperPosition',[0 0 width height].*16.38*sml);

%% take away margins
ti = get(gca,'TightInset');
set(gca,'Position',[ti(1) ti(2) 1-ti(3)-ti(1) 1-ti(4)-ti(2)]);

%% use the right units
set(gca,'units','centimeters');
pos = get(gca,'Position');
ti = get(gca,'TightInset');%

set(gcf, 'PaperUnits','centimeters');
set(gcf, 'PaperSize', [pos(3)+ti(1)+ti(3) pos(4)+ti(2)+ti(4)]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition',[0 0 pos(3)+ti(1)+ti(3) pos(4)+ti(2)+ti(4)]);

%% choose vector or bitmap
% set(gcf,'Renderer','OpenGL');        % bitmap
set(gcf,'Renderer','Painters');        % vector format
set(gcf,'RendererMode','manual');      % so that the Renderer is manual

%% save the plot
% generate the name with extension
if (nColumnsPlotParam==1)
figName = strcat(figName,'_OneColumn');
elseif (nColumnsPlotParam==2)
figName = strcat(figName,'_TwoColumn');
end
% plot
if saveFig
    if saveFig > 1
       print(saveFig,'-dpdf','-r400',figName);
    else
        print(gcf,'-dpdf','-r400',figName);
    end
end




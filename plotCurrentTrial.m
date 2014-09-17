%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) Copyright 2012-14  Anonymous Authors ICDSC14 #23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

color = colors( mod(nt,length(colors)) );
figure(100);hold on;plotCMCcurve(cmcCurrent,color,'.',...
   [datasetname ' N=' num2str(maxNumTemplate)]);
drawnow
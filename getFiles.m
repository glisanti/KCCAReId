if isunix
   if ~exist('data/VIPeR_split.mat','file')
      [status,result] = system('wget -c http://www.micc.unifi.it/lisanti/downloads/kccareid_data.zip ','-echo');
      system('unzip kccareid_data.zip');
      disp('>Splits and Descriptors ready.')
   end
   if ~exist('kcca_package','dir')
      system('rm kccareid_data.zip');
      system(' wget -c http://www.davidroihardoon.com/Professional/Code_files/kcca_package.tar.gz');
      system('tar -xvf kcca_package.tar.gz');
      system('rm kcca_package.tar.gz');
      disp('>KCCA package ready.')
   end
else
   disp('Sorry it seems that you are not on UNIX so you need to download files manually.')
end
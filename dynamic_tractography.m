% make tractography movie

% ****** set parameter *******************
savedir = 'XX'; % set your directory
cd(savedir);
savename = fullfile(savedir, 'movie'); 
fontsize = 6; 
left_name = 'left';
right_name = 'right';
Title = 'connectivity';
t_range=[-1 1];  
Timeunit = 10; 
% *** movie ***
Export_Movie = 1; 
movie_time_range =[300 350];
frame_number=3; 
% *** snapshots ***
Export_Fig = 0;
Snapshot_time = [300 350]; 
% ****************************************

% load tract data
Tract = load('tract.mat'); % set demo data
Tract1 = Tract;Tract2 = Tract;

Side1 = Tract1.Data.tract_name;
Side2 = Tract2.Data.tract_name;
Setting.fnum = size(Tract1.Data.Alpha,2);
Setting.Time_all = Tract1.Data.time;

Alpha1 = Tract1.Data.Alpha';
Alpha2 = Tract2.Data.Alpha';
Tract_1 = Tract1.Tract;
Tract_2 = Tract2.Tract;

% *** generate movie ***
tractography_movie(Alpha1,Alpha2,Setting,savename,t_range,Timeunit,frame_number,movie_time_range,fontsize,Title,left_name,right_name,Export_Movie,Export_Fig,Snapshot_time,Tract_1,Tract_2,Side1,Side2)



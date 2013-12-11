% Get number of cores from environment variable set by submit script
num_cores = str2num(getenv('NP'));
disp(['Running on ' num2str(num_cores) ' cores']);

% Create pool
sched = findResource('scheduler', 'configuration', defaultParallelConfig);
matlabpool(sched, num_cores);

% Parallel calculation
parfor i=1:num_cores
    disp(['Iteration ' num2str(i)]);
end

% Close pool
matlabpool close

INSTRUCTIONS
1. Edit the file submit_matlab.sh and change the line that reads
#PBS -A bgoldiez
and replace bgoldiez with your account name.

2. Submit the job with the command
qsub submit_matlab_concurrent.pbs

3. Results will appear in the following files, where JOBID is the job ID number assigned 
by the cluster when the job is submitted:
- Debugging output about launching MATLAB can be found in the file:
  matlab_test.oJOBID
- The actual text output from MATLAB can be found in the file:
jobJOBID.emgnt2/matlab_output.log
Note that because the for loop is concurrent, the iterations may not be printed in order!

To run your own MATLAB scripts, edit the following line in submit_matlab.sh:
MATLAB_SCRIPT='parallel_example'
and replace test with the name of your script (WITHOUT the .m extension).  If your script
requires data files in .mat format, place them in the same directory as the Matlab 
script and the submit script.

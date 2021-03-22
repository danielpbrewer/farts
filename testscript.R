###### Select resources #####
#PBS -N [Name of Job]
#PBS -l ncpus=[number of cpu's required, most likely 1]
#PBS -l mem=[amount of memory required]
#PBS -l walltime=[how long the job should run for - you may wish to remove this line]

#### Output File #####
#PBS -o $PBS_O_WORKDIR/[output (standard out) file name]

#### Error File #####
#PBS -e $PBS_O_WORKDIR/[input (standard out) file name]

##### Queue #####
#pbs -q workq

##### Mail Options #####
#PBS -m abe
#PBS -M [your email address]

##### Change to current working directory #####
cd $PBS_O_WORKDIR

##### Execute Program #####
R --vanilla < [Your R file].R > [R output file name]
1. update submitCondorJob.sh by hand:
    1. update proxy :
    proxy=x509up_u100637 --> your proxy

    2. number of events per job is defined here :
    Nevents=20

    3. sample is here :
    SAMPLE=WWW

    4. output dir if your use transfer_output_remaps :
    OUTPUTDIR=/stash/user/qilongguo/work/aQGC_Production/Output/UL/2018/ST_Scale/WWW/

2. sh pr.sh

3. update submitJob.sh by hand
    1. only generate the submit file and excutable for debug
        bash submitCondorJob.sh {Npart} {Nqueue} 
    2. generate submit file and excutable, then submit condor jobs 
        bash submitCondorJob.sh {Npart} {Nqueue} run
    
4. merge root files
    1. haddNano.py from NanoAOD-tool 
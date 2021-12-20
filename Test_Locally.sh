

SAMPLE=WWW
NPART=1
NEVENTS=1
FILEIN=/stash/user/qilongguo/work/aQGC_Production/Output/UL/2018/ST_Scale/WWW/File_10608429_1_1_WWW-RunIISummer20UL18MiniAODv2_1.root

CAMPAIGN=RunIISummer20UL18
ERA=Run2_2018
NANOERA=Run2_2018,run2_nanoAOD_106Xv2
CONDITIONS=106X_upgrade2018_realistic_v4
CONDITIONS_SIM=106X_upgrade2018_realistic_v11_L1v1
CONDITIONS_HLT=102X_upgrade2018_realistic_v15
CONDITIONS_MINIAOD=106X_upgrade2018_realistic_v16_L1v1
BEAMSPOT=Realistic25ns13TeVEarly2018Collision
HLTSTEP=2018v32

STEP6_NAME=${SAMPLE}-${CAMPAIGN}NanoAODv9_${NPART}


cmsDriver.py  \
    --python_filename ${STEP6_NAME}_cfg.py \
    --eventcontent NANOAODSIM \
    --customise Configuration/DataProcessing/Utils.addMonitoring \
    --datatier NANOAODSIM \
    --fileout file:${STEP6_NAME}.root \
    --conditions $CONDITIONS_MINIAOD \
    --step NANO \
    --filein file:$FILEIN \
    --era $NANOERA \
    --no_exec \
    --mc \
    -n $NEVENTS
max=50

for i in `seq 1 $max`
do
    # bash submitCondorJob.sh  $i 10
    bash submitCondorJob.sh $i 10 run
done

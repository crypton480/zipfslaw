run_mapreduce() {
    hadoop jar /usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming-2.0.0-mr1-cdh4.1.1.jar -mapper $1 -reducer $2 -file $1 -file $2 -input $3 -output $4
}

alias hs=run_mapreduce
alias fs="hadoop fs"


rm output.txt -f
fs -rm -r $1
fs -rm -r $1"_out"

fs -mkdir $1
fs -put $1 $1
hs mapper.py reducer.py $1 $1"_out"
fs -get $1"_out/part-00000"
mv "part-00000" "output.txt"

# zipfslaw
*Sample code using Map-Reduce in Hadoop to test Zipf's law*

## Zipf's Law
> Zipf's law states that given some corpus of natural language utterances, the frequency of any word is inversely proportional to its rank in the frequency table. Thus the most frequent word will occur approximately twice as often as the second most frequent word, three times as often as the third most frequent word, etc.: the rank-frequency distribution is an inverse relation

In general any frequency distribution with this property, is called a Zipfian distribution. For a detailed explaination of the law, have a look at this VSauce video
https://www.youtube.com/watch?v=fCn8zs912OE

This repo contains code to test Zipf's law given any (large) text file. 

## Setup 
This uses the Hadoop VM used by Cloudera in their Udacity course on "Introduction to Hadoop and MapReduce". The VM can be downloaded here
http://content.udacity-data.com/courses/ud617/Cloudera-Udacity-Training-VM-4.1.1.c.zip

This is a big file! Around 1.7 GB. It does not uncompress with either 7-Zip or the default Zip utility. Use WinRar or WinZip if you are on windows. Once unzipped, it should be fairly simple to set up.

The default `username/password` for the root user in the VM is `training/training`

## Code
The code uses the Hadoop and the MapReduce programming model. More details can be found here
https://en.wikipedia.org/wiki/MapReduce

This also uses Hadoop's streaming interface described here
https://hadoop.apache.org/docs/r1.2.1/streaming.html

Once inside the VM, clone the git repo, navigate to it and run the following command,
`source run.sh input.txt`

This will take the file input.txt, load it in the Hadoop file system, run the MapReduce code (see below) and download the output from the Hadoop cluster. The output will contain an alphabetical listing of all the words in the text file, along with the frequency in a tab separated file.

This can be then sorted and analysed using any a separate script (not included!). Note that the word frequencies follow a Zipfian distribution. 





#!/usr/bin/python

# Format of each line is:
# date\ttime\tstore name\titem description\tcost\tmethod of payment
#
# We want elements 2 (store name) and 4 (cost)
# We need to write them out to standard output, separated by a tab

import sys
import string 

for line in sys.stdin:
    data = line.strip().split(" ")
    for word in data:
        word = word.lower()
        print "{0}\t{1}".format(word.translate(None, string.punctuation), 1)


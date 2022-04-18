#!/bin/bash
grep "\S" quotes.txt | awk '!seen[$0]++' > temp.txt && cp temp.txt quotes.txt && rm temp.txt
#!/bin/bash
grep "\S" quotes.txt | awk '!seen[$0]++'
#!/bin/bash
#
# Temporary script - will be removed in the future
#

./main -m ./models/ggml-alpaca-7b-q4.bin --color -f ./prompts/alpaca.txt -ins --top_k 10000 --temp 0.96 --repeat_penalty 1 -t 7

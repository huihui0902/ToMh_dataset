#!/bin/sh

# Generate data
python3.10 create_world.py
python3.10 generate_tasks.py -w world_large.txt -n 2 -ptn=0.1 --prompt MC --answer True # -p and -a are dummy parameters
# python3.10 generate_tasks.py -w world_large.txt -n 2 -ptn=0.1 --prompt CoT --answer True
python3.10 generate_tasks.py -w world_large.txt -n 2 -ptn=0.1 --tell True --prompt MC --answer True
# python3.10 generate_tasks.py -w world_large.txt -n 2 -ptn=0.1 --tell True --prompt CoT --answer True

# # Generate prompts
# python3.10 generate_tasks.py -w world_large.txt -n 20 -ptn=0.1 --prompt MC
# python3.10 generate_tasks.py -w world_large.txt -n 20 -ptn=0.1 --prompt CoT
# python3.10 generate_tasks.py -w world_large.txt -n 20 -ptn=0.1 --tell True --prompt MC
# python3.10 generate_tasks.py -w world_large.txt -n 20 -ptn=0.1 --tell True --prompt CoT
set -ex
export CUDA_DEVICE_ORDER='PCI_BUS_ID'
export CUDA_VISIBLE_DEVICES=0,1,2,3

python ../main.py --env BreakoutNoFrameskip-v4 --case atari --opr train --force \
  --num_gpus 4 --num_cpus 96 --cpu_actor 14 --gpu_actor 20 \
  --seed 2 \
  --use_priority \
  --use_max_priority \
  --amp_type 'none' \
  --info 'EfficientZero-V1'

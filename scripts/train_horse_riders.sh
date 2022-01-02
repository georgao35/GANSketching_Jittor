#!/bin/bash
CUDA_VISIBLE_DEVICES=2 python train.py \
--name horse_riders_augment_check --batch 1 \
--dataroot_sketch /mnt/disk/zw/data/sketch/photosketch/horse_riders \
--dataroot_image /mnt/disk/zw/data/image/lmdb/horse --l_image 0.7 \
--g_pretrained /mnt/disk/zw/pretrained/stylegan2-horse/netG.pth \
--d_pretrained /mnt/disk/zw/pretrained/stylegan2-horse/netD.pth \
--max_iter 50001 --diffaug_policy translation --disable_eval \
--photosketch_path /mnt/disk/zw/pretrained/photosketch.pth \
--checkpoints_dir /mnt/disk/zw/checkpoint \
--display_freq 2000 \
2> ./warning/horse_riders_augment_check.txt
# --resume_iter 50000 \

# CUDA_VISIBLE_DEVICES=2 python train.py \
# --name horse_riders_no_augment --batch 1 \
# --dataroot_sketch /mnt/disk/zw/data/sketch/photosketch/horse_riders \
# --dataroot_image /mnt/disk/zw/data/image/lmdb/horse --l_image 0.7 \
# --g_pretrained /mnt/disk/zw/pretrained/stylegan2-horse/netG.pth \
# --d_pretrained /mnt/disk/zw/pretrained/stylegan2-horse/netD.pth \
# --max_iter 50001 --disable_eval \
# --photosketch_path /mnt/disk/zw/pretrained/photosketch.pth \
# --checkpoints_dir /mnt/disk/zw/checkpoint \
# --display_freq 2000 \
# --resume_iter 50000 \
# 2> ./warning/horse_riders_no_augment.txt
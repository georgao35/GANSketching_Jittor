#!/bin/bash
python train.py \
--name church_jt_noaug --batch 1 \
--dataroot_sketch data/sketch/photosketch/gabled_church \
--dataroot_image data/image/lmdb/church --l_image 0.7 \
--g_pretrained pretrained/stylegan2-church/netG.pth \
--d_pretrained pretrained/stylegan2-church/netD.pth \
--max_iter 14001 --disable_eval \
--resume_iter 6000 \
--photosketch_path pretrained/photosketch.pth \
--checkpoints_dir checkpoint/ \
--display_freq 2000 \

set -x

CUDA_VISIBLE_DEVICES=1 python scripts/bbox_inference.py \
--cfg "configs/coco/resnet/256x192_res152_lr1e-3_1x-duc.yaml" \
--checkpoint "/home/xian/Documents/code/AlphaPose/pretrained_models/fast_421_res152_256x192.pth" \
--list "examples/exapmle_hico.json" \
--outdir "output/example_hico/" \
--detector yolo \
--detbatch 1 \
--sp \
--dataset "hico"

#CUDA_VISIBLE_DEVICES=1 python scripts/bbox_inference.py \
#--cfg "configs/coco/resnet/256x192_res152_lr1e-3_1x-duc.yaml" \
#--checkpoint "/home/xian/Documents/code/AlphaPose/pretrained_models/fast_421_res152_256x192.pth" \
#--list "examples/example_vcoco.json" \
#--outdir "output/example_vcoco/" \
#--detector yolo \
#--detbatch 1 \
#--sp \
#--dataset "vcoco"


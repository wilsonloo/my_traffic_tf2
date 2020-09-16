#!/bin/bash

# 当前工作目录
work_dir=$(cd "$(dirname "$0")"; pwd)
echo $work_dir

# 训练管道配置文件
PIPELINE_CONFIG_PATH=/home/wilson/workstation/myTrafficTF2/models/centernet_hg104_1024x1024_coco17_tpu-32/pipeline.config
# PIPELINE_CONFIG_PATH=/home/wilson/workstation/myTrafficTF2/models/faster_rcnn_resnet50_v1_1024x1024_coco17_tpu-8/pipeline.config

# 模型训练的临时目录
MODEL_DIR=/home/wilson/workstation/myTrafficTF2/models/centernet_hg104_1024x1024_coco17_tpu-32/build
# MODEL_DIR=/home/wilson/workstation/myTrafficTF2/models/faster_rcnn_resnet50_v1_1024x1024_coco17_tpu-8/build

# 进入object_detection 目录
cd /home/wilson/workstation/tensorflow/models/research/

# 执行训练
python3 object_detection/model_main_tf2.py \
            --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
            --model_dir=${MODEL_DIR} \
            --alsologtostderr

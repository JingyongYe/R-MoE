#!/bin/bash

output_dir_base="outputs-ours-adapt-dw"

for dw_momentum in 0.9 0.99
do
    for min_aux_loss_weight in 0.001 0.0001
    do
        for max_aux_loss_weight in 0.01 0.001
        do
            for test_env in 0 1 2 3
            do
                output_dir="${output_dir_base}/dw_${dw_momentum}_min_${min_aux_loss_weight}_max_${max_aux_loss_weight}"
                
                CUDA_VISIBLE_DEVICES=0 python3 -m domainbed.scripts.train \
                    --data_dir=./domainbed/data \
                    --algorithm GMOE \
                    --dataset PACS \
                    --hparams '{"vanilla_ViT":false, "vit_type":"small", "router": "gated_multi_gate", "adaptive_experts":true, "max_expert_num": 8}' \
                    --output_dir "${output_dir}" \
                    --test_envs ${test_env} \
                    --device 0 \
                    --dw \
                    --dw_momentum ${dw_momentum} \
                    --min_aux_loss_weight ${min_aux_loss_weight} \
                    --max_aux_loss_weight ${max_aux_loss_weight}
            done
        done
    done
done

#!/bin/bash

moe_layers="10"
output_dir="results_dw"

for dw_momentum in 0.9 0.99
do
    for min_aux_loss_weight in 0.001 0.0001
    do
        for max_aux_loss_weight in 0.01 0.001
        do
            CUDA_VISIBLE_DEVICES=1 python search_glue_no_trainer.py \
                --model_name_or_path bert-large-cased \
                --task_name mnli \
                --to_MoE \
                --num_experts 8 \
                --moe_layers $moe_layers \
                --expert_repeat 16 \
                --random_cluster \
                --save_model \
                --max_expert_num 16 \
                --adaptive_experts \
                --gate_type gated_multi_gate \
                --dw \
                --dw_momentum $dw_momentum \
                --min_aux_loss_weight $min_aux_loss_weight \
                --max_aux_loss_weight $max_aux_loss_weight \
                --output_dir "${output_dir}/dw_${dw_momentum}_min_${min_aux_loss_weight}_max_${max_aux_loss_weight}"
        done
    done
done
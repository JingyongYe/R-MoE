moe_layers="10"


# DynMoE with Decoupled Gating (Ours, modified)
python search_glue_no_trainer.py --model_name_or_path bert-large-cased --task_name cola --to_MoE --num_experts 8 --moe_layers $moe_layers --expert_repeat 16 --random_cluster --save_model --max_expert_num 16 --adaptive_experts --gate_type gated_multi_gate --save_model --dw;

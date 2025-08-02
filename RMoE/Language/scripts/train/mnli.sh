moe_layers="10"



# DynMoE (Ours)
#python search_glue_no_trainer.py --model_name_or_path bert-large-cased --task_name mnli --to_MoE --num_experts 8 --moe_layers $moe_layers --expert_repeat 16 --random_cluster --max_expert_num 10 --adaptive_experts --gate_type gated_multi_gate --save_model;

python search_glue_no_trainer.py --model_name_or_path bert-large-cased --task_name mnli --to_MoE --num_experts 8 --moe_layers $moe_layers --expert_repeat 16 --random_cluster --save_model --max_expert_num 16 --adaptive_experts --gate_type gated_multi_gate --save_model --dw;

python search_glue_no_trainer.py --model_name_or_path bert-large-cased --task_name mrpc --to_MoE --num_experts 8 --moe_layers $moe_layers --expert_repeat 16 --random_cluster --save_model --max_expert_num 16 --adaptive_experts --gate_type gated_multi_gate --save_model --dw;

python search_glue_no_trainer.py --model_name_or_path bert-large-cased --task_name qnli --to_MoE --num_experts 8 --moe_layers $moe_layers --expert_repeat 16 --random_cluster --save_model --max_expert_num 16 --adaptive_experts --gate_type gated_multi_gate --save_model --dw;

python search_glue_no_trainer.py --model_name_or_path bert-large-cased --task_name rte --to_MoE --num_experts 8 --moe_layers $moe_layers --expert_repeat 16 --random_cluster --save_model --max_expert_num 16 --adaptive_experts --gate_type gated_multi_gate --save_model --dw;

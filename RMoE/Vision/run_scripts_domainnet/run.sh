

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset DomainNet --hparams '{"vanilla_ViT":false, "vit_type":"small", "router": "gated_multi_gate", "adaptive_experts":true, "max_expert_num": 8, "batch_size": 64}' --output_dir outputs-ours-adapt-8 --test_envs 2 --device 0 --seed 42 --save_model_every_checkpoint;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset DomainNet --hparams '{"vanilla_ViT":false, "vit_type":"small", "router": "gated_multi_gate", "adaptive_experts":true, "max_expert_num": 8, "batch_size": 64}' --output_dir outputs-ours-adapt-8 --test_envs 3 --device 0 --seed 42 --save_model_every_checkpoint;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset DomainNet --hparams '{"vanilla_ViT":false, "vit_type":"small", "router": "gated_multi_gate", "adaptive_experts":true, "max_expert_num": 8, "batch_size": 64}' --output_dir outputs-ours-adapt-8 --test_envs 4 --device 0 --seed 42 --save_model_every_checkpoint;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset DomainNet --hparams '{"vanilla_ViT":false, "vit_type":"small", "router": "gated_multi_gate", "adaptive_experts":true, "max_expert_num": 8, "batch_size": 64}' --output_dir outputs-ours-adapt-8 --test_envs 5 --device 0 --seed 42 --save_model_every_checkpoint;
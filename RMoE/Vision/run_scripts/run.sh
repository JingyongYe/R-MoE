python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 0 --device 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 1 --device 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 2 --device 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 3 --device 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 0 --device 1 --seed 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 1 --device 1 --seed 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 2 --device 1 --seed 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 3 --device 1 --seed 1;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 0 --device 1 --seed 2;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 1 --device 1 --seed 2;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 2 --device 1 --seed 2;

python3 -m domainbed.scripts.train --data_dir=./domainbed/data --algorithm GMOE --dataset PACS --hparams '{"vanilla_ViT":false, "vit_type":"small", "topk": 1, "num_experts": 6, "router": "top"}' --output_dir output-top --test_envs 3 --device 1 --seed 2;
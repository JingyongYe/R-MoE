# R-MoE: Voting for Stability: A Social Choice Framework for Regulated Mixture-of-Experts

This repository contains the official implementation for the paper "Voting for Stability: A Social Choice Framework for Regulated Mixture-of-Experts".

For peer review, the code is available at: [https://anonymous.4open.science/r/R-MoE-E3DC](https://anonymous.4open.science/r/R-MoE-E3DC)

## Abstract

Mixture-of-Experts (MoE) training is notoriously difficult, caught between fostering expert specialization and ensuring balanced computation. We introduce a novel perspective, Regulated MoE (RMoE), that recasts this problem through the lens of multi-agent systems. Our primary contribution is the concept of expert committee stability, where we argue that common failure modes like routing collapse are symptoms of a fundamentally unstable routing policy. We then present two synergistic mechanisms, a **Phased Curriculum** for the load-balancing loss and **Stateful Fusion** for the expert weighting, as a practical and principled means to achieve this stability. Extensive experiments on the GLUE and DomainBed benchmarks show that RMoE significantly outperforms standard MoE and dynamic routing baselines.

## Environment Setup

1.  **Install PyTorch:**
    ```bash
    pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
    ```

2.  **Install Custom Tutel Module:**
    Our implementation uses a modified version of the Tutel library. Please install it from the local directory.
    ```bash
    cd RMoE/tutel
    pip3 install ./
    cd ../.. 
    ```

3.  **Install Dependencies:**
    Install the necessary packages for the language and vision tasks.
    ```bash
    pip3 install -r RMoE/Language/requirements.txt
    pip3 install -r RMoE/Vision/requirements.txt
    ```

4.  **Download Vision Datasets:**
    For vision experiments, download the datasets using the provided script.
    ```bash
    python3 RMoE/Vision/domainbed/scripts/download --data_dir=./RMoE/Vision/domainbed/data
    ```

## Reproducing Results

We provide scripts to reproduce the results reported in the paper for both GLUE and DomainBed benchmarks.

### GLUE Benchmark (Language)

The training scripts for language tasks are located in `RMoE/Language/scripts/train/`. You can run them to reproduce the results. For example:

-   **CoLA:** `bash RMoE/Language/scripts/train/cola_dw.sh`
-   **MNLI:** `bash RMoE/Language/scripts/train/mnli_dw.sh`
-   **MRPC:** `bash RMoE/Language/scripts/train/mrpc_dw.sh`
-   **QNLI:** `bash RMoE/Language/scripts/train/qnli_dw.sh`
-   **RTE:** `bash RMoE/Language/scripts/train/rte_dw.sh`

### DomainBed Benchmark (Vision)

The training scripts for vision tasks are located in `RMoE/Vision/`. You can run them to reproduce the results. For example:

-   **PACS:** `bash RMoE/Vision/run_scripts/pacs_dw.sh`
-   **VLCS:** `bash RMoE/Vision/run_scripts_vlcs/vlcs_dw.sh`
-   **OfficeHome:** `bash RMoE/Vision/run_scripts_office_home/office_home_dw.sh`
-   **DomainNet:** `bash RMoE/Vision/run_scripts_domainnet/domainnet_dw.sh`

After training, you can collect the results by running:
```bash
python3 -m RMoE.Vision.domainbed.scripts.collect_results --input_dir=${output_dir}
```
(Replace `${output_dir}` with the actual output directory specified in the training script).

## Main Results

### GLUE Benchmark

Performance on the GLUE development set. RMoE shows consistent improvements over strong baselines.

| Model        | COLA           | MRPC           | QNLI           | MNLI           | RTE            |
|--------------|----------------|----------------|----------------|----------------|----------------|
| MoE Baseline | 64.30          | 89.94          | 92.49          | 86.61          | 74.07          |
| DynMoE       | 65.17          | 90.64          | 92.59          | 86.37          | 73.41          |
| **RMoE (Ours)**  | **66.69**      | **91.55**      | **93.18**      | **88.29**      | **75.45**      |

### Domain Generalization on Vision Tasks

Accuracy on domain generalization benchmarks (PACS, VLCS, OfficeHome, DomainNet).

| Model        | PACS           | VLCS           | OfficeHome     | DomainNet      |
|--------------|----------------|----------------|----------------|----------------|
| GMoE         | 88.1           | 80.2           | 74.2           | 48.7           |
| DynMoE       | 88.4           | 79.4           | 73.6           | 47.4           |
| **RMoE (Ours)**  | **88.8**       | **81.5**       | **74.5**       | **49.1**       |

## Acknowledgement

Our work builds upon several amazing projects. We would like to thank the authors of:
- [DynMoE](https://github.com/LINs-lab/DynMoE)
- [tutel](https://github.com/microsoft/tutel)
- [DeepSpeed](https://github.com/microsoft/DeepSpeed)
- [GMoE](https://github.com/Luodian/Generalizable-Mixture-of-Experts)
- [EMoE](https://github.com/qiuzh20/EMoE)
- [MoE-LLaVA](https://github.com/PKU-YuanGroup/MoE-LLaVA)
- [GLUE-X](https://github.com/YangLinyi/GLUE-X)
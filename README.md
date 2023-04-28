# lm-parallelism
## Setup Environment
```bash
conda create -n deepspeed python=3.9.* -y
conda activate deepspeed
chmod +x -R scripts
scripts/setup/setup.sh
```

## Run
- Let create accelerator config 
```bash
accelerate config
```
- Answer all questions. There is a deepspeed config sample existing in `src/configs/deepspeed`. If you want to use it, pass this config path when answering the question for acclerate config creation. If not, answer no when it asks for the path to existing config file and answer the question to create another deepspeed config 
- After answering, the config file is saved to cache, let move to next step 
### Finetune summarization with `t5-large`
```bash
scripts/run/run_t5_ds.sh
```
### Pretrain causual language model with `opt_1.3b`
```bash
scripts/run/run_opt_ds.sh
```

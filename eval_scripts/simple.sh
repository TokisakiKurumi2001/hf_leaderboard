BASE_PATH=${1}
CKPT_PATH_BASE=${2}

PYTHONPATH=${BASE_PATH} python3 $BASE_PATH/main.py \
    --model hf-causal \
    --model_args pretrained=$CKPT_PATH_BASE/results/tinyllama2/train/alpaca/minillm/tinyllama2-7B/-llama2-7B-llama2-7B/bs2-lr5e-06-G4-N2-NN1-lm1-len512/pe4_rs0.5_nr256_ln_sr_tm0.2/5000 \
    --tasks arc_challenge \
    --num_fewshot 25 \
    --write_out \
    --device cuda:0
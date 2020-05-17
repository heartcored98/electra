export CUDA_VISIBLE_DEVICES=0
export DATA_DIR=dataset
export MODEL_NAME=electra_small_owt
export MODEL_SIZE=small
export NUM_TRIALS=5

echo $DATA_DIR

python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["mrpc"], "num_trials": 5}'

# python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": ${MODEL_SIZE}, "task_names": ["sts"], "num_trials": ${NUM_TRIALS}'
# python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": ${MODEL_SIZE}, "task_names": ["qqp"], "num_trials": ${NUM_TRIALS}'
# python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": ${MODEL_SIZE}, "task_names": ["mnli"], "num_trials": ${NUM_TRIALS}'
# python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": ${MODEL_SIZE}, "task_names": ["qnli"], "num_trials": ${NUM_TRIALS}'
# python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": ${MODEL_SIZE}, "task_names": ["rte"], "num_trials": ${NUM_TRIALS}'
# python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": ${MODEL_SIZE}, "task_names": ["sst"], "num_trials": ${NUM_TRIALS}'
# python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": ${MODEL_SIZE}, "task_names": ["cola"], "num_trials": ${NUM_TRIALS}'

export CUDA_VISIBLE_DEVICES=3
export DATA_DIR=dataset
export MODEL_NAME=electra_small_owt
export MODEL_SIZE=small

echo $DATA_DIR

python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["mrpc"], "num_trials": 1}'
python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["sts"], "num_trials": 1}'
python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["qqp"], "num_trials": 1}'
python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["mnli"], "num_trials": 1}'
python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["qnli"], "num_trials": 1}'
python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["rte"], "num_trials": 1}'
python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["sst"], "num_trials": 1}'
python run_finetuning.py --data-dir $DATA_DIR --model-name $MODEL_NAME --hparams '{"model_size": "'$MODEL_SIZE'", "task_names": ["cola"], "num_trials": 1}'

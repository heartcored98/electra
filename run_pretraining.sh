export CUDA_VISIBLE_DEVICES=1

python run_pretraining.py --data-dir dataset/ \
--model-name electra_small_owt_h1 \
--hparams '{"keep_checkpoint_max": 0, "save_checkpoints_steps": 20000, "generator_hidden_size":1.0}'

#, "train_batch_size":256, "learning_rate":2.5e-4}' \

accelerate launch src/t5/t5_summarization.py \
    --model_name_or_path t5-large \
    --dataset_name cnn_dailymail \
    --dataset_config "3.0.0" \
    --source_prefix "summarize: " \
    --output_dir models/t5-summarization-ds \
    --pad_to_max_length \
    --max_source_length 1024 \
    --max_target_length 512 \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 4 \
    --with_tracking \
    --report_to tensorboard

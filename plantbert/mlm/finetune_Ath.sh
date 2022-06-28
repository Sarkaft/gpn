WANDB_PROJECT=PlantBERT_MLM_512 python ./run_mlm_custom.py \
    --report_to wandb \
    --run_name ConvNet_ftAth \
    --do_train \
    --do_eval \
    --train_fasta_path ../../data/mlm/genomes/all.spike_target_0.5.contigs.parquet \
    --validation_file ../../data/mlm/windows/val/512/256/seqs.txt \
    --model_type ConvNet \
    --line_by_line True \
    --window_size 512 \
    --learning_rate 1e-3 \
    --save_strategy steps \
    --save_steps 100000 \
    --max_steps 500000 \
    --evaluation_strategy steps \
    --eval_steps 100000 \
    --dataloader_num_workers 8 \
    --preprocessing_num_workers 8 \
    --warmup_steps 10000 \
    --logging_steps 100000 \
    --output_dir results_512_convnet_ftAth \
    --per_device_train_batch_size 250 \
    --per_device_eval_batch_size 250 \
    --gradient_accumulation_steps 1 \
    --fp16 \
    --weight_decay 0.01 \
    --optim adamw_torch \
    --adam_epsilon 1e-4 \
    --seed 53 \
    --prediction_loss_only True \
    --lr_scheduler_type constant_with_warmup \
    --tokenizer_name ../../data/mlm/tokenizer_bare \
    --resume_from_checkpoint ./results_512_convnet_ftAth/checkpoint-200000 \
    --ignore_data_skip \

    #--model_name_or_path ./results_512_convnet/checkpoint-1000000/ \

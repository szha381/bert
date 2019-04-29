export BERT_BASE_DIR=/home/zs138667/bert_tutorial/chinese_L-12_H-768_A-12
export MY_DATASET=/home/zs138667/bert/dataset
export MODEL_DIR=/home/zs138667/bert_models

python run_classifier.py \
  --task_name=post \ # 自己添加 processor 在 processors 字典里的 key 名
  --do_train=true \
  --do_eval=true \
  --dopredict=true \
  --data_dir=$MY_DATASET \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \ # 模型参数
  --train_batch_size=32 \
  --learning_rate=3e-5 \
  --num_train_epochs=2.0 \
  --output_dir=MODEL_DIR # 模型输出路径

dataset=''

python -m nmt.nmt \
    --src=de --tgt=en \
    --hparams_path=nmt/standard_hparams/wmt16_gnmt_4_layer.json \
    --out_dir=nmt/deen_gnmt \
    --vocab_prefix=$dataset/vocab.bpe.32000 \
    --train_prefix=$dataset/train.tok.clean.bpe.32000 \
    --dev_prefix=$dataset/newstest2013.tok.bpe.32000 \
    --test_prefix=$dataset/newstest2015.tok.bpe.32000

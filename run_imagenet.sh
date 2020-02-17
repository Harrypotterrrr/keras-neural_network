CUDA_VISIBLE_DEVICES='0,1,2,3' python -m torch.distributed.launch --nproc_per_node=4 train_meta_learning_imagenet.py \
                                   -a "resnet18" \
                                   --data "/media/ssd1/ilsvrc12/splits" \
                                   --tmp "results/imagenet-epoch120-weight1-alpha1" \
                                   --batch-size "64" \
                                   --wd "1e-4" \
                                   --epochs "120" \
                                   --lr "0.1" \
                                   --alpha "1."
                                   --epsilon "1e-2" \
                                   --warmup "5"


export tl_clusters="v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v10,v21,v22,v23"
for i in $(echo $tl_clusters | sed "s/,/ /g")
do
    # call your procedure/other scripts here below
    printf  "$i: " >> /home2/palakons/track_cluster_usage.log
    ssh $i nvidia-smi -L  >> /home2/palakons/track_gpu_model.log
done 
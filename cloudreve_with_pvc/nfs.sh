helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
helm install cloudreve-nfs -n cloudreve  --create-namespace  nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set image.repository=scjtqs/k8s \
    --set image.tag=nfs-subdir-external-provisioner-v4.0.2 \
    --set nfs.server=192.168.50.112 \
    --set nfs.path=/volume4/cloudreve-data --set storageClass.name=cloudreve-nfs  --set storageClass.provisionerName=cloudreve-nfs

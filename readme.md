# 通过k8s方式部署 cloudreve
> + 依赖 k8s 1.23 
> + cert-manager 1.9.1

### 部署方式
1. `hostpath`：直接挂载宿主机的物理地址。无外部存储的单节点，可以用该方法体验。多节点的，需要用`nodeSelector` 参数绑定指定的node机器，防止节点飘逸到其他机器上去了。
> 配置文件样例在 `cloudreve_hostpath`文件夹中，
> 
> 部署顺序： `conf.yaml` -> `deploment.yaml` -> `service.yaml` -> `ingress.yaml`
2. 直接使用nfs挂载：不用配置pvc，直接在deploment中进行挂载nfs路径。
> 配置文件样例在 `cloudreve_nfs`文件夹中，
> 
> 部署顺序： `conf.yaml` -> `deploment.yaml` -> `service.yaml` -> `ingress.yaml`
3. 标准的pvc方式： 标准的pvc方式，可以支持挂载多种存储后端，这里以nfs的后端存储为demo。
> 配置文件样例在 `cloudreve_with_pvc`文件夹中，
> 
> 部署顺序：`nfs.sh` -> `pvc.yaml` -> `conf.yaml` -> `deploment.yaml` -> `service.yaml` -> `ingress.yaml`
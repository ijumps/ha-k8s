# Caicloud cabin dockerfile.
FROM ansible/ansible:centos7

RUN pip install -i https://mirrors.aliyun.com/pypi/simple ansible && \
    yum install -y http://7xli2p.dl1.z0.glb.clouddn.com/kubectl-1.7.0-0.x86_64.rpm http://7xli2p.dl1.z0.glb.clouddn.com/kubeadm-1.7.0-0.x86_64.rpm http://7xli2p.dl1.z0.glb.clouddn.com/kubelet-1.7.0-0.x86_64.rpm http://7xli2p.dl1.z0.glb.clouddn.com/kubernetes-cni-0.5.1-0.x86_64.rpm python-netaddr

RUN echo "source /etc/bash_completion" >> /etc/bash.bashrc && \
    echo "source <(kubectl completion bash)" >> /etc/bash.bashrc

COPY . /playbook

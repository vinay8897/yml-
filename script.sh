kops create cluster --name=k8sb03vinay.xyz \
--state=s3://k8sb03vinay.xyz --zones=us-east-1a,us-east-1b,us-east-1c \
--node-count= 3 --master-count=3 --node-size=t3.medium --master-size=t3.medium \
--master-zones=us-east-1a,us-east-1b,us-east-1c --master-volume-size 10 --node-volume-size 10 \
—ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=k8sb03vinay.xyz  --dry-run --output yaml


kops create cluster --name=k8sb03vinay.xyz \
--state=s3://k8sb03vinay.xyz --zones=us-east-1a,us-east-1b,us-east-1c \
--node-count=3 --master-count=1 --node-size=t3.medium --master-size=t3.medium \
--master-zones=us-east-1a,us-east-1b,us-east-1c --master-volume-size 10 --node-volume-size 10 \
--ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=k8sbatch17.xyz --dry-run --output yaml > cluster.yaml
kops create cluster --name=k8sb03vinay.xyz --state=s3://k8sb03vinay.xyz --zones=us-east-1a --node-count=2 --node-size=t2.micro --master-size=t2.small --master-volume-size 20 --node-volume-size 10 --dns-zone=k8sb03vinay.xyz --yes

kops delete cluster --name=k8sb03vinay.xyz --state=s3://k8sb03vinay.xyz --zones=us-east-1a --node-count=2 --node-size=t2.micro --master-size=t2.small --master-volume-size 20 --node-volume-size 10 --dns-zone=k8sb03vinay.xyz --yes
kops validate cluster --state=s3://k8sb03vinay.xyz
# cluster-autoscaling-karpenter-rolling-update


1.For Cluster Autoscaling:

Create karpenter provisoner for autoscaling the nodes

kubectl apply -f provisoner.yml

To Increase the Memory and CPU we are deploying nginx with high CPU and memory Unit

kubectl apply -f deployer.yml

2.For Rolling Update:

Create service for nginx deployment 

kubectl apply -f rollingupdate-svc.yml

Create deployment with one image for nginx deployment 

kubectl apply -f rollingupdate-deploy-v1.yml

Create Redeployment with updated image for nginx deployment 

kubectl apply -f rollingupdate-deploy-v2.yml

Using Rollout undo command you can rollout to previous deployment if any issue arise in current deployment 

kubectl rollout undo deployment/nginx-deployment

You can view history of deployment with revision number

kubectl rollout history deployment/nginx-deployment

Using Rollout undo --to-revision=<revison-number> tag you can rollout to particular version

kubectl rollout undo deployment/nginx-deployment --to-revision=<revison-number>
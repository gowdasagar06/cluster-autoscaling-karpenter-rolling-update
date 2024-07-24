kubectl apply -f rollingupdate-svc.yml

kubectl apply -f rollingupdate-deploy-v1.yml

kubectl apply -f rollingupdate-deploy-v2.yml

kubectl rollout undo deployment/nginx-deployment

kubectl rollout history deployment/nginx-deployment

kubectl rollout undo deployment/nginx-deployment --to-revision=<revsion-number>
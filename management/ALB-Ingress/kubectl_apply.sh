# 의존성에 의해 cert-manager 먼저 생성
kubectl apply -f cert-manager.yaml

# cert-manager 구성 후 aws-load-balancer-controller 생성
kubectl apply -f alb-controller.yaml

# test-ingress-alb 네임스페이스 생성
kubectl create ns test-ingress-alb

# deployment 생성
kubectl apply -f test-deployment.yaml

# IngressClass 생성
kubectl apply -f alb-class.yaml

# Ingress 생성
kubectl apply -f test-ingress.yaml
# resource "helm_release" "my-helm-chart" {
#   name        = "my-helm-chart"
#   chart       = "./my-helm-chart"
#   max_history = 3
#   wait             = true
#   reset_values     = true

#   set {
#     name  = "clusterName"
#     value = aws_eks_cluster.demo.id
#   }

#   set {
#     name  = "clusterEndpoint"
#     value = aws_eks_cluster.demo.endpoint
#   }

#   depends_on = [aws_eks_node_group.private-nodes]
# }


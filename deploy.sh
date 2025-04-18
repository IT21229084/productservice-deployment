#!/bin/bash
set -e

REGION="eu-north-1"               # 🔁 Update if needed
CLUSTER_NAME="product-cluster"  # 🔁 Replace with your actual cluster name

echo "⚙️ Switching to correct cluster..."
aws eks --region "$REGION" update-kubeconfig --name "$CLUSTER_NAME"

echo "🚀 Applying K8s resources..."
kubectl apply -k ./k8s

echo "✅ Deployment complete!"

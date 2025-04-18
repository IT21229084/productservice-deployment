#!/bin/bash

set -e

echo "⚙️ Switching to correct cluster..."
aws eks --region <your-region> update-kubeconfig --name <your-cluster-name>

echo "🚀 Applying K8s resources..."
kubectl apply -k ./k8s

echo "✅ Deployment complete!"

# Deploy trivy-operator from Helm

helm upgrade --install --wait \
  "trivy-operator" \
  "aqua/trivy-operator" \
  --namespace "trivy-system" \
  --set="trivy.ignoreUnfixed=true" \
  --version "0.13.2" \
  --create-namespace
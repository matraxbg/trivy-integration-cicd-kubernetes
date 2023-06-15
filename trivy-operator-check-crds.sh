# Example commands on how to get vulnerability reports, exposed secrets, RBAC assessments
# and describe them

kubectl get vulnerabilityreports -A # Gets all vulnerability reports
kubectl get exposedsecrets -A # Gets all vulnerability reports
kubectl get rbacassessments -A # Gets all RBAC assessments

kubectl describe vulnerabilityreport <vulnerability-report-name> -n <namespace> # Describes vulnerability report in a certain namespace
kubectl describe exposedsecret <exposed-secret-name> -n <namespace> # Describes exposed secret in a certain namespace
kubectl describe rbacassessment <exposed-secret-name> -n <namespace> # Describes RBAC assessment in a certain namespace

kubectl get vulnerabilityreport <vulnerability-report-name> -n <namespace> -o yaml # Outputs vulnerability report info in a yaml
kubectl get exposedsecret <exposed-secret-name> -n <namespace> -o yaml # Outputs exposed secret info in a yaml
kubectl get rbacassessment <exposed-secret-name> -n <namespace> -o yaml # Outputs RBAC assessment info in a yaml
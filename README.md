# Lab 3 — hello-app on Kubernetes with Terraform

**Name:** Suchit  
**Roll Number:** 261100680008

## Part 4: Reusable module with dev and prod environments

Created a reusable `hello-app` Terraform module and used it in two separate environments:

- **Dev:** Namespace `dev`, image tag `v2`, 3 replicas, Service port `8080`.
- **Prod:** Namespace `prod`, image tag `v2`, 3 replicas, Service port `8090`.

Command:
```powershell
kubectl get svc -A
```

Output:
```text
NAMESPACE     NAME         TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)                  AGE
default       kubernetes   ClusterIP      10.96.0.1       <none>        443/TCP                  3d17h
dev           hello-app    LoadBalancer   10.96.130.108   172.21.0.7    8080:32377/TCP           13m
kube-system   kube-dns     ClusterIP      10.96.0.10      <none>        53/UDP,53/TCP,9153/TCP   3d17h
prod          hello-app    LoadBalancer   10.96.93.206    172.21.0.8    8090:32068/TCP           29m
```

Both environments were deployed successfully using their separate Terraform configurations and state files.

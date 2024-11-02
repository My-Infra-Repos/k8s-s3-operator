# K8s S3 Operator
This is the basic operator from k8s which can be used to conmtrol your S3 buckets in AWS

## Deploying to cluster
#### Either create base64 encoded secrets in kubernetes for your AWS Credentials and pass to operator.yaml
### OR
#### Apply s3 access policy to node's IAM role
  ```
  1. kubectl apply -f example/operator.yaml
  2. kubectl apply -f example/cr.yaml
  ```
  
  ### Note: 
  1. If namespace CR was deployed in is deleted, the s3 bucket gets deleted.
  2. If the CR from the namespace is deleted, the s3 bucket gets deleted
----

## TODO

#### 1. S3 sync


### Messy Diagram ( need to clean this up )
![alt text](https://github.com/praveen1664/s3-operator/blob/master/diagram/s3-operator.png)

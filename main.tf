module "dev-infra" {
    source = "./Infra-app"
    instance_type = "t2.micro"
    ami_instance = "ami-020cba7c55df1f615"
    env = "dev"
    bucket_name = "twsinfra"
    instance_count = 1
    root = 10
    hash_key = "studentID"

}
module "prod-infra" {
    source = "./Infra-app"
    instance_type = "t2.medium"
    ami_instance = "ami-020cba7c55df1f615"
    env = "dev"
    bucket_name = "twsinfra"
    instance_count = 2
    root = 10
    hash_key = "studentID"
    
}
module "stage-infra" {
    source = "./Infra-app"
    instance_type = "t2.micro"
    ami_instance = "ami-020cba7c55df1f615"
    env = "dev"
    bucket_name = "twsinfra"
    instance_count = 3
    root = 10
    hash_key = "studentID"
    
}
module "dev-infra" {
    source = "./Infra-app"
    instance_type = "t2.micro"
    ami_instance = "ami-020cba7c55df1f615"
    env = "dev"
    bucket_name = "tws_infra12"
    instance_count = 1
    root = 10
    hash_key = "student_id"
}
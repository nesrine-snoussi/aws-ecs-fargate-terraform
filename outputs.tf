output "vpc_id" {
 value = module.vpc.vpc_id
}

output "subnet_id" {
 value = module.vpc.subnet_id
}

output "ecs_cluster_arn" {
 value = module.ecs.ecs_cluster_arn
}

output "ecr_repository_url" {
 value = module.ecr.ecr_repository_url
}

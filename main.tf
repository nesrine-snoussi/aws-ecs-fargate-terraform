module "vpc" {
 source = "./modules/vpc"
 
}

module "ecs" {
 source = "./modules/ecs"
 
}

module "ecr" {
 source = "./modules/ecr"
 
}

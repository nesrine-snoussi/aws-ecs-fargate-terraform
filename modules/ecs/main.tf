resource "aws_ecs_cluster" "ecs-cluster" {
 name = "ecs-cluster"
}

resource "aws_ecs_service" "svc" {
 name            = "golang-Service"
 cluster         = aws_ecs_cluster.ecs-cluster.id
 task_definition = aws_ecs_task_definition.task.id
 desired_count   = 2
 launch_type     = "FARGATE"

 network_configuration {
    subnets          = var.subnet_ids
    security_groups = [aws_security_group.sg1.id]
    assign_public_ip = true
 }

 load_balancer {
    target_group_arn = aws_lb_target_group.tg-group.arn
    container_name   = "golang-container"
    container_port   = "5000"
 }
}

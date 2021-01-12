[
    {
      "name": "pink-slon",
      "image": "${REPOSITORY_URL}:latest",
      "cpu": 10,
      "memory": 256,
      "essential": true,
      "portMappings": [
        {
          "containerPort": 80
        }
      ],
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": { 
          "awslogs-group" : "/ecs/frontend-container",
          "awslogs-region": "us-east-1"
        }
      }
    }
]
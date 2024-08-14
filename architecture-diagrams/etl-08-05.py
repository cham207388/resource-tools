from diagrams import Diagram, Cluster, Edge
from diagrams.aws.compute import Lambda
from diagrams.aws.database import RDS
from diagrams.aws.integration import Eventbridge
from diagrams.aws.management import Cloudwatch
from diagrams.aws.security import IAMRole, SecretsManager
from diagrams.aws.compute import ECR
from diagrams.onprem.client import User

with Diagram("AWS Lambda with ECR and RDS", show=False):
    user = User("User")

    with Cluster("AWS"):
        ecr = ECR("ECR Repository")
        sm = SecretsManager("Secrets Manager")

        with Cluster("IAM Roles"):
            iam_role = IAMRole("Lambda Execution Role")
            iam_policy = IAMRole("IAM Policy")

        with Cluster("RDS Cluster"):
            rds = RDS("PostgreSQL")

        with Cluster("Lambda Function"):
            lambda_func = Lambda("Lambda Function")
            eventbridge_rule = Eventbridge("CloudWatch Event Rule")

        cloudwatch = Cloudwatch("CloudWatch Logs")

    user >> Edge(label="Push Docker Image") >> ecr
    ecr >> Edge(label="Trigger Lambda Deployment") >> lambda_func
    eventbridge_rule >> Edge(label="Invoke Lambda") >> lambda_func
    lambda_func >> Edge(label="Connect to") >> rds
    lambda_func >> Edge(label="Read Secrets") >> sm
    lambda_func >> Edge(label="Logs") >> cloudwatch
    iam_role >> lambda_func
    iam_policy >> iam_role

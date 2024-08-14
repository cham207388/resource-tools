from diagrams import Cluster, Diagram
from diagrams.aws.compute import Lambda
from diagrams.aws.database import RDS
from diagrams.aws.integration import Eventbridge
from diagrams.aws.management import Cloudwatch
from diagrams.aws.network import VPC, PrivateSubnet, PublicSubnet, NATGateway, InternetGateway
from diagrams.aws.storage import S3

with Diagram("Event bridge - Lambda - Postgres", show=False):
    with Cluster("VPC"):
        igw = InternetGateway("Internet Gateway")

        with Cluster("Public Subnet"):
            pub_subnet = PublicSubnet("Public Subnet")
            nat = NATGateway("NAT Gateway")

        with Cluster("Private Subnet"):
            priv_subnet = PrivateSubnet("Private Subnet")
            lambda_func = Lambda("Lambda Function")
            rds = RDS("PostgreSQL")

        igw >> pub_subnet >> nat
        priv_subnet >> nat

    s3 = S3("Lambda Layer S3 Bucket")
    eventbridge = Eventbridge("EventBridge Rule")
    cloudwatch = Cloudwatch("CloudWatch")

    cloudwatch >> eventbridge >> lambda_func
    lambda_func >> rds
    lambda_func >> s3
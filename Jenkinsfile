pipeline {
    agent none
    stages {
        stage('Create EC2') {
            agent {
                label 'ec2'
            }
            steps {
                sh 'terraform init'
                sh 'terraform apply -target=module.ec2 --auto-approve'
            }
        }
        stage('Create S3') {
            agent {
                label 's3'
            }
            steps {
                sh 'terraform init'
                sh 'terraform apply -target=module.s3 --auto-approve'

            }
        }
        stage('Create IAM User') {
            agent {
                label 'iam'
            }
            steps {
                sh 'terraform init'
                sh 'terraform apply -target=module.iam --auto-approve'
            }
        }
        stage('Create DynamoDB Table') {
            agent {
                label 'dynamodb'
            }
            steps {
                sh 'terraform init'
                sh 'terraform apply -target=module.dynamodb --auto-approve'
            }
        }
        stage('Create Github repo') {
            agent {
                label 'github'
            }
            steps {
                sh 'terraform init'
                sh 'terraform apply -target=module.github --auto-approve'
            }
        }
    }
    
}
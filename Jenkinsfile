pipeline {

    agent any

    tools {
        terraform 'Terraform'
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {

        stage('Checkout') {

            steps {

                checkout scm

            }

        }

        stage('Terraform Version') {

            steps {

                sh 'terraform version'

            }

        }

        stage('Terraform Init') {

            steps {

                sh 'terraform init'

            }

        }

        stage('Terraform Validate') {

            steps {

                sh 'terraform validate'

            }

        }

        stage('Terraform Plan') {

            steps {

                sh 'terraform plan'

            }

        }

        stage('Terraform Apply') {

            steps {

                input "Apply Terraform?"

                sh 'terraform apply -auto-approve'

            }

        }

    }

}
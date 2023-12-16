pipeline {
    agent any
    environment {
        PATH = "/var/lib/jenkins/.local/bin:$PATH"
    }
    stages {
        stage('git checkout') {
            steps {
                git branch: 'root_module', url: 'https://github.com/pankaj0129/ASG_terraform.git'
            }
        }
        stage('Credential-scanning') {
            steps {
                sh 'gitleaks detect -v'
            }
        }
        stage('Initialization') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Validation & Security Scanning') {
            parallel {
                stage('Validation') {
                    steps {
                        sh 'terraform validate'
                    }
                }
                stage('Static Code Analysis') {
                    steps {
                        // Run tflint and save the output to a file
                        sh 'tflint --format default | tee tflint_report.json'
                    }
                }
                stage('Security and Compliance') {
                    steps {
                        script {
                            sh 'checkov --directory /var/lib/jenkins/workspace/ASG_wrapper || true'
                        } 
                    }
                }
            }
        }
        stage('Infra Cost') {
            steps {
                withCredentials([string(credentialsId: 'INFRACOST_API_KEY', variable: 'INFRACOST_API_KEY')]) {
                    sh 'infracost breakdown --path . --format html > infracost_report.html'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
    }
}

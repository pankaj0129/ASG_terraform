// src/terraform-plan.groovy
def call() {
    pipeline {
        stages {
            stage('Terraform Plan') {
                steps {
                    sh 'terraform plan'
                }
            }
        }
    }
}


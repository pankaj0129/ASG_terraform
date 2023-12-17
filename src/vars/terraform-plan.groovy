// src/vars/terraformPlanPipeline.groovy
def call() {
    stage('Terraform Plan') {
        steps {
            sh 'terraform plan'
        }
    }
}


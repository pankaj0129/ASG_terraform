// File: src/vars/terraform-plan.groovy

def call() {
    stage('Terraform Plan') {
        steps {
            sh 'terraform plan'
        }
    }
}



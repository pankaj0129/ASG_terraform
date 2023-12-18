// File: src/vars/terraform-plan.groovy

def call() {
    stage('terraform-Plan') {
        steps {
            sh 'terraform plan'
        }
    }
}



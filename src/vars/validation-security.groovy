// src/vars/validationSecurityPipeline.groovy
def call() {
    stage('Validation & Security Scanning') {
        parallel {
            stage('Validation') {
                steps {
                    sh 'terraform validate'
                }
            }
            stage('Static Code Analysis') {
                steps {
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
}


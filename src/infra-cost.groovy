// src/infra-cost.groovy
def call() {
    pipeline {
        stages {
            stage('Infra Cost') {
                steps {
                    withCredentials([string(credentialsId: 'INFRACOST_API_KEY', variable: 'INFRACOST_API_KEY')]) {
                        sh 'infracost breakdown --path . --format html > infracost_report.html'
                    }
                }
            }
        }
    }
}

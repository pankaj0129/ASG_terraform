// src/vars/infraCostPipeline.groovy
def call() {
    stage('Infra Cost') {
        steps {
            withCredentials([string(credentialsId: 'INFRACOST_API_KEY', variable: 'INFRACOST_API_KEY')]) {
                sh 'infracost breakdown --path . --format html > infracost_report.html'
            }
        }
    }
}


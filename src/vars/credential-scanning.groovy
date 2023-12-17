// src/vars/credentialScanningPipeline.groovy
def call() {
    stage('Credential-scanning') {
        steps {
            sh 'gitleaks detect -v'
        }
    }
}


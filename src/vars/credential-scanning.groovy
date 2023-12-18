// File: src/vars/credential-scanning.groovy

def call() {
    stage('Credential-scanning') {
        steps {
            sh 'gitleaks detect -v'
        }
    }
}



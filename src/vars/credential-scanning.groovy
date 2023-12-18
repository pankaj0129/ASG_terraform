// File: src/vars/credential-scanning.groovy

def call() {
    stage('credential-scanning') {
        steps {
            sh 'gitleaks detect -v'
        }
    }
}



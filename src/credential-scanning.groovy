// src/credential-scanning.groovy
def call() {
    pipeline {
        stages {
            stage('Credential-scanning') {
                steps {
                    sh 'gitleaks detect -v'
                }
            }
        }
    }
}


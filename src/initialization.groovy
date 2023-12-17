// src/initialization.groovy
def call() {
    pipeline {
        stages {
            stage('Initialization') {
                steps {
                    sh 'terraform init'
                }
            }
        }
    }
}


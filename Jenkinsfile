@Library('global-pipeline') _
pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                script {
                    // Use the functions from the shared library
                    testSrc()
                }
            }
        }
    }
}

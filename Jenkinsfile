@Library('global-pipeline') _

pipeline {
    agent any 

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    // Import the CommonFuncs class from the shared library
                    // def commonFuncs = new org.common.CommonFuncs()
                    // Call the initialize function
                    common.initialize()
                }
            }
        }
        // Add more stages as needed
    }
}

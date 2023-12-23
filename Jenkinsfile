@Library('global-pipeline') _

pipeline {
    agent any 

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    import jenkins.model.*
                    jenkins = Jenkins.instance
                    // Import the CommonFuncs class from the shared library
                    // def commonFuncs = new org.common.CommonFuncs()
                    // Call the initialize function
                    Common.initialize()
                }
            }
        }
        // Add more stages as needed
    }
}

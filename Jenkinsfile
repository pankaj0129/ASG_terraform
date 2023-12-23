@Library('global-pipeline') _
import jenkins.model.*
jenkins = Jenkins.instance

pipeline {
    agent any 

    stages {
        stage('Terraform Init') {
            steps {
                script {
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

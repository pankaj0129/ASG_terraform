@Library('src') _

pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkoutPipeline()
            }
        }

        stage('Credential Scanning') {
            steps {
                credentialScanningPipeline()
            }
        }

        stage('Initialization') {
            steps {
                initializationPipeline()
            }
        }

        stage('Validation & Security Scanning') {
            steps {
                validationSecurityPipeline()
            }
        }

        stage('Infra Cost') {
            steps {
                infraCostPipeline()
            }
        }

        stage('Terraform Plan') {
            steps {
                terraformPlanPipeline()
            }
        }
    }
}

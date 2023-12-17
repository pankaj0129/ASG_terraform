@Library('src') _

pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout()
            }
        }

        stage('Credential Scanning') {
            steps {
                credentialScanning()
            }
        }

        stage('Initialization') {
            steps {
                initialization()
            }
        }

        stage('Validation & Security Scanning') {
            steps {
                validationSecurity()
            }
        }

        stage('Infra Cost') {
            steps {
                infraCost()
            }
        }

        stage('Terraform Plan') {
            steps {
                terraformPlan()
            }
        }
    }
}

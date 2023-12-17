@Library('terraform-ci@root_module') _

pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout()
                }
            }
        }

        stage('Credential Scanning') {
            steps {
                script {
                    credentialScanning()
                }
            }
        }

        stage('Initialization') {
            steps {
                script {
                    initialization()
                }
            }
        }

        stage('Validation & Security') {
            parallel {
                stage('Validation') {
                    steps {
                        script {
                            validationSecurity()
                        }
                    }
                }

                stage('Infra Cost') {
                    steps {
                        script {
                            infraCost()
                        }
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    terraformPlan()
                }
            }
        }
    }
}

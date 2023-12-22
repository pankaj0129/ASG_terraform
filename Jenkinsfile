@Library('terraform-ci-checks@src') _

pipeline {
    agent any
    environment {
        PATH = "/var/lib/jenkins/.local/bin:$PATH"
    }
    stages {
        stage('git checkout') {
            steps {
                gitCheckout(branch: 'root_module', url: 'https://github.com/pankaj0129/ASG_terraform.git')
            }
        }
        stage('Credential-scanning') {
            steps {
                checkCredentials()
            }
        }
        stage('Initialization') {
            steps {
                initializeTerraform()
            }
        }
        stage('Validation & Security Scanning') {
            parallel {
                stage('Validation') {
                    steps {
                        runTerraformValidation()
                    }
                }
                stage('Static Code Analysis') {
                    steps {
                        runStaticCodeAnalysis()
                    }
                }
                stage('Security and Compliance') {
                    steps {
                        runSecurityComplianceScan()
                    }
                }
            }
        }
        stage('Infra Cost') {
            steps {
                estimateInfraCost()
            }
        }
        stage('Terraform Plan') {
            steps {
                runTerraformPlan()
            }
        }
    }
}

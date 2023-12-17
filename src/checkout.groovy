// src/checkout.groovy
def call() {
    pipeline {
        agent any
        stages {
            stage('git checkout') {
                steps {
                    git branch: 'root_module', url: 'https://github.com/pankaj0129/ASG_terraform.git'
                }
            }
        }
    }
}


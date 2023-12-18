// File: src/vars/checkout.groovy

def call() {
    script {
        def scm = [
            branch: 'root_module',
            url: 'https://github.com/pankaj0129/ASG_terraform.git'
        ]
        checkout scm
    }
}



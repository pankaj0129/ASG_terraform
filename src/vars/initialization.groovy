// File: src/vars/initialization.groovy

def call() {
    stage('Initialization') {
        steps {
            sh 'terraform init'
        }
    }
}



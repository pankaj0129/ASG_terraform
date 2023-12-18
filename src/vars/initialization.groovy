// File: src/vars/initialization.groovy

def call() {
    stage('initialization') {
        steps {
            sh 'terraform init'
        }
    }
}



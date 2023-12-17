// src/vars/initializationPipeline.groovy
def call() {
    stage('Initialization') {
        steps {
            sh 'terraform init'
        }
    }
}


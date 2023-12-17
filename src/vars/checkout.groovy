// checkoutPipeline.groovy
def call() {
    stage('git checkout') {
        steps {
            git branch: 'root_module', url: 'https://github.com/pankaj0129/ASG_terraform.git'
        }
    }
}


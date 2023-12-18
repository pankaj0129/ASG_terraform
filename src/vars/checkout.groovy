def call() {
    stage('checkout') {
        steps {
            script {
                checkout([$class: 'GitSCM', branches: [[name: 'root_module']], userRemoteConfigs: [[url: 'https://github.com/pankaj0129/ASG_terraform.git']]])
            }
        }
    }
}




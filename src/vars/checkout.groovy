// checkoutPipeline.groovy
def call(Map scm) {
    stage('git checkout') {
        steps {
            script {
                checkout([$class: 'GitSCM', branches: [[name: scm.branch]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: scm.url]]])
            }
        }
    }
}


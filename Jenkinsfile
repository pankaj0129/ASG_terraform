@Library('terraform-ci@root_module') _

pipeline {
    agent any

    stages {
        checkoutPipeline()
        credentialScanningPipeline()
        initializationPipeline()
        validationSecurityPipeline()
        infraCostPipeline()
        terraformPlanPipeline()
    }
}

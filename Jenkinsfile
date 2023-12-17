@Library('terraform-ci@root_module') _

pipeline {
    agent any

    stages {
        checkout()
        credentialScanning()
        initialization()
        validationSecurity()
        infraCost()
        terraformPlan()
    }
}

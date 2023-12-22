// Import necessary libraries
import groovy.json.JsonSlurper

// Define functions for each stage
def gitCheckout(branch, url) {
    gitCheckout(branch: 'root_module', url: 'https://github.com/pankaj0129/ASG_terraform.git')
}

def checkCredentials() {
    sh 'gitleaks detect -v'
}

def initializeTerraform() {
    sh 'terraform init'
}

def runTerraformValidation() {
    sh 'terraform validate'
}

def runStaticCodeAnalysis() {
    // Run tflint and save the output to a file
    sh 'tflint --format default | tee tflint_report.json'
}

def runSecurityComplianceScan() {
    sh 'checkov --directory /var/lib/jenkins/workspace/ASG_wrapper || true'
}

def estimateInfraCost() {
    withCredentials([string(credentialsId: 'INFRACOST_API_KEY', variable: 'INFRACOST_API_KEY')]) {
        sh 'infracost breakdown --path . --format html > infracost_report.html'
    }
}

def runTerraformPlan() {
    sh 'terraform plan'
}

// ... add more functions if needed

pipeline {
  agent any
  environment {
    COMMIT_MSG = sh (script: """git log --format="medium" -1 ${GIT_COMMIT}""", returnStdout:true)
  }
  stages {
    stage('Commit_MSG') {
      steps {
        echo "The branch: ${BRANCH_NAME} and the build ${BUILD_NUMBER}"
        echo "Git commit_message : ${COMMIT_MSG}"
      }
    }
  }
}

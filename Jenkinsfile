pipeline {
  agent any
  environment {
    COMMIT_MSG_T = sh (script: """git log --format="medium" -1 ${GIT_COMMIT}""", returnStdout:true)
    COMMIT_MSG = sh (returnStdout: true, script: "git log -1 --pretty=%B").trim()
	FOLDER = """${BRANCH_NAME}-${COMMIT_MSG}"""
  }
  stages {
    stage('Commit_MSG') {
      steps {
        echo "The branch: ${BRANCH_NAME} and the build ${BUILD_NUMBER}"
	//sh ''' printenv '''
	echo "git commit msg: ${COMMIT_MSG}"
	echo " folder name: ${FOLDER}"
	sh (script: """git log --format="medium" -1 ${GIT_COMMIT}""") > ./commit_message.txt
	}
    }
  }
}

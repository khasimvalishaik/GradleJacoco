#!groovy
//node ('any') //
node {
def buildinfo
def git_commit
def jdkHome
def gradleHome
def git_tag
def git_branch
def fileList


stage('source'){
     cleanWs()
     /**dir('CC'){//
     //checkout(common library branch)//
     */
     dir('sega'){
     checkout scm
      environment {
  GIT_HASH = GIT_COMMIT.take(7)
}
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
          echo "the commit id is : ${GIT_HASH}"
     }
}


}

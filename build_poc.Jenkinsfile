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
     checkout([$class: 'GitSCM',
          branches: [[name: 'master']],
          extensions: [],
          userRemoteConfigs: [[url: 'https://github.com/jenkinsci/git-plugin']]])
     
     checkout scm
       git_commit = sh (${GIT_REVISION,length=8})
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
          echo "the commit id is : ${git_commit}"
    
}


}

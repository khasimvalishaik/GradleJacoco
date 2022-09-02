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
     
    checkout scm
      echo "GIT_SHA_SHORT=`git rev-parse --short=8 ${GIT_COMMIT}'"
       //git_commit = 
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
          echo "the commit id is : ${git_commit}"
   
}


}

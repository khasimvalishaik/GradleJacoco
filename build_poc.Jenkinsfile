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
       git_commit = git rev-parse --short=8 HEAD
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
          echo "the commit id is : ${git_commit}"
     }
}


}

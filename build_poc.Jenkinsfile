#!groovy
node ('buildnode1') {
def buildinfo
def git_commit
def jdkHome
def gradleHome
def git_tag
def git_branch
def fileList


stage('source'){
     cleanWs()
     dir('CC'){
     checkout()
     }
     
     dir('sega'){
     checkout scm
     git_commit = gitCommitShortHash(8)
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
     }
}


}
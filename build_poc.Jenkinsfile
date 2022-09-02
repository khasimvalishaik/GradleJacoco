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
 parameters {
        gitParameter name: 'REVISION',
                     type: 'PT_REVISION',
                     defaultValue: 'master'
    }

stage('source'){
     cleanWs()
     checkout([$class: 'GitSCM',
                          branches: [[name: "${params.REVISION}"]],
                          doGenerateSubmoduleConfigurations: false,
                          extensions: [],
                          gitTool: 'Default',
                          submoduleCfg: [],
                          userRemoteConfigs: [[url: 'https://github.com/jenkinsci/git-parameter-plugin.git']]
                        ])
     checkout scm
       //git_commit = 
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
          echo "the commit id is : ${git_commit}"
    
}


}

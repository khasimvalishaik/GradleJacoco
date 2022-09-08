#!groovy
//package org.jenkinsci.plugins.gitclient

node {
def buildinfo
def git_commit
def jdkHome
def gradleHome
def git_tag
def git_branch
def fileList
/* def tools {
      terraform 'Terraform-Jenkins'
  }*/

stage('source'){
     cleanWs()
     
    checkout scm
      
    git_commit = sh(returnStdout: true, script: 'git rev-parse --short=8 HEAD').trim()
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
          echo "the commit id is : ${git_commit}"
   
}


    stage('Terraform Init') {
      
        sh  'terraform init'
      
    }
    
    stage('Terraform plan') {
      
        sh 'terraform plan'
      
    }
    
    stage('Terraform Action') {
      
          sh returnStatus: true, script: 'terraform ${action} -auto-approve'
      
    }    



}

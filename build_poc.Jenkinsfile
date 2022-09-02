#!groovy
package org.jenkinsci.plugins.gitclient
//...

public interface GitClient {
//...
    Map<String, ObjectId> getRemoteReferences(String remoteRepoUrl, String pattern, boolean headsOnly, boolean tagsOnly) throws GitException, InterruptedException;
//...
}
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
      
    git_commit = ${GIT_REVISION,length=8}
     git_branch = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
     echo "The branch name is : ${git_branch}"
          echo "the commit id is : ${git_commit}"
   
}


}

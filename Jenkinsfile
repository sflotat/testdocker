node{
   def app

   stage('clone') {
   checkout scm
   }

   stage('build image') {
   app = docker.build("test/nginx")
   }

   stage('run image') {
     docker.image('test/nginx').withRun('-p 80:80') { c ->

     sh 'docker ps'
     sh 'curl localhost'

     }

   }
}

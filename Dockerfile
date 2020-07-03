FROM openjdk:8u212-jdk-alpine
COPY target/*SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Xmx400M","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--spring.profiles.active=docker"]



AKIAXHDEFLPI3ORVQXMV
CGu5JLz/5WK3OVuLQyrq9FsOY6iNU6jUCgfJbCpK

eksctl create cluster --name team5eks --version 1.15 --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 3

eksctl delete cluster --name team5eks

eksctl create cluster --name team5eks1 --version 1.15 --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 3 --region ap-northeast-1

aws eks update-kubeconfig --name team5eks --region ap-northeast-2 


1. 
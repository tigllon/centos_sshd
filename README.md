# centos_sshd
*SShd service enabled centos' docker image*<br/>
Docker Hub Repo -: https://hub.docker.com/repository/docker/tigllon/centos_sshd
## What's Unique About This Image 
Well , the uniqueness of this image is that it supports-only the key-based authentication which is very much good in context of security . Also, the way it takes the public key to store it in authorized_keys file (present inside /root/.ssh/ directory ) makes very much easy to make the use of it in the automation world tools like Ansible. 

##  How To Use It 
Well , it is pretty much easy and the same the way to deploy any container.Typically , we use docker [some options according to our custom need] [container name] image. We will make the use of same command but with one more extra option i.e -e (yup , you got right the --env option).. So ,it looks something like this
```
docker run -dit --name [name of conatiner you want to give] -e public_key=[your public key] [name of image] 
```
So,one of the way of providing the public key to public_key env option is
```
docker run -dit --name [name of conatainer] -e public_key="`cat (path to public key file)`" [image name]
```
Notice , the public_key option over there this is the only extra thing we have to do . The starting_script.sh will take public_key of the client from the $public_key shell environment variable and update it in /root/.ssh/authorized_keys file , and then we will be able to do ssh into it...
## So , Finally How it makes easy to use with the tools like Ansible ??
Well, as you seen above it takes the public key from the environment variable name $public_key , so if you know about Ansible there we have the module name docker for deploying containers and in that module we have option env in which we can pass the public_key of the client . But , if we have the image that contains the password then we can not make the use of it in automation . We have to manually , do the ssh over there.. 

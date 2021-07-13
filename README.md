# centos_sshd
sshd service enabled centos' docker image

<h1> What's Unique About This Image </h1>
Well , the uniqueness of this image is that it supports-only the key-based authentication which is very much good in context of security . Also, the way it takes the public key to store it in authorized_keys file (present inside /root/.ssh/ directory ) makes very much easy to make the use of it  in the automation world tools like Ansible.

<h1> How To Use It </h2>
Well , it is pretty much easy and the same the way to deploy any container.Typically , we use <i>docker [sum options according to our custom need] [container name] image</i>.
We will make the use of same command but with one more extra option i.e -e (yup , you got right the --env option).. So ,it looks something like this

<h4><b><i> docker run -dit --name [name of conatiner you want to give]  -e  public_key=[your public key]   [name of image] </i> </b></h4>

Notice , the public_key option over there this is the only extra thing we have to do . The starting_script.sh will take public_key of the client from the <b>$public_key</b> shell environment variable and update it in /root/.ssh/authorized_keys file , and then we will be able to do ssh into it...

<h1> So , Finally How it makes easy to use with the tools like Ansible ?? </h1>
Well, as you seen above it takes the public key from the environment variable name <b>$public_key</b> , so if you know about Ansible there we have the module name docker for deploying containers and in that module we have option env in which we can pass the public_key of the client . But , if we have the image that contains the password then we can not make the use of it in automation . We have to manually , do the ssh over there..



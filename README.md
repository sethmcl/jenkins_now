jenkins_now
===========

Quickly launch a jenkins instance, protected through SSH key authentication.

1. Install docker (https://docs.docker.com/installation/)
2. Create directory to use as `jenkins_home` -- this is where the Jenkins job configs and results will be stored, as well as plugins and other configuration data.
3. Set $JENKINS_HOME to point at the directory you created in step 2. For example:

```bash
export JENKINS_HOME=/var/jenkins/home
```

4. Launch Jenkins `./run.sh`

Access the Jenkins web UI
===========================

To access the Jenkins instance from another machine, you must set up an SSH tunnel:

```bash
ssh -f -N -L 8080:localhost:8080 user@<ip of jenkins machine>
```

You can now navigate to http://localhost:8080 to access Jenkins.

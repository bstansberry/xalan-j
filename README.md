This is a fork of the https://github.com/apache/xalan-j project, intended for use in producing bug fix releases from upstream Xalan 2.7.1.

How to build
------------
Switch to jdk 1.8

Add EE 8 or earlier servlet and ejb API jars to the classpath.

For example:

    export CLASSPATH=~/.m2/repository/org/jboss/spec/javax/ejb/jboss-ejb-api_3.2_spec/2.0.0.Final/jboss-ejb-api_3.2_spec-2.0.0.Final.jar: \
                     ~/.m2/repository/org/jboss/spec/javax/servlet/jboss-servlet-api_4.0_spec/2.0.0.Final/jboss-servlet-api_4.0_spec-2.0.0.Final.jar

Clean and build

    ./build.sh clean dist

Install in the local Maven repository
-------------------------------------
First update the pom files maven/pom-serializer.xml and maven/pom-xalan.xml as needed (e.g. to update the GAV version).

Then:

    maven/install.sh

Deploy to the repository.jboss.org Maven repository
---------------------------------------------------
First update the pom files maven/pom-serializer.xml and maven/pom-xalan.xml as needed (e.g. to update the GAV version).

Then:

    maven/deploy.sh


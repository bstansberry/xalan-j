# Script to deploy build output to JBoss Maven repository

# Deploy xalan.jar and source files
mvn org.apache.maven.plugins:maven-install-plugin:2.5.2::install-file \
                       -DpomFile=maven/pom-xalan.xml \
                       -Dfile=build/xalan.jar \
                       -Dsources=build/xalan-sources.jar

# Deploy serializer.jar
mvn org.apache.maven.plugins:maven-install-plugin:2.5.2::install-file \
                       -DpomFile=maven/pom-serializer.xml \
                       -Dfile=build/serializer.jar \
                       -Dsources=build/serializer-sources.jar

# Deploy the full source zip
mvn org.apache.maven.plugins:maven-install-plugin:2.5.2::install-file \
                       -DpomFile=maven/pom-xalan.xml \
                       -Dfile=build/xalan-j_2_7_1-src.zip \
                       -Dpackaging=zip \
                       -Dclassifier=source-release


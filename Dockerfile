FROM moussavdb/build-java

RUN mvn -v \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-clean-plugin -Dversion=3.1.0 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-compiler-plugin -Dversion=3.8.1 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-deploy-plugin -Dversion=2.8.2 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-failsafe-plugin -Dversion=2.22.1 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-install-plugin -Dversion=2.5.2 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-resources-plugin -Dversion=3.1.0 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-surefire-plugin -Dversion=2.22.2 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-verifier-plugin -Dversion=1.1 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-jar-plugin -Dversion=3.2.0 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-site-plugin -Dversion=3.7.1 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-antrun-plugin -Dversion=1.8 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-assembly-plugin -Dversion=3.2.0 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-dependency-plugin -Dversion=3.1.1 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-scm-plugin -Dversion=1.10.0 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-release-plugin -Dversion=2.5.3 \
&& mvn dependency:get -DgroupId=be.yildiz-games -DartifactId=parent -Dversion=3.0.10 -Dpackaging=pom\
&& mvn dependency:get -DgroupId=be.yildiz-games -DartifactId=common-compression -Dversion=2.0.6 \
&& mvn dependency:get -DgroupId=be.yildiz-games -DartifactId=common-configuration -Dversion=1.3.3 \
&& mvn dependency:get -DgroupId=org.sonatype.plugins -DartifactId=nexus-staging-maven-plugin -Dversion=1.6.8 \
&& mvn dependency:get -DgroupId=com.github.wvengen -DartifactId=proguard-maven-plugin -Dversion=2.0.14 \
&& mvn dependency:get -DgroupId=com.akathist.maven.plugins.launch4j -DartifactId=launch4j-maven-plugin -Dversion=1.7.21 \
&& mvn dependency:get -DgroupId=org.jacoco -DartifactId=jacoco-maven-plugin -Dversion=0.8.2 \
&& mvn dependency:get -DgroupId=org.codehaus.mojo -DartifactId=exec-maven-plugin -Dversion=1.6.0 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-source-plugin -Dversion=3.0.1 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-javadoc-plugin -Dversion=3.0.1 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-gpg-plugin -Dversion=1.6 \
&& mvn dependency:get -DgroupId=org.jooq -DartifactId=jooq-codegen-maven -Dversion=3.11.8 \
&& mvn dependency:get -DgroupId=org.pitest -DartifactId=pitest-maven -Dversion=1.2.4 \
&& mvn dependency:get -DgroupId=org.apache.maven.plugins -DartifactId=maven-enforcer-plugin -Dversion=1.4.1 \
&& mvn dependency:get -DgroupId=org.owasp -DartifactId=dependency-check-maven -Dversion=5.2.2 \
&& mvn dependency:get -DgroupId=pl.project13.maven -DartifactId=git-commit-id-plugin -Dversion=2.2.5 \
&& mvn dependency:get -DgroupId=org.junit.jupiter -DartifactId=junit-jupiter-engine -Dversion=5.6.0 \
&& mvn dependency:get -DgroupId=org.sonatype.plexus -DartifactId=plexus-cipher -Dversion=1.7 \
&& mvn dependency:get -DgroupId=org.apache.httpcomponents -DartifactId=httpclient -Dversion=4.5.5 \
&& mvn dependency:get -DgroupId=com.intellij -DartifactId=annotations -Dversion=9.0.4 \
&& mvn dependency:get -DgroupId=org.slf4j -DartifactId=slf4j-api -Dversion=1.7.30 \
&& mvn dependency:get -DgroupId=logkit -DartifactId=logkit -Dversion=1.0.1 \
&& mvn dependency:get -DgroupId=avalon-framework -DartifactId=avalon-framework -Dversion=4.1.3 \
&& mvn dependency:get -DgroupId=org.codehaus.mojo -DartifactId=build-helper-maven-plugin -Dversion=3.0.0 \
&& mvn dependency:get -DgroupId=org.codehaus.mojo -DartifactId=versions-maven-plugin -Dversion=2.5 \
&& mvn dependency:get -DgroupId=ch.qos.logback -DartifactId=logback-classic -Dversion=1.2.3 \
&& mvn dependency:get -DgroupId=org.apache.activemq -DartifactId=activemq-client -Dversion=5.15.10 \
&& mvn dependency:get -DgroupId=org.apache.activemq -DartifactId=activemq-broker -Dversion=5.15.10 \
&& mvn dependency:get -DgroupId=org.ow2.asm -DartifactId=asm -Dversion=7.0 \
&& mvn dependency:get -DgroupId=org.liquibase -DartifactId=liquibase-core -Dversion=3.8.0 \
&& mvn dependency:get -DgroupId=org.openjfx -DartifactId=javafx-graphics -Dversion=13.0.2 \
&& mvn dependency:get -DgroupId=net.java.dev.jna -DartifactId=jna -Dversion=5.5.0 \
&& mvn dependency:get -DgroupId=com.mchange -DartifactId=c3p0 -Dversion=0.9.5.2

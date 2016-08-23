#!/bin/bash

# instala dependencias que nao sao resolvidas pelo maven
mvn install:install-file -DgroupId=org.marc4j -DartifactId=marc4j -Dversion=2.5.1.beta -Dfile=jar/marc4j-2.5.1.beta.jar -Dpackaging=jar
mvn install:install-file -DgroupId=org.jzkit -DartifactId=jzkit2_z3950_plugin -Dversion=2.2.3 -Dfile=jar/jzkit2_z3950_plugin-2.2.3.jar -Dpackaging=jar
mvn install:install-file -DgroupId=br.org.biblivre -DartifactId=z3950server -Dversion=1.0.2 -Dfile=jar/z3950server-1.0.2.jar -Dpackaging=jar
mvn install:install-file -DgroupId=com.ibm.icu -DartifactId=normalizer -Dversion=2.6 -Dfile=jar/normalizer-2.6.jar -Dpackaging=jar
mvn install:install-file -DgroupId=com.lowagie -DartifactId=itext -Dversion=4.2.1 -Dfile=jar/itext-4.2.1.jar -Dpackaging=jar

# resolve dependencias e compila o projeto
mvn clean package


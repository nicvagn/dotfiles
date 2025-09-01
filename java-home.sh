#!/usr/bin/bash
# system var script for /etc/profile.d directory
# All large user and site specific environment customization should be placed in this 
# directory. All scripts in this directory called by /etc/profile using a for loop:
#for i in /etc/profile.d/*.sh ; do
#    if [ -r "$i" ]; then
#        . $i
#    fi
#done
#Use this to setup variables such as JAVA_HOME.

# strip out java-home value from that link and set it to JH var
export jbinary=`realpath /etc/alternatives/java`

export JAVA_HOME=`dirname $(dirname $jbinary)`
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/rt.jar
export PATH=$JAVA_HOME/bin:${PATH}

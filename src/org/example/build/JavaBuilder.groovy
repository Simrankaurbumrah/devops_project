package org.example.build

class JavaBuilder implements Builder {
    void buildScript(steps) {
        steps.echo "Running Maven build for Java project..."
        steps.sh "mvn clean install"
    }
}

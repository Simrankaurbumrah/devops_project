package org.example.build

class NodeBuilder implements Builder {
    void buildScript(steps) {
        steps.echo "Installing Node.js dependencies..."
        steps.sh "npm install"
        steps.echo "Running Node.js build..."
        steps.sh "npm run build"
    }
}

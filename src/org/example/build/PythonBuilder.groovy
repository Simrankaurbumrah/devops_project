package org.example.build

class PythonBuilder implements Builder {
    void buildScript(steps) {
        steps.echo "Installing Python dependencies..."
        //steps.sh "pip install -r requirements.txt"
        steps.echo "Running Python tests..."
        //steps.sh "pytest"
    }
}

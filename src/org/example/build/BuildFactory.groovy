package org.example.build

class BuildFactory {
    static Builder getBuilder(String projectType) {
        switch(projectType?.toLowerCase()) {
            case "java": return new JavaBuilder()
            case "python": return new PythonBuilder()
            case "node": return new NodeBuilder()
            default: throw new IllegalArgumentException("Unsupported project type: $projectType")
        }
    }
}

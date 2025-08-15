import org.example.build.BuildFactory

def call(Map config) {
    def builder = BuildFactory.getBuilder(config.projectType)
    builder.buildScript(this)
}

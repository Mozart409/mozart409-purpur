job "purpur" {
 datacenters=["dc1"]

  group "purpur" {
    count = 1

    network {
      mode = "bridge"
      port "rcon" {
        static = 25575
      }

      port "game" {
        static = 25565
      }
    }

    service {
      name = "purpur"
      port = "game"

      check {
        type     = "tcp"
        interval = "10s"
        timeout  = "2s"
      }
    }
  }


task "purpur" {
  driver = "java"

  config {
    jar_path    = "server/purpur.jar"
    jvm_options = ["--add-modules=jdk.incubator.vector","-Xmx2048m", "-Xms256m", "--nogui"]
  }
  


  # Specifying an artifact is required with the "java" driver. This is the
  # mechanism to ship the Jar to be run.
  /* artifact {
    source = "https://internal.file.server/hello.jar"

    options {
      checksum = "md5:123445555555555"
    }
  } */
}
}
require "thor"
require "thor/shell"
require "systemu"

class Blog < Thor

  desc "start", "zookeeper, server, consumer"
  def start
    start_postgresql
    start_server
  end

  no_tasks do
    def start_postgresql
      systemu("export PGDATA=/var/postgres; pg_ctl start")
      shell.say_status("[INFO]", "Success to start postgres")
    end

    def shell
      @@shell ||= Thor::Shell::Color.new
    end

    def start_server
      systemu("cd #{blog_dir}; mix phoenix.start &")
      shell.say_status("[INFO]", "Success to start server at 4000")
    end

    def blog_dir
      "/opt/local/repos/fulltextsearch/sample_blog_app"
    end
  end
end

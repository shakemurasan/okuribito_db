require "rails/generators"

module OkuribitoDb
  class InstallGenerator < Rails::Generators::Base
    class_option "with-migrate", type: :boolean

    def start
      puts "Start installing OkuribitoDB..."
      puts "*" * 80 + "\n"
    end

    def install_migrations
      puts "Copying over OkuribitoDB migrations..."
      Dir.chdir(Rails.root) do
        `rake okuribito_db:install:migrations`
      end
    end

    def run_migrations
      return unless options["with-migrate"]
      puts "Running rake db:migrate"
      `rake db:migrate`
    end

    def mount_engine
      puts "Insert routing..."
      route("mount OkuribitoDb::Engine, :at => '/okuribito_db'")
    end

    def finished
      puts "\n" + ("*" * 80)
      puts "Done! OkuribitoDB has been successfully installed."
    end
  end
end

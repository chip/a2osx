# h1. ap2osx
# 
# h2. A Ruby gem for managing Apache virtual hosts on Mac OSX
# 
# h3. TODO
# 
#   * Set defaults for IP, apache conf, apachectl, apache doc root, open command
#   
#   * Executing under sudo?
#   
#   * /etc/hosts exists?
#   
#   * Is this Leopard? (Check for existence of /etc/apache2)
#   
#   * Determine username
# 
#   * Ability to add virtual hosts
#   
#     * Is virtualhost name valid?
# 
#   * Ability to remove virtual hosts
# 
#   * Integration with gem which manipulates /etc/hosts entries? 
#   
#   * Review CHANGE log
#   
#   * Allow defaults to be overridden by conf file.  Include Wildcard zone variable.
#
require 'rubygems'
require 'highline/import'
require 'etc'
require 'haml'

class A2osx

  def initialize    
    if ARGV.empty?
      usage
      exit
    end
  end

  def usage
    puts <<END


###############################################################################
       NAME: a2osx Ruby gem
DESCRIPTION: Apache Virtual Host Manager for Mac OSX  
    LICENSE: Distributed under the MIT License

     AUTHOR: Chip Castle <chip@chipcastle.com>
    WEBSITE: http://github.com/chip/a2osx
 REPOSITORY: git://github.com/chip/a2osx.git 

      USAGE: a2osx <name>
             a2osx --delete <name>
     
             where <name> is the one-word name you would like to use. 
             (e.g. mysite)
     
             Note that if "a2osx" is not in your PATH, you will 
             have to write out the full path to it.
             Example: /usr/bin/a2osx <name>
###############################################################################


END
  end

  def save_config

  end
  
  
  haml = <<END
  %html
    %head
      %title #{$0} : Apache Virtualhost manager for OSX (Leopard)
    %body
      http://
END

  engine = Haml::Engine.new(haml)
  puts engine.render
  
end
#puts `env`
# save_config


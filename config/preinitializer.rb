require 'rubygems'
require 'geminstaller'
pid = fork do
  GemInstaller.install("--exceptions") # TODO: fails if using system rubygems requiring sudo.  Switch to bundler
end
Process.wait(pid)
require 'geminstaller_rails_preinitializer'
require 'rubygems'
require 'geminstaller'
pid = fork do
  GemInstaller.install("--exceptions")
end
Process.wait(pid)
require 'geminstaller_rails_preinitializer'
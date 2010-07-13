# Project-specific configuration for CruiseControl.rb

Project.configure do |project|

  FileUtils.ln_sf File.join(project.path, 'selenium.yml'), File.join(project.path, 'work', 'config', 'selenium.yml')

  # Send email notifications about broken and fixed builds to email1@your.site, email2@your.site (default: send to nobody)
  # project.email_notifier.emails = ['email1@your.site', 'email2@your.site']

  # Set email 'from' field to john@doe.com:
  # project.email_notifier.from = 'john@doe.com'

  # Build the project by invoking rake task 'custom'
  ENV['SAUCELABS_JOB_NAME'] = "Saucelabs Canary"
  ENV['IS_CI_BOX'] = true
  project.rake_task = 'selenium:ci'

  # Build the project by invoking shell script "build_my_app.sh". Keep in mind that when the script is invoked,
  # current working directory is <em>[cruise&nbsp;data]</em>/projects/your_project/work, so if you do not keep build_my_app.sh
  # in version control, it should be '../build_my_app.sh' instead
  # project.build_command = 'build_my_app.sh'

  # Ping Subversion for new revisions every 5 minutes (default: 30 seconds)
  # project.scheduler.polling_interval = 5.minutes

  # Force the project to build once in every given time interval
   project.triggered_by ScheduledBuildTrigger.new(project, :build_interval => 1.hour)
end

require 'parallel_tests'
require 'parallel_tests/cli'
require 'puppet-lint/tasks/puppet-lint'
require 'puppetlabs_spec_helper/rake_tasks'
require 'rspec/core/rake_task'

PuppetLint.configuration.fail_on_warnings
PuppetLint.configuration.send('disable_80chars')
PuppetLint.configuration.send('disable_class_inherits_from_params_class')
PuppetLint.configuration.send('disable_class_parameter_defaults')
PuppetLint.configuration.send('disable_documentation')
PuppetLint.configuration.send('disable_single_quote_string_with_variables')
PuppetLint.configuration.ignore_paths = ["spec/**/*.pp", "pkg/**/*.pp"]

desc "Run parallel spec tests on an existing fixtures directory"
task :spec_standalone_parallel do

  matched_files = FileList['spec/{classes,defines,unit,functions,hosts,integration}/**/*_spec.rb'].exclude(/vendor/)

  cli_args = ['-t', 'rspec']
  cli_args.concat(matched_files)

  puts 'Running puppet specs (Parallel)'
  ParallelTest::CLI.run(cli_args)
  puts 'Puppet specs complete'
end

desc "Run parallel spec tests in a clean fixtures directory"
task :spec_parallel do
  Rake::Task[:spec_prep].invoke
  Rake::Task[:spec_standalone_parallel].invoke
  Rake::Task[:spec_clean].invoke
end

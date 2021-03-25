task :run_server do
  system "rails server"
end

task :start do
  if system "rails test"
    puts "Running server"
    Rake::Task["run_server"].execute
  else
    puts "tests failed"
  end
end

task :test_files do
  Dir.chdir "test"
  files = Rake::FileList["**/*.rb"]
  files.exclude do |f|
    `git ls-files #{f}`.empty?
  end
  puts files
end

task :test_test do
  Rake::Task["test"].invoke
end

task :name, [:first_name, :last_name] do |t, args|
  puts "First name is #{args.first_name}"
  puts "Last  name is #{args.last_name}"
end

task :doit do
  puts "DONE"
end

task :dont do
  Rake::Task[:doit].clear
end
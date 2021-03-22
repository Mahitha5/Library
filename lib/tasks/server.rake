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
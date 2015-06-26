desc 'Invoke a command on the remote servers'
task :invoke do
  if ENV.key?('COMMAND')
    on roles(:all) do
      execute ENV['COMMAND']
    end
  else
    run_locally do
      error 'Please specify a command to execute on the remote servers (via the COMMAND environment variable)'
    end
  end
end

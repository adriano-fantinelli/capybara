require 'cucumber/rake/task'
require 'yaml'

desc "Performs the given acceptance testing, remotely or locally under a brand environment simulating a given device.
Defined profiles in cucumber.yml: \n * #{YAML.load_file('cucumber.yml').keys.join("\n * ")}"
task :test, :brand_environment, :exec_device, :exec_mode, :graphic_mode, :tags do |_, args|
  brand_environment = args[:brand_environment]
  exec_device = args[:exec_device]
  graphic_mode = args[:graphic_mode]
  exec_mode = args[:exec_mode]
  tags = args[:tags]

  check_params(brand_environment, exec_device, exec_mode, graphic_mode, tags)

  Cucumber::Rake::Task.new(:execute) do |task|
    task.cucumber_opts = [
      "--profile #{brand_environment}",
      "--profile #{exec_device}",
      "--profile #{exec_mode}",
      "--profile #{graphic_mode}",
      '--profile reports',
      "--tags #{tags}"
    ]
  end

  Rake::Task[:execute].invoke
end

def check_params(brand_environment, exec_device, exec_mode, graphic_mode, tags)
  raise "Bandeira/Ambiente não suportados, obtido: #{brand_environment.inspect}."                                  unless ['automation_practice'].include? brand_environment

  raise "Dispositivo não suportado, obtido: #{exec_device.inspect}"                                                unless ['mobile','desktop'].include? exec_device

  raise "O modo gráfico precisa ser preenchido com headless ou graphic, obtido: #{graphic_mode.inspect}"           unless ['headless', 'graphic'].include? graphic_mode

  raise "Tipo de execução não suportado, precisa ser preenchido com remote ou local, obtido: #{exec_mode.inspect}" unless ['remote', 'local'].include? exec_mode

  puts 'Nenhuma tag informada, todos os testes serão executados.'                                                  unless tags
end

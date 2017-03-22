require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

#Configurando o drive capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser  => :chrome)
end

#Setando a configuração do drive como padrão
Capybara.default_driver = :selenium

#timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize 
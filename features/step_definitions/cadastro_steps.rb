Dado(/^que eu esteja na home do site da ORANGEHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com/"
end

Dado(/^que eu esteja na tela de cadastro$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
  end

Dado(/^efetue o cadastro com dados validos$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_addEmployee').click
  fill_in('firstName', :with => 'Severino')
  fill_in('middleName', :with => 'José')
  fill_in('lastName', :with => 'Silva')
  select('Chinese Development Center', :from => 'location')
  click_button('btnSave')
  sleep 2
    end

Então(/^o cadastro efetuado com sucesso$/) do
 find(:id, 'welcome').click
  click_link('Cerrar sesión')
  sleep 5
  end

Dado(/^que esteja cadastro$/) do
	visit "https://enterprise-demo.orangehrmlive.com/"
	fill_in('txtUsername', :with => 'admin')
 	fill_in('txtPassword', :with => 'admin')
 	click_button('btnLogin')
 	sleep 5
end

Dado(/^efetue a edição no cadastro com dados validos$/) do
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_viewEmployeeList').click
  fill_in('empsearch[id]', :with => '1000')
  click_button('searchBtn')
  click_link('Linda')
  click_button('btnSave')
  fill_in('personal_txtEmpNickName', :with => 'Teste')
  click_button('btnSave')
  find('.customFieldSaveBtn').click
  fill_in('custom7', :with => 'Teste')
  fill_in('custom8', :with => 'Teste')
    sleep 10
end

Então(/^a alteração efetuada com sucesso$/) do
  find('.customFieldSaveBtn').click
  find(:id, 'welcome').click
  click_link('Cerrar sesión')
  sleep 10
end
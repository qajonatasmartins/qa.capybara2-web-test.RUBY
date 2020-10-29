Dado("que acesso o guia médico") do
  @Home.acessar_menu_guia_medico()
end

Quando("realizo uma busca pelo médico {string} do Rio de Janeiro") do |nome_medico|
  # carrega o arquivo guia_medico.yaml com as informações mocadas para pesquisa e comparação
  @dados_pesquisa = load_file_archive_yaml(
    "features/support/fixtures/Guia Médico/guia_medico.yaml", nome_medico
  )
  # Realiza um scroll na tela
  page.execute_script("window.scrollTo(0, 300);")

  # Executa o método find_medico que informa o que você quer pesquisar e
  # clica no botão de pesquisar da primeira etapa da busca rapida
  @GuiaMedico.find_medico(@dados_pesquisa)

  # Realiza um scroll na tela
  page.execute_script("window.scrollTo(0, 300);")

  # Faz a busca pelo Estado, Cidade, seleciona o plano e clica em consultar
  @GuiaMedico.find_busca_rapida(@dados_pesquisa)
end

Entao("devo visualizar a especialidade e Cidade do médico") do
  # Valida se a especialidade de 'Anestesiologia' está na pagina;
  expect(page).to have_content @dados_pesquisa["especialidade"]
  # Valida se possui a cidade / uf 'Rio de Janeiro / RJ'
  expect(page).to have_content @dados_pesquisa["cidade_estado"]
end

Entao("NÃO devo visualizar resultados com a cidade São Paulo") do

  # For criado para percorrer as 3 paginas solicitadas
  3.times do |i|
    pagina = i + 1
    puts "Clique na página: " + pagina.to_s

    # Clica na pagina de número 'x'
    click_link pagina.to_s

    # Valida se a especialidade de 'Anestesiologia' está na pagina;
    expect(page).to have_content @dados_pesquisa["especialidade"]
    # Valida se não existe médicos com o endereço de São Paulo / SP
    expect(page).to_not have_content "São Paulo / SP"
    # Valida se não existe médicos com o endereço de São Paulo
    expect(page).to_not have_content "São Paulo"
    # Para visualizar a validação nas paginas 2 e 3, deve comentar a linha abaixo.
    expect(page).to have_content @dados_pesquisa["cidade_estado"] # Valida se possui a cidade / uf 'Rio de Janeiro / RJ'
  end
end

class GuiaMedicoPage < SitePrism::Page

  # Elementos mapeados da pagina
  element :campo_o_que_voce_procura, "#campo_pesquisa"
  element :check_urgencia_emergencia, "#urgencia-emergencia"
  element :campo_cpf, "#input_cpf"
  element :button_pesquisar, "#btn_pesquisar"
  element :button_fechar_modal_lgpd, "#closeModalLGPD"
  element :button_aceitar_modal_lgpd, "#acceptCookie"
  element :campo_estado, "#react-select-2-input"
  element :limpar_campo_estado, :xpath, ".//form[@class='no-margin']//div[contains(@class,'selecione-rede')]//div[@aria-hidden='true'][1]"
  element :combobox_estado, :xpath, ".//div[contains(@class,'selecione-rede')]/div[@class='css-1pcexqc-container']/div[@class='css-t2flpr-control']"
  element :campo_cidade, "#react-select-3-input"
  element :limpar_campo_cidade, :xpath, ".//form[@class='no-margin']//div[contains(@class,'selecione-plano')]//div[@aria-hidden='true'][1]"
  element :text_especialidade, :xpath, ".//div[@class='DadosPrestador'][1]//div[@class='resultado-resumido padding relative']/p/span[2]"
  element :text_endereco, :xpath, ".//span[@id='txt_endereco']/p"

  def esperar_elementos_etapa_2()
    has_campo_estado?
    has_limpar_campo_estado?
    has_campo_cidade?
    has_limpar_campo_cidade?
  end

  def find_medico(arquivo_yml)
    campo_o_que_voce_procura.set arquivo_yml["busca"]
    button_pesquisar.click
  end

  def find_busca_rapida(arquivo_yml)
    esperar_elementos_etapa_2()
    combobox_estado.click
    campo_estado.set arquivo_yml["estado"]
    campo_estado.send_keys :enter
    campo_cidade.set arquivo_yml["cidade"]
    campo_cidade.send_keys :enter
    find("div[class='margin-left']", text: arquivo_yml["plano"]).click
    click_button "Continuar"
  end
end

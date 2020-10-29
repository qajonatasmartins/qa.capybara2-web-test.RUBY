# Automacao-web-noesis
 
## INSTALAÇÃO NO WINDOWS
 
**1 º Passo:** Clone o projeto no git hub;
 
**2 º Passo:** Instale o visual code (https://code.visualstudio.com/download) em sua máquina;
Para melhor visualização do código, instale as extensões a seguir no Visual Code:
Pressione o comando “Ctrl + Shift + x”
- Cucumber (Gherkin) Full Support
- Ruby
- Rufo - Ruby formatter
- rufo (Ruby formatter)
- VSCode Ruby
- Material Icon Theme
- Material Theme Icons;
 
Após adicionar as extensões, feche e abra novamente o VS Code para ativar as extensões.
 
**3 º Passo:** Descompacte o cmder(https://cmder.net/) no seu computador e execute o arquivo cmder.exe para instalação;
 
**4 º Passo:** Instale o ruby installer (https://rubyinstaller.org/) em sua máquina;
**Obs.:** Na instalação, deixe todas as opções marcadas.
segue um vídeo ensinando realizar a instalação do ruby installer: https://www.youtube.com/watch?v=39QzzQB-Ay8&feature=emb_title
 
**5 º Passo:** Abra o prompt de comando e digite o comando 'ridk install', clique [Enter]. Será apresentado a tela do 'ruby installer', digite a opção 3 e tecle [Enter];
Ao concluir a instalação, feche o prompt de comando;
 
**6 º Passo:** Baixe o chromeDriver referente a versão do seu navegador Chrome;
https://chromedriver.chromium.org/downloads
**Nome do arquivo a ser baixado:** "chromedriver_win32.zip"
 
**7 º Passo:** Após baixar o chromedriver, crie uma pasta com o nome 'Driver' dentro da raiz do projeto. Descompacte o arquivo chrome driver baixado no **passo 6** na pasta criada.
**Diretório de exemplo:** 'C:\automacao-web-noesis-master\Driver'
Informe o diretório nas variáveis de ambiente do windows, para isso, siga o passo a passo abaixo:
 
- Clique menu iniciar e pesquise 'variáveis';
- Clique na opção de [Editar as variáveis de ambiente do sistema]
- Na aba 'Avançado' clique na opção de 'Variáveis de ambiente';
- Nas variáveis de **Sistema** e do **Usuário**, edite a variável com o nome '**Path**';
- Clique em [Novo]
- Cole o diretório da pasta **driver** criada.
**Exemplo:** C:\automacao-web-noesis-master\Driver
- Clique em [OK] >> [OK].
 
**8 º Passo:** Abra pelo Visual Code o projeto de automação;
 
**9 º Passo:** Abra o Cmder e navegue até o diretório raiz do projeto;
C:\automacao-web-noesis-master

**10 º Passo:** Digite o comando 'gem install bundler'
**Obs.:** Caso o cmder não reconheça o comando, feche e abra novamente o Cmder.
Após o primeiro comando 'gem install bundler', digite o "bundle update --bundler";
 
**11 º Passo:** Após a instalação do bundler, digite o comando 'bundle install', para fazer a instalação das gems.
 
**12 º Passo:** Com todas as configurações corretas, basta somente executar o comando "rake specs["-t @FullTest","-p chrome"]" no **Cmder**.
 
Ao final da execução do teste é gerado na pasta log(C:\automacao-web-noesis-master\log) o arquivo "Report.html" com as evidências dos testes.

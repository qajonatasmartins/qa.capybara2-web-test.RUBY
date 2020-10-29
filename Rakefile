require "time"

task :specs, [:tags, :browser] do |task, args|
  report = "--format json --out=log/report.json"
  sh "cucumber #{args[:tags]} #{report} #{args[:browser]}"
end

## comando para jogar no rake e executar somente um teste:
## rake specs["-t @teste","-p chrome"]
## rake specs["-t @teste","-p firefox"]
## rake specs["-t @teste","-p firefox_headless"]
## rake specs["-t @teste","-p chrome_headless"]

#Comando para executar todos os testes:
## rake specs["-t @FullTest","-p chrome"]
## rake specs["-t @FullTest","-p firefox"]
## rake specs["-t @FullTest","-p firefox_headless"]
## rake specs["-t @FullTest","-p chrome_headless"]

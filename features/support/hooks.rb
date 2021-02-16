require "base64"
require "date"
require "report_builder"
require "os"

Before("@Home") do
  visit "/"
end

Before do
  page.driver.browser.manage.window.maximize
  @Home = HomePage.new
  @GuiaMedico = GuiaMedicoPage.new
end

After do
  shot_file = page.save_screenshot("log/screenshot.png")
  shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
  embed(shot_b64, "image/png", "Screenshot")
end

@current_date = DateTime.now

def so
  if OS.windows?
    sistema_operacional = "Windows"
  elsif OS.mac?
    sistema_operacional = "Mac OS"
  else OS.posix?
    sistema_operacional = "Linux"   end
end

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Automação web ruby"
    config.compress_image = true
    config.additional_info = {
      "Aplicação: " => "Web",
      "Data de Execução: " => @current_date,
      "Sistema Operacional:" => so(),
    }
    config.color = "orange"
  end
  ReportBuilder.build_report
end

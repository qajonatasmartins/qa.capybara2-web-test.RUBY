module Helpers
  def load_file_archive_yaml(directory_archive_yaml, cod_yaml)
    file = YAML.load_file(File.join(Dir.pwd, directory_archive_yaml))
    file[cod_yaml]
  end
end

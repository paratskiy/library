module DbUtils
  def self.add(path, element)
    File.new(path, 'w') unless File.file?(path)
    File.open(path, 'w') do |file|
      file.write(element.to_yaml)
    end
  end

  def self.get(path)
    YAML.load_file(path)
  end
end

[:Facebook, :Sms, :Email].each do |it|
  c = Class.new
  Kernel.const_set("#{it}NotificationMode", c)
end

class Config
  def initialize(values)
    @values = values
  end
  def read(key)
    @values[key]
  end
end

class ConfigurationError < StandardError
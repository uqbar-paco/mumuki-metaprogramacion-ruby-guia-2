[:Facebook, :Sms, :Email].each do |it|
  c = Class.new
  Kernel.const_set("#{it}NotificationMode", c)
end
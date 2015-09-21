describe "config" do

  def read(data)
    Config.new(data).read_notification_mode
  end

  it "" do
    expect(read(notification_mode: :sms)).to be_a SmsNotificationMode
  end

  it "" do
    expect(read(notification_mode: :facebook)).to be_a FacebookNotificationMode
  end

  it "" do
    expect(read(notification_mode: :email)).to be_a SmsNotificationMode
  end

  it "" do
    expect { read(notification_mode: :pepita) }.to raise_error(ConfigurationError)
  end
end
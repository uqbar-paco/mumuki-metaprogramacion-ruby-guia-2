describe "Metodo Abstracto" do
  class Foo
    abstract_def :foo
  end

  it "si no se implementa un metodo abstracto, al enviar el mensaje, falla" do
    expect { Foo.new.foo }.to raise_error StandardError
  end
end

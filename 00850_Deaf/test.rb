class FooBar
end

module AModule
end


describe "DeafMethod" do

  it "se puede poder utilizar deaf  dentro de una clase" do
     FooBar.class_eval { deaf :foo  }
  end

  it "se puede utilizar deaf  dentro de un modulo" do
     AModule.module_eval { deaf :foo  }
  end

  it "deaf define un metodo de instancia" do
     FooBar.class_eval { deaf :bar  }
     FooBar.new.respond_to? :bar
  end

  it "los metodos deaf devuelve nil" do
     FooBar.class_eval { deaf :foobar  }
     expect(FooBar.new.foobar).to be nil
  end


end

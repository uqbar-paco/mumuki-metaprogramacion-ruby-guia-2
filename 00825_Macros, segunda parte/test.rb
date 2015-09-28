describe "ensure_no_override" do

  it "falla si el método ya existia" do
    class Foo
      def foo
      end
    end
    expect { class Foo; ensure_no_override :foo; end }.to raise_error
  end

  it "no falla si el método no existia" do
    class Foo
      def foo
      end
    end
    class Foo; ensure_no_override :bar; end
    expect(Foo.responds_to? :bar).to be tue
  end

  it "no falla si la clase no existia" do
    class Bar; ensure_no_override :bar; end
    expect(Foo.responds_to? :bar).to be true
  end

  it "lo entienden los modulos" do
    expect(Module.responds_to? :ensure_no_override).to be true
  end
end
describe "transaction" do
  before { Transaction.reset! }

  it "lo entienden los TransactionalObject" do
    expect(TransactionalObject.respond_to? :transaction).to be true
  end

  it "no lo entienden los modulos" do
    expect(Module.respond_to? :transaction).to be false
  end

  it "un metodo definido como transactional devuelve lo que retorna el bloque" do
    class Baz < TransactionalObject
       transactional(:foo) { 5 }
    end
    expect(Baz.new.foo).to eq 5
  end

  context "si el metodo no falla" do
    class Foo < TransactionalObject
       transactional(:foo) {}
    end
    before { Bar.new.foo }
    it("comitea") {  expect(Transaction.committed).to be true  }
    it("no hace rollback") { expect(Transaction.rollbacked).to be false }
  end

  context "si el metodo falla" do
    class Bar < TransactionalObject
       transactional(:foo) { raise "error" }
    end
    it "hace rollback" do
      expect { Bar.new.foo }.to raise_error("error")
      expect(Transaction.rollbacked).to be true
    end
    it "no hace commit" do
      expect { Bar.new.foo }.to raise_error("error")
      expect(Transaction.committed).to be false
    end
  end

end

class MyClass
    begin
        singletonize
    rescue => e
    end
end

describe "singletonize" do
    it "las clases entienden singletonize" do
      expect(Object.respond_to? :singletonize)
    end
    it "si una clase fue singletonizada, entiende instance" do
      expect(MyClass.respond_to? :instance)
    end
    it "si una clase fue singletonizada, el mensaje instance devuelve una instancia de la clase" do
      expect(MyClass.instance.is_a? MyClass).to be true
    end
    it "si una clase fue singletonizada, el mensaje instance devuelve siempre la misma instancia" do
      expect(MyClass.instance).to be MyClass.instance
    end
end

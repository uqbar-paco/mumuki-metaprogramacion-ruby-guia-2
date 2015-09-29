Dentro de una clase, `self` es el objeto que representa a dicha clase.

Con lo cual, si definís métodos de clase, vas a poder utilizarlos dentro del cuerpo de la misma. Por ejemplo:

```ruby
class Foo
  def self.bar
    5
  end

  bar
end
```

Como es de esperar, esto también aplica a la herencia y a los mixins: si un mixin o una clase padre provee un método de clase, éste puede ser utilizado desde el cuerpo de la clase que lo incluya o herede, respectivamente.

¡Y así es como surgen los **macros** `attr_accesor`, `include`, etc!

> Veamos si se entiende: definí el macro `ensure_no_override` que toma un selector y lanza una excepción si ya existe este método. Definilo en la clase `Module` así tanto las clases como los métodos lo pueden aprovechar. Ejemplo:

```ruby
class Pepita
    ensure_no_override :volar
end
```

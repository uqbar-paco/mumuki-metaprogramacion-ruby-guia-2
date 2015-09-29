Hace poco dijimos que en Ruby contamos con un mensaje `respond_to?` que nos dice si un objeto entienden un mensaje, por ejemplo:

```ruby
[4, 5].respond_to? :map
#=> true
102.respond_to? :map
#=> false
```

Si nos guiamos por la teoria básica de objetos, suena bastante razonable suponer que si `x.respond_to? :y`, entonces, `x.methods.include? :y`.

Bueno, no. Existe otra forma de hacer que un objeto entienda un mesaje: ¡diciéndole que hacer cuando no lo entiende! Suena raro, ¿no? Pero es bastante simple:

```ruby
class Hodor
  def method_missing(selector, *args, &block)
    "Hodor!"
  end
end
```

```ruby
hodor = Hodor.new
hodor.estas_ahi?
#=> Hodor!
hodor.rescatar_a! bran
#=> Hodor! Hodor!
```

> En realidad Hodor dice tantas veces "Hodor!" como argumentos tenga el mensaje, más uno. Modificar la clase `Hodor` para que refleje esto.



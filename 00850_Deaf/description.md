Queremos poder definir métodos usando una nueva palabra reservada: `deaf` (en lugar de `def`). Los métodos así definidos:

  * No toman parámetros
  * Tienen una implementación vacía

Por ejemplo:

```ruby
class Foo
  deaf :foo
end
```
debería ser equivalente a:

```ruby
class Foo
  def foo
  end
end
```

> Definir el macro `deaf`en dónde lo consideres más apropiado.

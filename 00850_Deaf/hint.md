En Ruby podés agregarle un método a cualquier clase abriéndola y usando `self`. El problema de esto es que esto no nos sirve si queremos generar dinámicamente el nombre del selector.

En realidad, el `def` se trata solamente de azúcar sintática para una herramienta más general: el mensaje `define_method`, que lo entienden todas las clases. Ojo, que es privado, así que sólo podés usarlo cuando el receptor es implícito. Por ejemplo:

```ruby
class Golondrina
  define_method :volar! do |distancia|
    @energia -= distancia * 5
  end
end
```



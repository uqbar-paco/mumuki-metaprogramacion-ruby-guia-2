Escribir un observer a mano es una tarea bastante tediosa. Queremos implementar un mixin Observable que:

* Permita agregar y quitar observadores mediante `register_observer!` y `unregister_observer!`
* Provea un mensajes de la forma `fire_xyz!`, que no notifique a cada observador con un mensaje de la forma `on_xyz`.

Ejemplo:

```ruby
class PilaObservable
  include Observable

  def agregar_elemento(elemento)
    ....
    fire_elemento_agregado!(elemento)
  end
end


pila = PilaObservable.new
pila.register_observer! un_observer
pila.agregar_elemento! 4
# agrega el elemento y a cada observer le envía on_elemento_agregado(4)
```

> Implementá el mixin `Observable`
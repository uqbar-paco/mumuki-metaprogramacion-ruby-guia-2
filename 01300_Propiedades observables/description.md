Ahora queremos _extender_ la solución anterior para que nos de properties observables:

```ruby
class TextBox
  include Observable

  attr_observable :label, :content
end

a_text_box = TextBox.new
a_text_box.register_observer! an_observer
a_text_box.label = "Age"
# actualiza al atributo @label, y notifica a todos los observadores con on_label_changed(old_value, new_value)
```

> Agregar al mixin Observable lo necesario para resolver el requerimiento.
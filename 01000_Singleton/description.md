Ahora queremos definir un macro `singletonize` que permite convertir a una clase en [Singleton](https://sourcemaking.com/design_patterns/singleton).

`singletonize` debe hacer esto agregando un método de clase `instance`, que retornará siempre una misma instancia de dicha clase. Por ejemplo:


```ruby
class Foo
  singletonize

  #... etc...
end

Foo.instance == Foo.instance #debería ser true
```

> Implementá el macro `singletonize`. Tené en cuenta que sólo tiene sentido para las clases (y no para los módulos). Intentá resolverlo utilizando `define_singleton_method`.
En ruby no existe a nivel lenguaje ninguna forma de declarar un método abstracto: al igual que en Smalltak, simplemente no se codifica el método.

El problema de esto es que, si nos olvidamos de codificar el método, los mensajes de error pueden ser un poco confusos - obtendremos NoMethodError en algún punto - por lo que muchos hacen lo siguiente:

```ruby
class Mercaderia
  def precio(cantidad)
    precio_base(cantidad) * procedencia.tasa_importacion
  end

  def precio_base(cantidad)
    raise "should implement"
  end
end
```

Nos gustaría poder abstraer este patrón e implementar el código anterior de la siguiente forma, preserva su semántica:

```ruby
class Mercaderia
  def precio(cantidad)
    precio_base(cantidad) * procedencia.tasa_importacion
  end

  abstract_def :precio_base
end
```

> Implementá el macro `abstract_def` en donde lo consideres más apropiado.

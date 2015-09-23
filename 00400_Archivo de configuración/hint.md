Algunas herramientas que nos pueden ser útiles:

* En Ruby contamos con interpolación de String, que nos evita concatenar Strings a mano. Por ejemplo, en lugar de escribir

```ruby
"hola " + nombre + "!"
```

podemos escribir

```ruby
"hola #{nombre}!"
```

* El módulo Kernel entiende un mensaje `const_get` que nos devuelve el valor de una constante dada como símbolo. Los nombres de clases son constantes.
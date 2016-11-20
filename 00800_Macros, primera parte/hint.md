Capaz recuerdes que la última linea de un método es su retorno. Por ejemplo:

```ruby
def x.foo
  4
end

x.foo
# => 4
```

De igual forma, la última línea de la clase, también es su retorno. Por eso, si escribimos

```ruby
class MiClase
end
```

Devolverá `nil`

y si escribimos:

```ruby
class MiClase
  4
end
```

devolverá `4`
¡Bien hecho! Este método podría ser útil para garantizar que cuando estamos abriendo una clase existente, no estemos redefiniendo algo que ya existía. Por ejemplo:

```ruby
class Object
  ensure_no_override :version_number

  def version_number
    #....
  end
end
```

Sin embargo, los macros más utiles son aquellos que crean dinámicamente métodos, como veremos a continuación. Esto es un caso de **self modification**.
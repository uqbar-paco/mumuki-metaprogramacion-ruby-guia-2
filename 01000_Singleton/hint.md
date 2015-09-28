Hasta ahora utilizamos `define_method` para agregar métodos (de instancia) a una clase. ¿Pero qué pasa si queremos agregar métodos de clase?

Una opción, que ya vimos antes, es agregarlo mediante `def objeto.metodo`:

```ruby
def mi_clase.mi_metodo_de_clase
  #...
end
```

Sin embargo, de la misma forma que `def metodo` es azúcar sintáctica sobre `define_method`, `def objeto.metodo` es azúcar sintáctica sobre `objeto.define_singleton_method`.

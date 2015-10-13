Para resolver este problema, una de las cosas que tendrás que hacer es implementar un método `transactional`, que recibe dos cosas: un symbol, que va a ser el nombre del mensaje que vas a crear, y un bloque, que es la implementacion de dicho mensaje. 

Entonces lo que tenés que hacer se verá aproximadamente algo así:

```
def transactional(nombre, &bloque)
  # tu implementacion, que va a tener que crear el método
end
```

Es importante el  `&` en el segundo parámetro: es la forma que tenés de decirle a Ruby que vas a recibir un bloque - porque los bloques son de las pocas cosas que en Ruby por defecto no son objetos, y por eso requieren de una sintaxis especial.   

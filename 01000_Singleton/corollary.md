¿Qué es esto de _singleton method_? Vamos a tener que entender el metamodelo de Ruby con un poco más de detalle. Afortunadamente es bastante simple:

1. Todos los objetos tienen una clase (¡nada wow!)
2. Todos los objetos tienen una **autoclase** (también llamada _eigenclass_ o _singleton class_). Esta es una clase que es única y propia de cada objeto (no se comparte entre instancias de la misma clase)
3. La autoclase es sublclase de la clase del objeto
4. El method lookup empieza por la autoclase, no por la clase.

Moralejas:

* cuando agregamos comportamiento directamente a un objeto, estamos agregandolo a la autoclase del mismo
* los métodos de clase de `X` (siendo X una clase, instancia de `Class`) son en realidad métodos de la autoclase del objeto `X`
* `objeto.define_singleton_method` es un atajo a `objeto.singleton_class.define_method`

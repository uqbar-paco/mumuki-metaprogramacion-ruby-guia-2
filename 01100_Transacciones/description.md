En una aplicación, tenemos varias clases con métodos transaccionales del siguiente estilo:


```ruby
class CuentaCorriente < TransactionalObject
  def transferir(monto, otra_cuenta)
    transaction = begin_transaction!

    self.extraer(monto)
    otra_cuenta.depositar(monto)

    transaction.commit!
  rescue
    transaction.rollback!
  end

  def extraer(monto)
    transaction = begin_transaction!
    #..etc..
    transaction.commit!
  rescue
    transaction.rollback!
  end
  #..etc..
end
```

Nos gustaría eliminar estas duplicaciones y poder escribir nuestros métodos transaccionales así:

```ruby
class CuentaCorriente < TransactionalObject
  transactional :transferir do |monto, otra_cuenta|
    self.extraer(monto)
    otra_cuenta.depositar(monto)
  end

  transactional :extraer do |monto|
    #..etc..
  end

  #..etc..

end
```

> Implementar lo necesario para que se pueda declarar métodos transaccionales de la forma propuesta. Considerar que el método `begin_transaction` está definido en `TransactionalObject`
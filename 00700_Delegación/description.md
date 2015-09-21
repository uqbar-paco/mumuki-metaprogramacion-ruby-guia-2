Muchas veces, al implementar un _decorator_, un _adapter_, o simplemente buscando evitar romper el encapsulamiento, tendremos código de la siguente forma:

```ruby
class X
  def y
    @c.y
  end

  def z
    @c.z
  end

  #..etc..
end
```
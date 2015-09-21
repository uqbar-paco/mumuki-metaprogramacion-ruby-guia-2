...Acá habria que decir algo de que Hodor podria crearse si una clase...


```ruby
hodor = Object.new
def hodor.method_missing(selector, *args, &block)
  "Hodor!"
end
```


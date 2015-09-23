En una aplicación que tiene un sistema de envío de notificaciones, podemos configurar el modo en que el usuario recibirá las mismas.

Por ahora, este modo se especifica en un archivo de configuracion, en la propiedad `notification_mode` de la siguiente forma:

* Si es `"sms"`, tenemos que instanciar un `SmsNotificationMode`
* Si es `"facebook"`, tenemos que instanciar un `FacebookNotificationMode`
* Si es `"email"`, tenemos que instanciar un `EmailNotificationMode`
* En otro caso, tenemos que lanzar un ConfigurationError

Ya contamos con una clase `Configuration` que define un método `read`, que toma la propiedad de configuración a leer y devuelve su valor como string.

> Agregar a la clase `Configuration` un método `read_notification_mode`, que lea la propiedad `:notification_mode` la convierta según la lógica detallada antes.


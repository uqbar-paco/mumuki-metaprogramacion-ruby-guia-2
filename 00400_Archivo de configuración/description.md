En una aplicación que tiene un sistema de envío de notificaciones, podemos configurar el modo en que el usuario recibirá las mismas.

Por ahora, este modo se especifica en un archivo de configuracion, en la propiedad `notification_mode` de la siguiente forma:

* Si es `"sms"`, tenemos que instanciar un `"SmsNotificationMode"`
* Si es `"facebook"`, tenemos que instanciar un `"FacebookNotificationMode"`
* Si es `"email"`, tenemos que instanciar un `"EmailNotificationMode"`
* En otro caso, tenemos que lanzar un ConfigurationError


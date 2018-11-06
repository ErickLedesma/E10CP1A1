# Se tiene el archivo config.ru :
#
# Se pide:
# - Agregar un código de respuesta 200.
# - Agregar en los Response Headers un Content-type de tipo text/html.
# - Agregar en el Response Body una etiqueta de párrafo que contenga un texto Lorem
#   ipsum.

# config.ru
require 'rack'
class MiPrimeraWebApp
    def call(env)
        [200, {'Content-Type' => 'text/plain'}, ['<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quam, molestiae blanditiis maxime repellat deserunt optio id suscipit reiciendis iure laudantium porro ab expedita deleniti sed nesciunt nulla aliquam sunt aliquid dolore, repudiandae neque. Deleniti voluptas nisi libero ab neque veniam, optio autem odit eius quaerat iusto distinctio reprehenderit, illo ducimus. </p>']]
    end
end
run MiPrimeraWebApp.new


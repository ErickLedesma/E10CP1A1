require 'rack'
class MiPrimeraWebApp
    def call(env)
        [200, {'Content-Type' => 'text/html'}, ['<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quam, molestiae blanditiis maxime repellat deserunt optio id suscipit reiciendis iure laudantium porro ab expedita deleniti sed nesciunt nulla aliquam sunt aliquid dolore, repudiandae neque. Deleniti voluptas nisi libero ab neque veniam, optio autem odit eius quaerat iusto distinctio reprehenderit, illo ducimus. </p>']]
    end
end
run MiPrimeraWebApp.new


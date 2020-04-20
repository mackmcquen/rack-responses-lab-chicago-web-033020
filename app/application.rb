class Application
    require 'date'
    def call(env)
        resp = Rack::Response.new
        time = Time.now('%m/%d/%Y %H:%M')
        if time.hour > 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end

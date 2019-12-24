class Application
 
  def call(env)
    resp = Rack::Response.new
 
    t = Time.now
 
    if t.hour < 12
      resp.write "Good morning"
    else
      resp.write "Good afternoon"
    end
 
    resp.finish
  end
 
end
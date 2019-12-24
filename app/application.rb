class Application
 
  def call(env)
    resp = Rack::Response.new
 
    t = Time.now
    t.hour
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
 
    if t.hour < 12
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end
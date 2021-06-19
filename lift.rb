require 'json'

def cut_string(string_to_cut)
	i = 0
     cut_array = []
     for i in string_to_cut.chars()
         if i != 2 
             i+=1
           else
             cut_array.push(i)
             i = 0
           end 
         end
     cut_array 
end

def params
    begin
        JSON.parse(request.body.read)
    rescue
        halt 400, { message:'Invalid param' }.to_json
    end
end



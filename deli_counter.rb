require "pry"

def line(list)
    if list.length > 0
        new_list = list.map.with_index{ |el, i| "#{i + 1}. #{el}" }
        message = "The line is currently: " + new_list.join(" ")
        puts message
    else
        puts "The line is currently empty."
    end
end

def take_a_number(list, name)
    list << name
    puts "Welcome, #{name}. You are number #{list.length} in line."
end

def now_serving(list)
    return puts "There is nobody waiting to be served!" if list.length == 0
    puts "Currently serving #{list.first}."
    list.shift()
end
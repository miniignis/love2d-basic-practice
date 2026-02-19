function love.config(t)
    t.title = "Particle Toy"
    t.window.width = 800
    t.window.height = 600
    t.window.resizable = false
    t.window.vsync = 1
end

function love.load()
    love.graphics.setBackgroundColor(0.2, 0.6, 0.5)

    image = love.graphics.newImage("flame.png")
end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(0.1, 0, 0.3)
    love.graphics.print("Hello!", 32, 32, 0.1)

    love.graphics.setNewFont(25)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Hey!", 100, 100)

    love.graphics.draw(image, 500, 500)
end
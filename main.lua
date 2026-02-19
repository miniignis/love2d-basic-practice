function love.conf(t)
    t.window.title = "?????"
    t.window.width = 800
    t.window.height = 600
    t.window.resizable = false
    t.window.vsync = 1
end

function love.load()
    love.graphics.setBackgroundColor(0.2, 0.6, 0.5)

    image = love.graphics.newImage("flame.png")
    
    flameX, flameY = 0, 0
end

function love.update(dt)
    if love.keyboard.isDown("w") then
        flameY = flameY - 500 * dt
    end
    if love.keyboard.isDown("a") then
        flameX = flameX - 500 * dt
    end
    if love.keyboard.isDown("s") then
        flameY = flameY + 500 * dt
    end
    if love.keyboard.isDown("d") then
        flameX = flameX + 500 * dt
    end
end

function love.draw()
    love.graphics.setColor(0.1, 0, 0.3)
    love.graphics.print("Hello!", 32, 32, 0.1)

    love.graphics.setNewFont(25)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Hey!", 100, 100)

    love.graphics.draw(image, flameX, flameY)

    love.graphics.rectangle("fill", 200, 200, 400, 250)

    love.graphics.setColor(math.random(), math.random(), math.random()) -- it hurts my eyes! whoops.
    love.graphics.circle("fill", 100, 200, 32)
end
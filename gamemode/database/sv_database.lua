require("mysqloo")

local DATABASE_HOST = "127.0.0.1"
local DATABASE_PORT = 3306
local DATABASE_NAME = "hl2rp"
local DATABASE_USERNAME = "root"
local DATABASE_PASSWORD = ""

local db = mysqloo.connect(DATABASE_HOST, DATABASE_USERNAME, DATABASE_PASSWORD, DATABASE_NAME, DATABASE_PORT)

function db:onConnected()
    print("Database connected!")
    -- Utworzenie tabeli postaci
    local query = self:query([[
        CREATE TABLE IF NOT EXISTS characters (
            id INT AUTO_INCREMENT PRIMARY KEY,
            steamid VARCHAR(20) NOT NULL,
            name VARCHAR(100) NOT NULL,
            model VARCHAR(100) NOT NULL,
            inventory TEXT NOT NULL
        );
    ]])
    query:start()
end

function db:onConnectionFailed(err)
    print("Database connection failed: " .. err)
end

db:connect()

-- Dodaj funkcję do zapisywania postaci
function SaveCharacter(steamid, name, model, inventory)
    local query = db:prepare([[
        INSERT INTO characters (steamid, name, model, inventory)
        VALUES (?, ?, ?, ?);
    ]])
    query:setString(1, steamid)
    query:setString(2, name)
    query:setString(3, model)
    query:setString(4, util.TableToJSON(inventory))
    query:start()
end

-- Dodaj funkcję do ładowania postaci
function LoadCharacter(steamid, callback)
    local query = db:prepare([[
        SELECT * FROM characters WHERE steamid = ?;
    ]])
    query:setString(1, steamid)
    function query:onSuccess(data)
        if #data > 0 then
            callback(data[1])
        else
            callback(nil)
        end
    end
    query:start()
end
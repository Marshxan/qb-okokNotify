## qb-okokNotify Replacement 

# Steps To Install:


1. Go To qb-core/client/functions.lua
 
.


2. Find The Following Code:  This Is Located Around Line **88**

``QBCore.Functions.Notify``

.


3. Delete From Around Line **88** To Around **111** Where The End Of That Function Is :)
 
.


4. Paste The Following Code In To Replace That Code!

```lua
function QBCore.Functions.Notify(text, textype, length)
    if textype == "primary" then textype = "inform" end
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        local caption = text.caption or 'Placeholder'
        local ttype = textype or 'inform'
        local length = length or 3000
        exports['okokNotify']:Alert("🔔   Notification   🔔", text, length, "info")
    else
        local ttype = textype or 'inform'
        local ttext = text.text or 'Placeholder'
        local length = length or 5000
        exports['okokNotify']:Alert("🔔   Notification   🔔", text, length, "info")
    end
end
```

.

**Dependency's:**

**qb-core**

**okokNotify**


## Preview 1:

![Image](https://capy-cdn.xyz/cx4EIsugilYG.png)



## Preview 2:

![Image](https://capy-cdn.xyz/1QqLDwdQKY3n.png)

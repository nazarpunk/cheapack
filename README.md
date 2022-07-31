![GitHub](https://img.shields.io/github/license/nazarpunk/cheapack?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/nazarpunk/cheapack?style=flat-square)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nazarpunk/cheapack?style=flat-square)
![Discord](https://img.shields.io/discord/543458159818440705?label=XGM%20-%20discord&style=flat-square)
<p align="center">
  <img src="https://bnetcmsus-a.akamaihd.net/cms/template_resource/DXDAN5KT326U1541005861696.png" alt=""/>
</p>

# cheapack
🇷🇺 Собиратор карт для [Warcraft III](https://playwarcraft3.com/ru-ru/).

Инструкция по настройке находится [здесь](https://xgm.guru/p/wc3/cheapack).

После первой сборке **обязательно** сохраните карту в редакторе, чтоб поместить код в `war3map.lua`.

🇬🇧 A Map builder for [Warcraft III](https://playwarcraft3.com/en-us/)

A user guide is not yet written in English... Have you ever wanted to learn [Russian?](https://xgm.guru/p/wc3/cheapack)

After a first-time build you **must** save the map in editor for the code to be embedded in `war3map.lua`.

### Структура проекта / Project Structure
```
C:\Users\username\IdeaProjects\MyMapProject
├── map.w3x
|   ├── war3map.doo
|   ├── war3map.imp
|   ├── war3map.lua
|   ├── war3map.mmp
|   ├── war3map.shd
|   ├── war3map.w3a
|   ├── war3map.w3c
|   ├── war3map.w3e
|   ├── war3map.w3i
|   ├── war3map.w3r
|   ├── war3map.wct
|   ├── war3map.wpm
|   ├── war3map.wtg
|   ├── war3map.wts
|   ├── war3mapMap.blp
|   └── war3mapUnits.doo
├── src
|   ├── ability
|   |   ├── ability_1.lua
|   |   ├── ability_2.lua
|   |   └── ability_3.lua
|   ├── lib
|   |   ├── lib_1.lua
|   |   ├── lib_2.lua
|   |   └── lib_3.lua
|   └── init.lua
└── build.lua
```
#### `map.w3x`
🇷🇺 Карта сохранённая в режиме папки.

🇬🇧 A map saved in folder mode.

#### `src`
🇷🇺 Папка содержащая файлы `.lua` которые будут собранны сборщиком.

🇬🇧 Folder containing `.lua` files that'll be included during build.

#### `build.lua`
🇷🇺 Скрипт запускающий сборку. Принимает таблицу аргументов `{}`.

🇬🇧 A script that launches the build process. Accepts a table with arguments `{}`.
```lua
require 'build' {}
```
### Параметры по умолчанию / Default parameters
```lua
require 'build' {
    game = nil,
    project = nil,
    map = 'map.w3x',
    src = 'src',
    run = nil,
    syntaxCheck = false,
    options = {
        language = "ru",
        consoleColor = true,
    }
}
```
### Параметры сборки / Build parameters

#### `game`
```lua
require 'build' {
    game = [[D:\Games\Warcraft III\x86_64]]
}
```
🇷🇺 Путь к игре. По умолчанию ищется в реестре.

🇬🇧 Path to game. By default it's looked up in the registry.

``HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Warcraft III``
- InstallPath
- InstallSource
- InstallLocation

#### `project`
```lua
require 'build' {
    project = "C:\\Users\\username\\IdeaProjects\\MyMapProject"
}
```
🇷🇺 Путь к папке проекта. По умолчанию берётся папка из которой запущен `build.lua`. 

🇬🇧 Path to project folder. By default it's the folder where from `build.lua` is launched.
#### `map`
```lua
require 'build' {
    map = 'map.w3x' 
}
```
🇷🇺 Название карты. По умолчанию `map.w3x` в корне проекта.

🇬🇧 Map name. By default it's `map.w3x` in project root.
#### `src`
```lua
require 'build' {
    src = 'src'
}
```
```lua
require 'build' {
    src = {
            'src\\lib', 
            'src\\ability',
            'src\\init.lua'
    } 
}
```
🇷🇺 Порядок сборки файлов. По умолчанию вся папка `src` в корне проекта.

🇬🇧 Build order of files. By default the entire `src` folder in project root.
#### `run`
```lua
require 'build' {
    -- 🇷🇺 после сборки запустит карту в игре
    -- 🇬🇧 will run game after building
    run = 'game' 
}
```
```lua
require 'build' {
    -- 🇷🇺 после сборки откроет карту в редакторе
    -- 🇬🇧 will run editor after building
    run = 'editor'
}
```
🇷🇺 После сборки открывает карту в редакторе `editor` или в игре `game`. По умолчанию не делает ничего.

🇬🇧 After building, it'll launch the map in `editor` or in the `game`. By default it doesn't do anything.

#### `syntaxCheck`

```lua
require 'build' {
    syntaxCheck = true
}
```
🇷🇺 Перед запуском проверяет синтаксис кода карты `war3map.lua` на ошибки. Использует `luac`, которая устанавливается вместе с обычной `lua`. Если не её нету, установи полноценную сборку Lua.

🇬🇧 Check map's code `war3map.lua` for syntax errors before launch. Uses `luac`, that's usually installed together with `lua`. If it's not found, install a complete Lua distribution.

#### `options`
```lua
require 'build' {
	options = {
		language = "ru",
		consoleColor = true,
	}
}
```
🇷🇺 Таблица содержит настройки программы сборки. Можно переключить язык или выключить цвета в консоли.

🇬🇧 This table contains the build settings. You can switch the language or turn off colors in terminal.

- `language` = "en"/"ru"
- `consoleColor` = true/false

### Примечания / Notes
- 🇷🇺 Устанавливайте файлам `.lua` режим переноса строки `CRLF`. 

- 🇬🇧 You must set line-endings for `.lua` files to `CRLF` mode.



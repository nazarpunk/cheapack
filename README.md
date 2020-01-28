![GitHub](https://img.shields.io/github/license/nazarpunk/cheapack?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/nazarpunk/cheapack?style=flat-square)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nazarpunk/cheapack?style=flat-square)
![Discord](https://img.shields.io/discord/543458159818440705?label=XGM%20-%20discord&style=flat-square)
<p align="center">
  <img src="https://bnetcmsus-a.akamaihd.net/cms/template_resource/DXDAN5KT326U1541005861696.png" alt=""/>
</p>
# cheapack
Собиратор карт для [Warcraft III](https://playwarcraft3.com/ru-ru/).

Инструкция по настройке находится [здесь](https://xgm.guru/p/wc3/cheapack).

После первой сборке **обязательно** сохраните карту в редакторе, чтоб поместить код в `war3map.lua`.
### Структура проекта
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
Карта сохранённая в режиме папки.
#### `src`
Папка содержащая файлы `.lua` которые будут собранны сборщиком.
#### `build.lua`
Скрипт запускающий сборку. Принимает таблицу аргументов `{}`.
```lua
require 'build' {}
```
### Параметры по умолчанию
```lua
require 'build' {
    game = nil,
    project = nil,
    map = 'map.w3x',
    src = 'src',
    run = nil,
    reforged = false
}
```
### Параметры сборки

#### `game`
```lua
require 'build' {
    game = 'D:\\Games\\Warcraft III\\x86_64' 
}
```
Путь к игре. По умолчанию ищется в реестре.

``HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Warcraft III``
- InstallPath
- InstallSource
- InstallLocation

#### `project`
```lua
require 'build' {
    project = 'C:\\Users\\username\\IdeaProjects\\MyMapProject' 
}
```
Путь к папке проекта. По умолчанию берётся папка из которой запущен `build.lua`. 
#### `map`
```lua
require 'build' {
    map = 'map.w3x' 
}
```
Название карты. По умолчанию `map.w3x` в корне проекта.
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
Порядок сборки файлов. По умолчанию папка `src` в корне проекта.

#### `run`
```lua
require 'build' {
    run = 'game' -- после сборки запустит карту в игре
}
```
```lua
require 'build' {
    run = 'editor' -- после сборки откроет карту в редакторе
}
```
После сборки открывает карту в редакторе `editor` или в игре `game`. По умолчанию не делает ничего.
#### `reforged`
```lua
require 'build' {
    reforged = true 
}
``` 
Собирает карту для Reforged. По умолчанию `false`.


### Примечания
- Устанавливайте файлам `.lua` режим переноса строки `CRLF`. 





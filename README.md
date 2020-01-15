![GitHub](https://img.shields.io/github/license/nazarpunk/cheapack?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/nazarpunk/cheapack?style=flat-square)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nazarpunk/cheapack?style=flat-square)
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

#### `game`
```lua
require 'build' {
    game = 'D:\\Games\\Warcraft III\\x86_64' 
}
```
Путь к игре. По умолчанию ищется в реестре
``HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Warcraft III``
#### `project`
```lua
require 'build' {
    project = 'C:\\Users\\username\\IdeaProjects\\MyMapProject' 
}
```
Путь к папке проэкта. По умолчанию берётся расположение `build.lua`. 
#### `map`
```lua
require 'build' {
    map = 'map.w3x' 
}
```
Название карты. По умолчанию `map.w3x`.
#### `src`
```lua
require 'build' {
    src = {
            'src\\lib', 
            'src\\ability',
            'src\\init.lua'
    } 
}
```
#### `run`
```lua
require 'build' {
    run = 'editor' 
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





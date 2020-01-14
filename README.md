![GitHub](https://img.shields.io/github/license/nazarpunk/cheapack?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/nazarpunk/cheapack?style=flat-square)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nazarpunk/cheapack?style=flat-square)
# cheapack
Собиратор карт для [Warcraft III](https://playwarcraft3.com/ru-ru/). Подробная инструкция находится [здесь](https://xgm.guru/p/wc3/cheapack). 

#### Структура проекта
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

#### `build.lua`
```lua
local pack     = require 'cheapack'

pack.build(
        'D:\\Games\\Warcraft III\\x86_64', -- путь к папке игры
        'C:\\Users\\username\\IdeaProjects\\MyMapProject', -- путь к папке проэкта
        'map.w3x', -- путь к папке с картой относительно проэкта
        { -- порядок сборки файлов
            'src\\lib', 
            'src\\ability',
            'src\\init.lua'
        },
        'editor', -- открыть карту в редакторе 'editor' или в игре 'game'
        true -- карта для Reforged. По умолчанию false
)
```

### Примечания
- После первой сборке **обязательно** сохраните карту в редакторе, чтоб поместить код в `war3map.lua`.
- Устанавливайте файлам `.lua` режим переноса строки `CRLF`. 





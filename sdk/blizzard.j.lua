-- ===========================================================================
--  Blizzard.j ( define Jass2 functions that need to be in every map script )
-- ===========================================================================
-- -----------------------------------------------------------------------
--  Constants
-- 
--  Misc constants
bj_PI                             = 3.14159    ---@type real
bj_E                              = 2.71828    ---@type real
bj_CELLWIDTH                      = 128.0    ---@type real
bj_CLIFFHEIGHT                    = 128.0    ---@type real
bj_UNIT_FACING                    = 270.0    ---@type real
bj_RADTODEG                       = 180.0 / bj_PI    ---@type real
bj_DEGTORAD                       = bj_PI / 180.0    ---@type real
bj_TEXT_DELAY_QUEST               = 20.00    ---@type real
bj_TEXT_DELAY_QUESTUPDATE         = 20.00    ---@type real
bj_TEXT_DELAY_QUESTDONE           = 20.00    ---@type real
bj_TEXT_DELAY_QUESTFAILED         = 20.00    ---@type real
bj_TEXT_DELAY_QUESTREQUIREMENT    = 20.00    ---@type real
bj_TEXT_DELAY_MISSIONFAILED       = 20.00    ---@type real
bj_TEXT_DELAY_ALWAYSHINT          = 12.00    ---@type real
bj_TEXT_DELAY_HINT                = 12.00    ---@type real
bj_TEXT_DELAY_SECRET              = 10.00    ---@type real
bj_TEXT_DELAY_UNITACQUIRED        = 15.00    ---@type real
bj_TEXT_DELAY_UNITAVAILABLE       = 10.00    ---@type real
bj_TEXT_DELAY_ITEMACQUIRED        = 10.00    ---@type real
bj_TEXT_DELAY_WARNING             = 12.00    ---@type real
bj_QUEUE_DELAY_QUEST              = 5.00    ---@type real
bj_QUEUE_DELAY_HINT               = 5.00    ---@type real
bj_QUEUE_DELAY_SECRET             = 3.00    ---@type real
bj_HANDICAP_EASY                  = 60.00    ---@type real
bj_HANDICAP_NORMAL                = 90.00    ---@type real
bj_HANDICAPDAMAGE_EASY            = 50.00    ---@type real
bj_HANDICAPDAMAGE_NORMAL          = 90.00    ---@type real
bj_HANDICAPREVIVE_NOTHARD         = 50.00    ---@type real
bj_GAME_STARTED_THRESHOLD         = 0.01    ---@type real
bj_WAIT_FOR_COND_MIN_INTERVAL     = 0.10    ---@type real
bj_POLLED_WAIT_INTERVAL           = 0.10    ---@type real
bj_POLLED_WAIT_SKIP_THRESHOLD     = 2.00    ---@type real
--  Game constants
bj_MAX_INVENTORY                  = 6    ---@type integer
bj_MAX_PLAYERS                    = GetBJMaxPlayers()    ---@type integer
bj_PLAYER_NEUTRAL_VICTIM          = GetBJPlayerNeutralVictim()    ---@type integer
bj_PLAYER_NEUTRAL_EXTRA           = GetBJPlayerNeutralExtra()    ---@type integer
bj_MAX_PLAYER_SLOTS               = GetBJMaxPlayerSlots()    ---@type integer
bj_MAX_SKELETONS                  = 25    ---@type integer
bj_MAX_STOCK_ITEM_SLOTS           = 11    ---@type integer
bj_MAX_STOCK_UNIT_SLOTS           = 11    ---@type integer
bj_MAX_ITEM_LEVEL                 = 10    ---@type integer
--  Auto Save constants
bj_MAX_CHECKPOINTS                = 5    ---@type integer
--  Ideally these would be looked up from Units/MiscData.txt,
--  but there is currently no script functionality exposed to do that
bj_TOD_DAWN                       = 6.00    ---@type real
bj_TOD_DUSK                       = 18.00    ---@type real
--  Melee game settings:
--    - Starting Time of Day (TOD)
--    - Starting Gold
--    - Starting Lumber
--    - Starting Hero Tokens (free heroes)
--    - Max heroes allowed per player
--    - Max heroes allowed per hero type
--    - Distance from start loc to search for nearby mines
-- 
bj_MELEE_STARTING_TOD             = 8.00    ---@type real
bj_MELEE_STARTING_GOLD_V0         = 750    ---@type integer
bj_MELEE_STARTING_GOLD_V1         = 500    ---@type integer
bj_MELEE_STARTING_LUMBER_V0       = 200    ---@type integer
bj_MELEE_STARTING_LUMBER_V1       = 150    ---@type integer
bj_MELEE_STARTING_HERO_TOKENS     = 1    ---@type integer
bj_MELEE_HERO_LIMIT               = 3    ---@type integer
bj_MELEE_HERO_TYPE_LIMIT          = 1    ---@type integer
bj_MELEE_MINE_SEARCH_RADIUS       = 2000    ---@type real
bj_MELEE_CLEAR_UNITS_RADIUS       = 1500    ---@type real
bj_MELEE_CRIPPLE_TIMEOUT          = 120.00    ---@type real
bj_MELEE_CRIPPLE_MSG_DURATION     = 20.00    ---@type real
bj_MELEE_MAX_TWINKED_HEROES_V0    = 3    ---@type integer
bj_MELEE_MAX_TWINKED_HEROES_V1    = 1    ---@type integer
--  Delay between a creep's death and the time it may drop an item.
bj_CREEP_ITEM_DELAY               = 0.50    ---@type real
--  Timing settings for Marketplace inventories.
bj_STOCK_RESTOCK_INITIAL_DELAY    = 120    ---@type real
bj_STOCK_RESTOCK_INTERVAL         = 30    ---@type real
bj_STOCK_MAX_ITERATIONS           = 20    ---@type integer
--  Max events registered by a single "dest dies in region" event.
bj_MAX_DEST_IN_REGION_EVENTS      = 64    ---@type integer
--  Camera settings
bj_CAMERA_MIN_FARZ                = 100    ---@type integer
bj_CAMERA_DEFAULT_DISTANCE        = 1650    ---@type integer
bj_CAMERA_DEFAULT_FARZ            = 5000    ---@type integer
bj_CAMERA_DEFAULT_AOA             = 304    ---@type integer
bj_CAMERA_DEFAULT_FOV             = 70    ---@type integer
bj_CAMERA_DEFAULT_ROLL            = 0    ---@type integer
bj_CAMERA_DEFAULT_ROTATION        = 90    ---@type integer
--  Rescue
bj_RESCUE_PING_TIME               = 2.00    ---@type real
--  Transmission behavior settings
bj_NOTHING_SOUND_DURATION         = 5.00    ---@type real
bj_TRANSMISSION_PING_TIME         = 1.00    ---@type real
bj_TRANSMISSION_IND_RED           = 255    ---@type integer
bj_TRANSMISSION_IND_BLUE          = 255    ---@type integer
bj_TRANSMISSION_IND_GREEN         = 255    ---@type integer
bj_TRANSMISSION_IND_ALPHA         = 255    ---@type integer
bj_TRANSMISSION_PORT_HANGTIME     = 1.50    ---@type real
--  Cinematic mode settings
bj_CINEMODE_INTERFACEFADE         = 0.50    ---@type real
bj_CINEMODE_GAMESPEED             = MAP_SPEED_NORMAL    ---@type gamespeed
--  Cinematic mode volume levels
bj_CINEMODE_VOLUME_UNITMOVEMENT   = 0.40    ---@type real
bj_CINEMODE_VOLUME_UNITSOUNDS     = 0.00    ---@type real
bj_CINEMODE_VOLUME_COMBAT         = 0.40    ---@type real
bj_CINEMODE_VOLUME_SPELLS         = 0.40    ---@type real
bj_CINEMODE_VOLUME_UI             = 0.00    ---@type real
bj_CINEMODE_VOLUME_MUSIC          = 0.55    ---@type real
bj_CINEMODE_VOLUME_AMBIENTSOUNDS  = 1.00    ---@type real
bj_CINEMODE_VOLUME_FIRE           = 0.60    ---@type real
--  Speech mode volume levels
bj_SPEECH_VOLUME_UNITMOVEMENT     = 0.25    ---@type real
bj_SPEECH_VOLUME_UNITSOUNDS       = 0.00    ---@type real
bj_SPEECH_VOLUME_COMBAT           = 0.25    ---@type real
bj_SPEECH_VOLUME_SPELLS           = 0.25    ---@type real
bj_SPEECH_VOLUME_UI               = 0.00    ---@type real
bj_SPEECH_VOLUME_MUSIC            = 0.55    ---@type real
bj_SPEECH_VOLUME_AMBIENTSOUNDS    = 1.00    ---@type real
bj_SPEECH_VOLUME_FIRE             = 0.60    ---@type real
--  Smart pan settings
bj_SMARTPAN_TRESHOLD_PAN          = 500    ---@type real
bj_SMARTPAN_TRESHOLD_SNAP         = 3500    ---@type real
--  QueuedTriggerExecute settings
bj_MAX_QUEUED_TRIGGERS            = 100    ---@type integer
bj_QUEUED_TRIGGER_TIMEOUT         = 180.00    ---@type real
--  Campaign indexing constants
bj_CAMPAIGN_INDEX_T               = 0    ---@type integer
bj_CAMPAIGN_INDEX_H               = 1    ---@type integer
bj_CAMPAIGN_INDEX_U               = 2    ---@type integer
bj_CAMPAIGN_INDEX_O               = 3    ---@type integer
bj_CAMPAIGN_INDEX_N               = 4    ---@type integer
bj_CAMPAIGN_INDEX_XN              = 5    ---@type integer
bj_CAMPAIGN_INDEX_XH              = 6    ---@type integer
bj_CAMPAIGN_INDEX_XU              = 7    ---@type integer
bj_CAMPAIGN_INDEX_XO              = 8    ---@type integer
--  Campaign offset constants (for mission indexing)
bj_CAMPAIGN_OFFSET_T              = 0    ---@type integer
bj_CAMPAIGN_OFFSET_H              = 1    ---@type integer
bj_CAMPAIGN_OFFSET_U              = 2    ---@type integer
bj_CAMPAIGN_OFFSET_O              = 3    ---@type integer
bj_CAMPAIGN_OFFSET_N              = 4    ---@type integer
bj_CAMPAIGN_OFFSET_XN             = 5    ---@type integer
bj_CAMPAIGN_OFFSET_XH             = 6    ---@type integer
bj_CAMPAIGN_OFFSET_XU             = 7    ---@type integer
bj_CAMPAIGN_OFFSET_XO             = 8    ---@type integer
--  Mission indexing constants
--  Tutorial
bj_MISSION_INDEX_T00              = bj_CAMPAIGN_OFFSET_T * 1000 + 0    ---@type integer
bj_MISSION_INDEX_T01              = bj_CAMPAIGN_OFFSET_T * 1000 + 1    ---@type integer
bj_MISSION_INDEX_T02              = bj_CAMPAIGN_OFFSET_T * 1000 + 2    ---@type integer
bj_MISSION_INDEX_T03              = bj_CAMPAIGN_OFFSET_T * 1000 + 3    ---@type integer
bj_MISSION_INDEX_T04              = bj_CAMPAIGN_OFFSET_T * 1000 + 4    ---@type integer
--  Human
bj_MISSION_INDEX_H00              = bj_CAMPAIGN_OFFSET_H * 1000 + 0    ---@type integer
bj_MISSION_INDEX_H01              = bj_CAMPAIGN_OFFSET_H * 1000 + 1    ---@type integer
bj_MISSION_INDEX_H02              = bj_CAMPAIGN_OFFSET_H * 1000 + 2    ---@type integer
bj_MISSION_INDEX_H03              = bj_CAMPAIGN_OFFSET_H * 1000 + 3    ---@type integer
bj_MISSION_INDEX_H04              = bj_CAMPAIGN_OFFSET_H * 1000 + 4    ---@type integer
bj_MISSION_INDEX_H05              = bj_CAMPAIGN_OFFSET_H * 1000 + 5    ---@type integer
bj_MISSION_INDEX_H06              = bj_CAMPAIGN_OFFSET_H * 1000 + 6    ---@type integer
bj_MISSION_INDEX_H07              = bj_CAMPAIGN_OFFSET_H * 1000 + 7    ---@type integer
bj_MISSION_INDEX_H08              = bj_CAMPAIGN_OFFSET_H * 1000 + 8    ---@type integer
bj_MISSION_INDEX_H09              = bj_CAMPAIGN_OFFSET_H * 1000 + 9    ---@type integer
bj_MISSION_INDEX_H10              = bj_CAMPAIGN_OFFSET_H * 1000 + 10    ---@type integer
bj_MISSION_INDEX_H11              = bj_CAMPAIGN_OFFSET_H * 1000 + 11    ---@type integer
--  Undead
bj_MISSION_INDEX_U00              = bj_CAMPAIGN_OFFSET_U * 1000 + 0    ---@type integer
bj_MISSION_INDEX_U01              = bj_CAMPAIGN_OFFSET_U * 1000 + 1    ---@type integer
bj_MISSION_INDEX_U02              = bj_CAMPAIGN_OFFSET_U * 1000 + 2    ---@type integer
bj_MISSION_INDEX_U03              = bj_CAMPAIGN_OFFSET_U * 1000 + 3    ---@type integer
bj_MISSION_INDEX_U05              = bj_CAMPAIGN_OFFSET_U * 1000 + 4    ---@type integer
bj_MISSION_INDEX_U07              = bj_CAMPAIGN_OFFSET_U * 1000 + 5    ---@type integer
bj_MISSION_INDEX_U08              = bj_CAMPAIGN_OFFSET_U * 1000 + 6    ---@type integer
bj_MISSION_INDEX_U09              = bj_CAMPAIGN_OFFSET_U * 1000 + 7    ---@type integer
bj_MISSION_INDEX_U10              = bj_CAMPAIGN_OFFSET_U * 1000 + 8    ---@type integer
bj_MISSION_INDEX_U11              = bj_CAMPAIGN_OFFSET_U * 1000 + 9    ---@type integer
--  Orc
bj_MISSION_INDEX_O00              = bj_CAMPAIGN_OFFSET_O * 1000 + 0    ---@type integer
bj_MISSION_INDEX_O01              = bj_CAMPAIGN_OFFSET_O * 1000 + 1    ---@type integer
bj_MISSION_INDEX_O02              = bj_CAMPAIGN_OFFSET_O * 1000 + 2    ---@type integer
bj_MISSION_INDEX_O03              = bj_CAMPAIGN_OFFSET_O * 1000 + 3    ---@type integer
bj_MISSION_INDEX_O04              = bj_CAMPAIGN_OFFSET_O * 1000 + 4    ---@type integer
bj_MISSION_INDEX_O05              = bj_CAMPAIGN_OFFSET_O * 1000 + 5    ---@type integer
bj_MISSION_INDEX_O06              = bj_CAMPAIGN_OFFSET_O * 1000 + 6    ---@type integer
bj_MISSION_INDEX_O07              = bj_CAMPAIGN_OFFSET_O * 1000 + 7    ---@type integer
bj_MISSION_INDEX_O08              = bj_CAMPAIGN_OFFSET_O * 1000 + 8    ---@type integer
bj_MISSION_INDEX_O09              = bj_CAMPAIGN_OFFSET_O * 1000 + 9    ---@type integer
bj_MISSION_INDEX_O10              = bj_CAMPAIGN_OFFSET_O * 1000 + 10    ---@type integer
--  Night Elf
bj_MISSION_INDEX_N00              = bj_CAMPAIGN_OFFSET_N * 1000 + 0    ---@type integer
bj_MISSION_INDEX_N01              = bj_CAMPAIGN_OFFSET_N * 1000 + 1    ---@type integer
bj_MISSION_INDEX_N02              = bj_CAMPAIGN_OFFSET_N * 1000 + 2    ---@type integer
bj_MISSION_INDEX_N03              = bj_CAMPAIGN_OFFSET_N * 1000 + 3    ---@type integer
bj_MISSION_INDEX_N04              = bj_CAMPAIGN_OFFSET_N * 1000 + 4    ---@type integer
bj_MISSION_INDEX_N05              = bj_CAMPAIGN_OFFSET_N * 1000 + 5    ---@type integer
bj_MISSION_INDEX_N06              = bj_CAMPAIGN_OFFSET_N * 1000 + 6    ---@type integer
bj_MISSION_INDEX_N07              = bj_CAMPAIGN_OFFSET_N * 1000 + 7    ---@type integer
bj_MISSION_INDEX_N08              = bj_CAMPAIGN_OFFSET_N * 1000 + 8    ---@type integer
bj_MISSION_INDEX_N09              = bj_CAMPAIGN_OFFSET_N * 1000 + 9    ---@type integer
--  Expansion Night Elf
bj_MISSION_INDEX_XN00             = bj_CAMPAIGN_OFFSET_XN * 1000 + 0    ---@type integer
bj_MISSION_INDEX_XN01             = bj_CAMPAIGN_OFFSET_XN * 1000 + 1    ---@type integer
bj_MISSION_INDEX_XN02             = bj_CAMPAIGN_OFFSET_XN * 1000 + 2    ---@type integer
bj_MISSION_INDEX_XN03             = bj_CAMPAIGN_OFFSET_XN * 1000 + 3    ---@type integer
bj_MISSION_INDEX_XN04             = bj_CAMPAIGN_OFFSET_XN * 1000 + 4    ---@type integer
bj_MISSION_INDEX_XN05             = bj_CAMPAIGN_OFFSET_XN * 1000 + 5    ---@type integer
bj_MISSION_INDEX_XN06             = bj_CAMPAIGN_OFFSET_XN * 1000 + 6    ---@type integer
bj_MISSION_INDEX_XN07             = bj_CAMPAIGN_OFFSET_XN * 1000 + 7    ---@type integer
bj_MISSION_INDEX_XN08             = bj_CAMPAIGN_OFFSET_XN * 1000 + 8    ---@type integer
bj_MISSION_INDEX_XN09             = bj_CAMPAIGN_OFFSET_XN * 1000 + 9    ---@type integer
bj_MISSION_INDEX_XN10             = bj_CAMPAIGN_OFFSET_XN * 1000 + 10    ---@type integer
--  Expansion Human
bj_MISSION_INDEX_XH00             = bj_CAMPAIGN_OFFSET_XH * 1000 + 0    ---@type integer
bj_MISSION_INDEX_XH01             = bj_CAMPAIGN_OFFSET_XH * 1000 + 1    ---@type integer
bj_MISSION_INDEX_XH02             = bj_CAMPAIGN_OFFSET_XH * 1000 + 2    ---@type integer
bj_MISSION_INDEX_XH03             = bj_CAMPAIGN_OFFSET_XH * 1000 + 3    ---@type integer
bj_MISSION_INDEX_XH04             = bj_CAMPAIGN_OFFSET_XH * 1000 + 4    ---@type integer
bj_MISSION_INDEX_XH05             = bj_CAMPAIGN_OFFSET_XH * 1000 + 5    ---@type integer
bj_MISSION_INDEX_XH06             = bj_CAMPAIGN_OFFSET_XH * 1000 + 6    ---@type integer
bj_MISSION_INDEX_XH07             = bj_CAMPAIGN_OFFSET_XH * 1000 + 7    ---@type integer
bj_MISSION_INDEX_XH08             = bj_CAMPAIGN_OFFSET_XH * 1000 + 8    ---@type integer
bj_MISSION_INDEX_XH09             = bj_CAMPAIGN_OFFSET_XH * 1000 + 9    ---@type integer
--  Expansion Undead
bj_MISSION_INDEX_XU00             = bj_CAMPAIGN_OFFSET_XU * 1000 + 0    ---@type integer
bj_MISSION_INDEX_XU01             = bj_CAMPAIGN_OFFSET_XU * 1000 + 1    ---@type integer
bj_MISSION_INDEX_XU02             = bj_CAMPAIGN_OFFSET_XU * 1000 + 2    ---@type integer
bj_MISSION_INDEX_XU03             = bj_CAMPAIGN_OFFSET_XU * 1000 + 3    ---@type integer
bj_MISSION_INDEX_XU04             = bj_CAMPAIGN_OFFSET_XU * 1000 + 4    ---@type integer
bj_MISSION_INDEX_XU05             = bj_CAMPAIGN_OFFSET_XU * 1000 + 5    ---@type integer
bj_MISSION_INDEX_XU06             = bj_CAMPAIGN_OFFSET_XU * 1000 + 6    ---@type integer
bj_MISSION_INDEX_XU07             = bj_CAMPAIGN_OFFSET_XU * 1000 + 7    ---@type integer
bj_MISSION_INDEX_XU08             = bj_CAMPAIGN_OFFSET_XU * 1000 + 8    ---@type integer
bj_MISSION_INDEX_XU09             = bj_CAMPAIGN_OFFSET_XU * 1000 + 9    ---@type integer
bj_MISSION_INDEX_XU10             = bj_CAMPAIGN_OFFSET_XU * 1000 + 10    ---@type integer
bj_MISSION_INDEX_XU11             = bj_CAMPAIGN_OFFSET_XU * 1000 + 11    ---@type integer
bj_MISSION_INDEX_XU12             = bj_CAMPAIGN_OFFSET_XU * 1000 + 12    ---@type integer
bj_MISSION_INDEX_XU13             = bj_CAMPAIGN_OFFSET_XU * 1000 + 13    ---@type integer
--  Expansion Orc
bj_MISSION_INDEX_XO00             = bj_CAMPAIGN_OFFSET_XO * 1000 + 0    ---@type integer
bj_MISSION_INDEX_XO01             = bj_CAMPAIGN_OFFSET_XO * 1000 + 1    ---@type integer
bj_MISSION_INDEX_XO02             = bj_CAMPAIGN_OFFSET_XO * 1000 + 2    ---@type integer
bj_MISSION_INDEX_XO03             = bj_CAMPAIGN_OFFSET_XO * 1000 + 3    ---@type integer
--  Cinematic indexing constants
bj_CINEMATICINDEX_TOP             = 0    ---@type integer
bj_CINEMATICINDEX_HOP             = 1    ---@type integer
bj_CINEMATICINDEX_HED             = 2    ---@type integer
bj_CINEMATICINDEX_OOP             = 3    ---@type integer
bj_CINEMATICINDEX_OED             = 4    ---@type integer
bj_CINEMATICINDEX_UOP             = 5    ---@type integer
bj_CINEMATICINDEX_UED             = 6    ---@type integer
bj_CINEMATICINDEX_NOP             = 7    ---@type integer
bj_CINEMATICINDEX_NED             = 8    ---@type integer
bj_CINEMATICINDEX_XOP             = 9    ---@type integer
bj_CINEMATICINDEX_XED             = 10    ---@type integer
--  Alliance settings
bj_ALLIANCE_UNALLIED              = 0    ---@type integer
bj_ALLIANCE_UNALLIED_VISION       = 1    ---@type integer
bj_ALLIANCE_ALLIED                = 2    ---@type integer
bj_ALLIANCE_ALLIED_VISION         = 3    ---@type integer
bj_ALLIANCE_ALLIED_UNITS          = 4    ---@type integer
bj_ALLIANCE_ALLIED_ADVUNITS       = 5    ---@type integer
bj_ALLIANCE_NEUTRAL               = 6    ---@type integer
bj_ALLIANCE_NEUTRAL_VISION        = 7    ---@type integer
--  Keyboard Event Types
bj_KEYEVENTTYPE_DEPRESS           = 0    ---@type integer
bj_KEYEVENTTYPE_RELEASE           = 1    ---@type integer
--  Keyboard Event Keys
bj_KEYEVENTKEY_LEFT               = 0    ---@type integer
bj_KEYEVENTKEY_RIGHT              = 1    ---@type integer
bj_KEYEVENTKEY_DOWN               = 2    ---@type integer
bj_KEYEVENTKEY_UP                 = 3    ---@type integer
--  Mouse Event Types
bj_MOUSEEVENTTYPE_DOWN            = 0    ---@type integer
bj_MOUSEEVENTTYPE_UP              = 1    ---@type integer
bj_MOUSEEVENTTYPE_MOVE            = 2    ---@type integer
--  Transmission timing methods
bj_TIMETYPE_ADD                   = 0    ---@type integer
bj_TIMETYPE_SET                   = 1    ---@type integer
bj_TIMETYPE_SUB                   = 2    ---@type integer
--  Camera bounds adjustment methods
bj_CAMERABOUNDS_ADJUST_ADD        = 0    ---@type integer
bj_CAMERABOUNDS_ADJUST_SUB        = 1    ---@type integer
--  Quest creation states
bj_QUESTTYPE_REQ_DISCOVERED       = 0    ---@type integer
bj_QUESTTYPE_REQ_UNDISCOVERED     = 1    ---@type integer
bj_QUESTTYPE_OPT_DISCOVERED       = 2    ---@type integer
bj_QUESTTYPE_OPT_UNDISCOVERED     = 3    ---@type integer
--  Quest message types
bj_QUESTMESSAGE_DISCOVERED        = 0    ---@type integer
bj_QUESTMESSAGE_UPDATED           = 1    ---@type integer
bj_QUESTMESSAGE_COMPLETED         = 2    ---@type integer
bj_QUESTMESSAGE_FAILED            = 3    ---@type integer
bj_QUESTMESSAGE_REQUIREMENT       = 4    ---@type integer
bj_QUESTMESSAGE_MISSIONFAILED     = 5    ---@type integer
bj_QUESTMESSAGE_ALWAYSHINT        = 6    ---@type integer
bj_QUESTMESSAGE_HINT              = 7    ---@type integer
bj_QUESTMESSAGE_SECRET            = 8    ---@type integer
bj_QUESTMESSAGE_UNITACQUIRED      = 9    ---@type integer
bj_QUESTMESSAGE_UNITAVAILABLE     = 10    ---@type integer
bj_QUESTMESSAGE_ITEMACQUIRED      = 11    ---@type integer
bj_QUESTMESSAGE_WARNING           = 12    ---@type integer
--  Leaderboard sorting methods
bj_SORTTYPE_SORTBYVALUE           = 0    ---@type integer
bj_SORTTYPE_SORTBYPLAYER          = 1    ---@type integer
bj_SORTTYPE_SORTBYLABEL           = 2    ---@type integer
--  Cinematic fade filter methods
bj_CINEFADETYPE_FADEIN            = 0    ---@type integer
bj_CINEFADETYPE_FADEOUT           = 1    ---@type integer
bj_CINEFADETYPE_FADEOUTIN         = 2    ---@type integer
--  Buff removal methods
bj_REMOVEBUFFS_POSITIVE           = 0    ---@type integer
bj_REMOVEBUFFS_NEGATIVE           = 1    ---@type integer
bj_REMOVEBUFFS_ALL                = 2    ---@type integer
bj_REMOVEBUFFS_NONTLIFE           = 3    ---@type integer
--  Buff properties - polarity
bj_BUFF_POLARITY_POSITIVE         = 0    ---@type integer
bj_BUFF_POLARITY_NEGATIVE         = 1    ---@type integer
bj_BUFF_POLARITY_EITHER           = 2    ---@type integer
--  Buff properties - resist type
bj_BUFF_RESIST_MAGIC              = 0    ---@type integer
bj_BUFF_RESIST_PHYSICAL           = 1    ---@type integer
bj_BUFF_RESIST_EITHER             = 2    ---@type integer
bj_BUFF_RESIST_BOTH               = 3    ---@type integer
--  Hero stats
bj_HEROSTAT_STR                   = 0    ---@type integer
bj_HEROSTAT_AGI                   = 1    ---@type integer
bj_HEROSTAT_INT                   = 2    ---@type integer
--  Hero skill point modification methods
bj_MODIFYMETHOD_ADD               = 0    ---@type integer
bj_MODIFYMETHOD_SUB               = 1    ---@type integer
bj_MODIFYMETHOD_SET               = 2    ---@type integer
--  Unit state adjustment methods (for replaced units)
bj_UNIT_STATE_METHOD_ABSOLUTE     = 0    ---@type integer
bj_UNIT_STATE_METHOD_RELATIVE     = 1    ---@type integer
bj_UNIT_STATE_METHOD_DEFAULTS     = 2    ---@type integer
bj_UNIT_STATE_METHOD_MAXIMUM      = 3    ---@type integer
--  Gate operations
bj_GATEOPERATION_CLOSE            = 0    ---@type integer
bj_GATEOPERATION_OPEN             = 1    ---@type integer
bj_GATEOPERATION_DESTROY          = 2    ---@type integer
--  Game cache value types
bj_GAMECACHE_BOOLEAN              = 0    ---@type integer
bj_GAMECACHE_INTEGER              = 1    ---@type integer
bj_GAMECACHE_REAL                 = 2    ---@type integer
bj_GAMECACHE_UNIT                 = 3    ---@type integer
bj_GAMECACHE_STRING               = 4    ---@type integer
--  Hashtable value types
bj_HASHTABLE_BOOLEAN              = 0    ---@type integer
bj_HASHTABLE_INTEGER              = 1    ---@type integer
bj_HASHTABLE_REAL                 = 2    ---@type integer
bj_HASHTABLE_STRING               = 3    ---@type integer
bj_HASHTABLE_HANDLE               = 4    ---@type integer
--  Item status types
bj_ITEM_STATUS_HIDDEN             = 0    ---@type integer
bj_ITEM_STATUS_OWNED              = 1    ---@type integer
bj_ITEM_STATUS_INVULNERABLE       = 2    ---@type integer
bj_ITEM_STATUS_POWERUP            = 3    ---@type integer
bj_ITEM_STATUS_SELLABLE           = 4    ---@type integer
bj_ITEM_STATUS_PAWNABLE           = 5    ---@type integer
--  Itemcode status types
bj_ITEMCODE_STATUS_POWERUP        = 0    ---@type integer
bj_ITEMCODE_STATUS_SELLABLE       = 1    ---@type integer
bj_ITEMCODE_STATUS_PAWNABLE       = 2    ---@type integer
--  Minimap ping styles
bj_MINIMAPPINGSTYLE_SIMPLE        = 0    ---@type integer
bj_MINIMAPPINGSTYLE_FLASHY        = 1    ---@type integer
bj_MINIMAPPINGSTYLE_ATTACK        = 2    ---@type integer
--  Campaign Minimap icon styles
bj_CAMPPINGSTYLE_PRIMARY          = 0    ---@type integer
bj_CAMPPINGSTYLE_PRIMARY_GREEN    = 1    ---@type integer
bj_CAMPPINGSTYLE_PRIMARY_RED      = 2    ---@type integer
bj_CAMPPINGSTYLE_BONUS            = 3    ---@type integer
bj_CAMPPINGSTYLE_TURNIN           = 4    ---@type integer
bj_CAMPPINGSTYLE_BOSS             = 5    ---@type integer
bj_CAMPPINGSTYLE_CONTROL_ALLY     = 6    ---@type integer
bj_CAMPPINGSTYLE_CONTROL_NEUTRAL  = 7    ---@type integer
bj_CAMPPINGSTYLE_CONTROL_ENEMY    = 8    ---@type integer
--  Corpse creation settings
bj_CORPSE_MAX_DEATH_TIME          = 8.00    ---@type real
--  Corpse creation styles
bj_CORPSETYPE_FLESH               = 0    ---@type integer
bj_CORPSETYPE_BONE                = 1    ---@type integer
--  Elevator pathing-blocker destructable code
bj_ELEVATOR_BLOCKER_CODE          = FourCC('DTep')    ---@type integer
bj_ELEVATOR_CODE01                = FourCC('DTrf')    ---@type integer
bj_ELEVATOR_CODE02                = FourCC('DTrx')    ---@type integer
--  Elevator wall codes
bj_ELEVATOR_WALL_TYPE_ALL         = 0    ---@type integer
bj_ELEVATOR_WALL_TYPE_EAST        = 1    ---@type integer
bj_ELEVATOR_WALL_TYPE_NORTH       = 2    ---@type integer
bj_ELEVATOR_WALL_TYPE_SOUTH       = 3    ---@type integer
bj_ELEVATOR_WALL_TYPE_WEST        = 4    ---@type integer
-- -----------------------------------------------------------------------
--  Variables
-- 
--  Force predefs
bj_FORCE_ALL_PLAYERS              = nil    ---@type force
bj_FORCE_PLAYER                   = {}    ---@type force
bj_MELEE_MAX_TWINKED_HEROES       = 0    ---@type integer
--  Map area rects
bj_mapInitialPlayableArea         = nil    ---@type rect
bj_mapInitialCameraBounds         = nil    ---@type rect
--  Utility function vars
bj_forLoopAIndex                  = 0    ---@type integer
bj_forLoopBIndex                  = 0    ---@type integer
bj_forLoopAIndexEnd               = 0    ---@type integer
bj_forLoopBIndexEnd               = 0    ---@type integer
bj_slotControlReady               = false    ---@type boolean
bj_slotControlUsed                = {}    ---@type boolean
bj_slotControl                    = {}    ---@type mapcontrol
--  Game started detection vars
bj_gameStartedTimer               = nil    ---@type timer
bj_gameStarted                    = false    ---@type boolean
bj_volumeGroupsTimer              = CreateTimer()    ---@type timer
--  Singleplayer check
bj_isSinglePlayer                 = false    ---@type boolean
--  Day/Night Cycle vars
bj_dncSoundsDay                   = nil    ---@type trigger
bj_dncSoundsNight                 = nil    ---@type trigger
bj_dayAmbientSound                = nil    ---@type sound
bj_nightAmbientSound              = nil    ---@type sound
bj_dncSoundsDawn                  = nil    ---@type trigger
bj_dncSoundsDusk                  = nil    ---@type trigger
bj_dawnSound                      = nil    ---@type sound
bj_duskSound                      = nil    ---@type sound
bj_useDawnDuskSounds              = true    ---@type boolean
bj_dncIsDaytime                   = false    ---@type boolean
--  Triggered sounds
-- sound              bj_pingMinimapSound         = null
bj_rescueSound                    = nil    ---@type sound
bj_questDiscoveredSound           = nil    ---@type sound
bj_questUpdatedSound              = nil    ---@type sound
bj_questCompletedSound            = nil    ---@type sound
bj_questFailedSound               = nil    ---@type sound
bj_questHintSound                 = nil    ---@type sound
bj_questSecretSound               = nil    ---@type sound
bj_questItemAcquiredSound         = nil    ---@type sound
bj_questWarningSound              = nil    ---@type sound
bj_victoryDialogSound             = nil    ---@type sound
bj_defeatDialogSound              = nil    ---@type sound
--  Marketplace vars
bj_stockItemPurchased             = nil    ---@type trigger
bj_stockUpdateTimer               = nil    ---@type timer
bj_stockAllowedPermanent          = {}    ---@type boolean
bj_stockAllowedCharged            = {}    ---@type boolean
bj_stockAllowedArtifact           = {}    ---@type boolean
bj_stockPickedItemLevel           = 0    ---@type integer
-- bj_stockPickedItemType	---@type itemtype	
--  Melee vars
bj_meleeVisibilityTrained         = nil    ---@type trigger
bj_meleeVisibilityIsDay           = true    ---@type boolean
bj_meleeGrantHeroItems            = false    ---@type boolean
bj_meleeNearestMineToLoc          = nil    ---@type location
bj_meleeNearestMine               = nil    ---@type unit
bj_meleeNearestMineDist           = 0.00    ---@type real
bj_meleeGameOver                  = false    ---@type boolean
bj_meleeDefeated                  = {}    ---@type boolean
bj_meleeVictoried                 = {}    ---@type boolean
bj_ghoul                          = {}    ---@type unit
bj_crippledTimer                  = {}    ---@type timer
bj_crippledTimerWindows           = {}    ---@type timerdialog
bj_playerIsCrippled               = {}    ---@type boolean
bj_playerIsExposed                = {}    ---@type boolean
bj_finishSoonAllExposed           = false    ---@type boolean
bj_finishSoonTimerDialog          = nil    ---@type timerdialog
bj_meleeTwinkedHeroes             = {}    ---@type integer
--  Rescue behavior vars
bj_rescueUnitBehavior             = nil    ---@type trigger
bj_rescueChangeColorUnit          = true    ---@type boolean
bj_rescueChangeColorBldg          = true    ---@type boolean
--  Transmission vars
bj_cineSceneEndingTimer           = nil    ---@type timer
bj_cineSceneLastSound             = nil    ---@type sound
bj_cineSceneBeingSkipped          = nil    ---@type trigger
--  Cinematic mode vars
bj_cineModePriorSpeed             = MAP_SPEED_NORMAL    ---@type gamespeed
bj_cineModePriorFogSetting        = false    ---@type boolean
bj_cineModePriorMaskSetting       = false    ---@type boolean
bj_cineModeAlreadyIn              = false    ---@type boolean
bj_cineModePriorDawnDusk          = false    ---@type boolean
bj_cineModeSavedSeed              = 0    ---@type integer
--  Cinematic fade vars
bj_cineFadeFinishTimer            = nil    ---@type timer
bj_cineFadeContinueTimer          = nil    ---@type timer
bj_cineFadeContinueRed            = 0    ---@type real
bj_cineFadeContinueGreen          = 0    ---@type real
bj_cineFadeContinueBlue           = 0    ---@type real
bj_cineFadeContinueTrans          = 0    ---@type real
bj_cineFadeContinueDuration       = 0    ---@type real
bj_cineFadeContinueTex            = ""    ---@type string
--  QueuedTriggerExecute vars
bj_queuedExecTotal                = 0    ---@type integer
bj_queuedExecTriggers             = {}    ---@type trigger
bj_queuedExecUseConds             = {}    ---@type boolean
bj_queuedExecTimeoutTimer         = CreateTimer()    ---@type timer
bj_queuedExecTimeout              = nil    ---@type trigger
--  Helper vars (for Filter and Enum funcs)
bj_destInRegionDiesCount          = 0    ---@type integer
bj_destInRegionDiesTrig           = nil    ---@type trigger
bj_groupCountUnits                = 0    ---@type integer
bj_forceCountPlayers              = 0    ---@type integer
bj_groupEnumTypeId                = 0    ---@type integer
bj_groupEnumOwningPlayer          = nil    ---@type player
bj_groupAddGroupDest              = nil    ---@type group
bj_groupRemoveGroupDest           = nil    ---@type group
bj_groupRandomConsidered          = 0    ---@type integer
bj_groupRandomCurrentPick         = nil    ---@type unit
bj_groupLastCreatedDest           = nil    ---@type group
bj_randomSubGroupGroup            = nil    ---@type group
bj_randomSubGroupWant             = 0    ---@type integer
bj_randomSubGroupTotal            = 0    ---@type integer
bj_randomSubGroupChance           = 0    ---@type real
bj_destRandomConsidered           = 0    ---@type integer
bj_destRandomCurrentPick          = nil    ---@type destructable
bj_elevatorWallBlocker            = nil    ---@type destructable
bj_elevatorNeighbor               = nil    ---@type destructable
bj_itemRandomConsidered           = 0    ---@type integer
bj_itemRandomCurrentPick          = nil    ---@type item
bj_forceRandomConsidered          = 0    ---@type integer
bj_forceRandomCurrentPick         = nil    ---@type player
bj_makeUnitRescuableUnit          = nil    ---@type unit
bj_makeUnitRescuableFlag          = true    ---@type boolean
bj_pauseAllUnitsFlag              = true    ---@type boolean
bj_enumDestructableCenter         = nil    ---@type location
bj_enumDestructableRadius         = 0    ---@type real
bj_setPlayerTargetColor           = nil    ---@type playercolor
bj_isUnitGroupDeadResult          = true    ---@type boolean
bj_isUnitGroupEmptyResult         = true    ---@type boolean
bj_isUnitGroupInRectResult        = true    ---@type boolean
bj_isUnitGroupInRectRect          = nil    ---@type rect
bj_changeLevelShowScores          = false    ---@type boolean
bj_changeLevelMapName             = nil    ---@type string
bj_suspendDecayFleshGroup         = CreateGroup()    ---@type group
bj_suspendDecayBoneGroup          = CreateGroup()    ---@type group
bj_delayedSuspendDecayTimer       = CreateTimer()    ---@type timer
bj_delayedSuspendDecayTrig        = nil    ---@type trigger
bj_livingPlayerUnitsTypeId        = 0    ---@type integer
bj_lastDyingWidget                = nil    ---@type widget
--  Random distribution vars
bj_randDistCount                  = 0    ---@type integer
bj_randDistID                     = {}    ---@type integer
bj_randDistChance                 = {}    ---@type integer
--  Last X'd vars
bj_lastCreatedUnit                = nil    ---@type unit
bj_lastCreatedItem                = nil    ---@type item
bj_lastRemovedItem                = nil    ---@type item
bj_lastHauntedGoldMine            = nil    ---@type unit
bj_lastCreatedDestructable        = nil    ---@type destructable
bj_lastCreatedGroup               = CreateGroup()    ---@type group
bj_lastCreatedFogModifier         = nil    ---@type fogmodifier
bj_lastCreatedEffect              = nil    ---@type effect
bj_lastCreatedWeatherEffect       = nil    ---@type weathereffect
bj_lastCreatedTerrainDeformation  = nil    ---@type terraindeformation
bj_lastCreatedQuest               = nil    ---@type quest
bj_lastCreatedQuestItem           = nil    ---@type questitem
bj_lastCreatedDefeatCondition     = nil    ---@type defeatcondition
bj_lastStartedTimer               = CreateTimer()    ---@type timer
bj_lastCreatedTimerDialog         = nil    ---@type timerdialog
bj_lastCreatedLeaderboard         = nil    ---@type leaderboard
bj_lastCreatedMultiboard          = nil    ---@type multiboard
bj_lastPlayedSound                = nil    ---@type sound
bj_lastPlayedMusic                = ""    ---@type string
bj_lastTransmissionDuration       = 0    ---@type real
bj_lastCreatedGameCache           = nil    ---@type gamecache
bj_lastCreatedHashtable           = nil    ---@type hashtable
bj_lastLoadedUnit                 = nil    ---@type unit
bj_lastCreatedButton              = nil    ---@type button
bj_lastReplacedUnit               = nil    ---@type unit
bj_lastCreatedTextTag             = nil    ---@type texttag
bj_lastCreatedLightning           = nil    ---@type lightning
bj_lastCreatedImage               = nil    ---@type image
bj_lastCreatedUbersplat           = nil    ---@type ubersplat
bj_lastCreatedMinimapIcon         = nil    ---@type minimapicon
bj_lastCreatedCommandButtonEffect = nil    ---@type commandbuttoneffect
--  Filter function vars
filterIssueHauntOrderAtLocBJ      = nil    ---@type boolexpr
filterEnumDestructablesInCircleBJ = nil    ---@type boolexpr
filterGetUnitsInRectOfPlayer      = nil    ---@type boolexpr
filterGetUnitsOfTypeIdAll         = nil    ---@type boolexpr
filterGetUnitsOfPlayerAndTypeId   = nil    ---@type boolexpr
filterMeleeTrainedUnitIsHeroBJ    = nil    ---@type boolexpr
filterLivingPlayerUnitsOfTypeId   = nil    ---@type boolexpr
--  Memory cleanup vars
bj_wantDestroyGroup               = false    ---@type boolean
--  Instanced Operation Results
bj_lastInstObjFuncSuccessful      = true    ---@type boolean
-- ***************************************************************************
-- 
-- *  Debugging Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param msg string
---@return nil
function BJDebugMsg(msg)
	local i = 0
	while true do
		DisplayTimedTextToPlayer(Player(i), 0, 0, 60, msg)
		i = i + 1
		if i == bj_MAX_PLAYERS then break end
	end
end
-- ***************************************************************************
-- 
-- *  Math Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param a real
---@param b real
---@return real
function RMinBJ(a, b)
	if (a < b) then
		return a
	else
		return b
	end
end
-- ===========================================================================

---@param a real
---@param b real
---@return real
function RMaxBJ(a, b)
	if (a < b) then
		return b
	else
		return a
	end
end
-- ===========================================================================

---@param a real
---@return real
function RAbsBJ(a)
	if (a >= 0) then
		return a
	else
		return -a
	end
end
-- ===========================================================================

---@param a real
---@return real
function RSignBJ(a)
	if (a >= 0.0) then
		return 1.0
	else
		return -1.0
	end
end
-- ===========================================================================

---@param a integer
---@param b integer
---@return integer
function IMinBJ(a, b)
	if (a < b) then
		return a
	else
		return b
	end
end
-- ===========================================================================

---@param a integer
---@param b integer
---@return integer
function IMaxBJ(a, b)
	if (a < b) then
		return b
	else
		return a
	end
end
-- ===========================================================================

---@param a integer
---@return integer
function IAbsBJ(a)
	if (a >= 0) then
		return a
	else
		return -a
	end
end
-- ===========================================================================

---@param a integer
---@return integer
function ISignBJ(a)
	if (a >= 0) then
		return 1
	else
		return -1
	end
end
-- ===========================================================================

---@param degrees real
---@return real
function SinBJ(degrees)
	return Sin(degrees * bj_DEGTORAD)
end
-- ===========================================================================

---@param degrees real
---@return real
function CosBJ(degrees)
	return Cos(degrees * bj_DEGTORAD)
end
-- ===========================================================================

---@param degrees real
---@return real
function TanBJ(degrees)
	return Tan(degrees * bj_DEGTORAD)
end
-- ===========================================================================

---@param degrees real
---@return real
function AsinBJ(degrees)
	return Asin(degrees) * bj_RADTODEG
end
-- ===========================================================================

---@param degrees real
---@return real
function AcosBJ(degrees)
	return Acos(degrees) * bj_RADTODEG
end
-- ===========================================================================

---@param degrees real
---@return real
function AtanBJ(degrees)
	return Atan(degrees) * bj_RADTODEG
end
-- ===========================================================================

---@param y real
---@param x real
---@return real
function Atan2BJ(y, x)
	return Atan2(y, x) * bj_RADTODEG
end
-- ===========================================================================

---@param locA location
---@param locB location
---@return real
function AngleBetweenPoints(locA, locB)
	return bj_RADTODEG * Atan2(GetLocationY(locB) - GetLocationY(locA), GetLocationX(locB) - GetLocationX(locA))
end
-- ===========================================================================

---@param locA location
---@param locB location
---@return real
function DistanceBetweenPoints(locA, locB)
	local dx = GetLocationX(locB) - GetLocationX(locA)
	local dy = GetLocationY(locB) - GetLocationY(locA)
	return SquareRoot(dx * dx + dy * dy)
end
-- ===========================================================================

---@param source location
---@param dist real
---@param angle real
---@return location
function PolarProjectionBJ(source, dist, angle)
	local x = GetLocationX(source) + dist * Cos(angle * bj_DEGTORAD)
	local y = GetLocationY(source) + dist * Sin(angle * bj_DEGTORAD)
	return Location(x, y)
end
-- ===========================================================================
---@return real
function GetRandomDirectionDeg()
	return GetRandomReal(0, 360)
end
-- ===========================================================================
---@return real
function GetRandomPercentageBJ()
	return GetRandomReal(0, 100)
end
-- ===========================================================================

---@param whichRect rect
---@return location
function GetRandomLocInRect(whichRect)
	return Location(GetRandomReal(GetRectMinX(whichRect), GetRectMaxX(whichRect)), GetRandomReal(GetRectMinY(whichRect), GetRectMaxY(whichRect)))
end
-- ===========================================================================
--  Calculate the modulus/remainder of (dividend) divided by (divisor).
--  Examples:  18 mod 5 = 3.  15 mod 5 = 0.  -8 mod 5 = 2.
-- 

---@param dividend integer
---@param divisor integer
---@return integer
function ModuloInteger(dividend, divisor)
	local modulus = dividend - (dividend / divisor) * divisor
	
	--  If the dividend was negative, the above modulus calculation will
	--  be negative, but within (-divisor..0).  We can add (divisor) to
	--  shift this result into the desired range of (0..divisor).
	if (modulus < 0) then
		modulus = modulus + divisor
	end
	
	return modulus
end
-- ===========================================================================
--  Calculate the modulus/remainder of (dividend) divided by (divisor).
--  Examples:  13.000 mod 2.500 = 0.500.  -6.000 mod 2.500 = 1.500.
-- 

---@param dividend real
---@param divisor real
---@return real
function ModuloReal(dividend, divisor)
	local modulus = dividend - I2R(R2I(dividend / divisor)) * divisor
	
	--  If the dividend was negative, the above modulus calculation will
	--  be negative, but within (-divisor..0).  We can add (divisor) to
	--  shift this result into the desired range of (0..divisor).
	if (modulus < 0) then
		modulus = modulus + divisor
	end
	
	return modulus
end
-- ===========================================================================

---@param loc location
---@param dx real
---@param dy real
---@return location
function OffsetLocation(loc, dx, dy)
	return Location(GetLocationX(loc) + dx, GetLocationY(loc) + dy)
end
-- ===========================================================================

---@param r rect
---@param dx real
---@param dy real
---@return rect
function OffsetRectBJ(r, dx, dy)
	return Rect(GetRectMinX(r) + dx, GetRectMinY(r) + dy, GetRectMaxX(r) + dx, GetRectMaxY(r) + dy)
end
-- ===========================================================================

---@param center location
---@param width real
---@param height real
---@return rect
function RectFromCenterSizeBJ(center, width, height)
	local x = GetLocationX(center)
	local y = GetLocationY(center)
	return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
end
-- ===========================================================================

---@param r rect
---@param x real
---@param y real
---@return boolean
function RectContainsCoords(r, x, y)
	return (GetRectMinX(r) <= x) and (x <= GetRectMaxX(r)) and (GetRectMinY(r) <= y) and (y <= GetRectMaxY(r))
end
-- ===========================================================================

---@param r rect
---@param loc location
---@return boolean
function RectContainsLoc(r, loc)
	return RectContainsCoords(r, GetLocationX(loc), GetLocationY(loc))
end
-- ===========================================================================

---@param r rect
---@param whichUnit unit
---@return boolean
function RectContainsUnit(r, whichUnit)
	return RectContainsCoords(r, GetUnitX(whichUnit), GetUnitY(whichUnit))
end
-- ===========================================================================

---@param whichItem item
---@param r rect
---@return boolean
function RectContainsItem(whichItem, r)
	if (whichItem == nil) then
		return false
	end
	
	if (IsItemOwned(whichItem)) then
		return false
	end
	
	return RectContainsCoords(r, GetItemX(whichItem), GetItemY(whichItem))
end
-- ***************************************************************************
-- 
-- *  Utility Constructs
-- 
-- ***************************************************************************
-- ===========================================================================
--  Runs the trigger's actions if the trigger's conditions evaluate to true.
-- 

---@param trig trigger
---@return nil
function ConditionalTriggerExecute(trig)
	if TriggerEvaluate(trig) then
		TriggerExecute(trig)
	end
end
-- ===========================================================================
--  Runs the trigger's actions if the trigger's conditions evaluate to true.
-- 

---@param trig trigger
---@param checkConditions boolean
---@return boolean
function TriggerExecuteBJ(trig, checkConditions)
	if checkConditions then
		if not (TriggerEvaluate(trig)) then
			return false
		end
	end
	TriggerExecute(trig)
	return true
end
-- ===========================================================================
--  Arranges for a trigger to fire almost immediately, except that the calling
--  trigger is not interrupted as is the case with a TriggerExecute call.
--  Since the trigger executes normally, its conditions are still evaluated.
-- 

---@param trig trigger
---@param checkConditions boolean
---@return boolean
function PostTriggerExecuteBJ(trig, checkConditions)
	if checkConditions then
		if not (TriggerEvaluate(trig)) then
			return false
		end
	end
	TriggerRegisterTimerEvent(trig, 0, false)
	return true
end
-- ===========================================================================
--  Debug - Display the contents of the trigger queue (as either null or "x"
--  for each entry).
---@return nil
function QueuedTriggerCheck()
	local s = "TrigQueue Check "
	local i
	
	i       = 0
	while true do
		if i >= bj_queuedExecTotal then break end
		s = s .. "q[" .. I2S(i) .. "]="
		if (bj_queuedExecTriggers[i] == nil) then
			s = s .. "null "
		else
			s = s .. "x "
		end
		i = i + 1
	end
	s = s .. "(" .. I2S(bj_queuedExecTotal) .. " total)"
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 600, s)
end
-- ===========================================================================
--  Searches the queue for a given trigger, returning the index of the
--  trigger within the queue if it is found, or -1 if it is not found.
-- 

---@param trig trigger
---@return integer
function QueuedTriggerGetIndex(trig)
	--  Determine which, if any, of the queued triggers is being removed.
	local index = 0
	while true do
		if index >= bj_queuedExecTotal then break end
		if (bj_queuedExecTriggers[index] == trig) then
			return index
		end
		index = index + 1
	end
	return -1
end
-- ===========================================================================
--  Removes a trigger from the trigger queue, shifting other triggers down
--  to fill the unused space.  If the currently running trigger is removed
--  in this manner, this function does NOT attempt to run the next trigger.
-- 

---@param trigIndex integer
---@return boolean
function QueuedTriggerRemoveByIndex(trigIndex)
	local index
	
	--  If the to-be-removed index is out of range, fail.
	if (trigIndex >= bj_queuedExecTotal) then
		return false
	end
	
	--  Shift all queue entries down to fill in the gap.
	bj_queuedExecTotal = bj_queuedExecTotal - 1
	index              = trigIndex
	while true do
		if index >= bj_queuedExecTotal then break end
		bj_queuedExecTriggers[index] = bj_queuedExecTriggers[index + 1]
		bj_queuedExecUseConds[index] = bj_queuedExecUseConds[index + 1]
		index                        = index + 1
	end
	return true
end
-- ===========================================================================
--  Attempt to execute the first trigger in the queue.  If it fails, remove
--  it and execute the next one.  Continue this cycle until a trigger runs,
--  or until the queue is empty.
-- 
---@return boolean
function QueuedTriggerAttemptExec()
	while true do
		if bj_queuedExecTotal == 0 then break end
		
		if TriggerExecuteBJ(bj_queuedExecTriggers[0], bj_queuedExecUseConds[0]) then
			--  Timeout the queue if it sits at the front of the queue for too long.
			TimerStart(bj_queuedExecTimeoutTimer, bj_QUEUED_TRIGGER_TIMEOUT, false, nil)
			return true
		end
		
		QueuedTriggerRemoveByIndex(0)
	end
	return false
end
-- ===========================================================================
--  Queues a trigger to be executed, assuring that such triggers are not
--  executed at the same time.
-- 

---@param trig trigger
---@param checkConditions boolean
---@return boolean
function QueuedTriggerAddBJ(trig, checkConditions)
	--  Make sure our queue isn't full.  If it is, return failure.
	if (bj_queuedExecTotal >= bj_MAX_QUEUED_TRIGGERS) then
		return false
	end
	
	--  Add the trigger to an array of to-be-executed triggers.
	bj_queuedExecTriggers[bj_queuedExecTotal] = trig
	bj_queuedExecUseConds[bj_queuedExecTotal] = checkConditions
	bj_queuedExecTotal                        = bj_queuedExecTotal + 1
	
	--  If this is the only trigger in the queue, run it.
	if (bj_queuedExecTotal == 1) then
		QueuedTriggerAttemptExec()
	end
	return true
end
-- ===========================================================================
--  Denotes the end of a queued trigger. Be sure to call this only once per
--  queued trigger, or risk stepping on the toes of other queued triggers.
-- 

---@param trig trigger
---@return nil
function QueuedTriggerRemoveBJ(trig)
	local index
	local trigIndex
	local trigExecuted
	
	--  Find the trigger's index.
	trigIndex = QueuedTriggerGetIndex(trig)
	if (trigIndex == -1) then
		return
	end
	
	--  Shuffle the other trigger entries down to fill in the gap.
	QueuedTriggerRemoveByIndex(trigIndex)
	
	--  If we just axed the currently running trigger, run the next one.
	if (trigIndex == 0) then
		PauseTimer(bj_queuedExecTimeoutTimer)
		QueuedTriggerAttemptExec()
	end
end
-- ===========================================================================
--  Denotes the end of a queued trigger. Be sure to call this only once per
--  queued trigger, lest you step on the toes of other queued triggers.
-- 
---@return nil
function QueuedTriggerDoneBJ()
	local index
	
	--  Make sure there's something on the queue to remove.
	if (bj_queuedExecTotal <= 0) then
		return
	end
	
	--  Remove the currently running trigger from the array.
	QueuedTriggerRemoveByIndex(0)
	
	--  If other triggers are waiting to run, run one of them.
	PauseTimer(bj_queuedExecTimeoutTimer)
	QueuedTriggerAttemptExec()
end
-- ===========================================================================
--  Empty the trigger queue.
-- 
---@return nil
function QueuedTriggerClearBJ()
	PauseTimer(bj_queuedExecTimeoutTimer)
	bj_queuedExecTotal = 0
end
-- ===========================================================================
--  Remove all but the currently executing trigger from the trigger queue.
-- 
---@return nil
function QueuedTriggerClearInactiveBJ()
	bj_queuedExecTotal = IMinBJ(bj_queuedExecTotal, 1)
end
-- ===========================================================================
---@return integer
function QueuedTriggerCountBJ()
	return bj_queuedExecTotal
end
-- ===========================================================================
---@return boolean
function IsTriggerQueueEmptyBJ()
	return bj_queuedExecTotal <= 0
end
-- ===========================================================================

---@param trig trigger
---@return boolean
function IsTriggerQueuedBJ(trig)
	return QueuedTriggerGetIndex(trig) ~= -1
end
-- ===========================================================================
---@return integer
function GetForLoopIndexA()
	return bj_forLoopAIndex
end
-- ===========================================================================

---@param newIndex integer
---@return nil
function SetForLoopIndexA(newIndex)
	bj_forLoopAIndex = newIndex
end
-- ===========================================================================
---@return integer
function GetForLoopIndexB()
	return bj_forLoopBIndex
end
-- ===========================================================================

---@param newIndex integer
---@return nil
function SetForLoopIndexB(newIndex)
	bj_forLoopBIndex = newIndex
end
-- ===========================================================================
--  We can't do game-time waits, so this simulates one by starting a timer
--  and polling until the timer expires.

---@param duration real
---@return nil
function PolledWait(duration)
	local t
	local timeRemaining
	
	if (duration > 0) then
		t = CreateTimer()
		TimerStart(t, duration, false, nil)
		while true do
			timeRemaining = TimerGetRemaining(t)
			if timeRemaining <= 0 then break end
			
			--  If we have a bit of time left, skip past 10% of the remaining
			--  duration instead of checking every interval, to minimize the
			--  polling on long waits.
			if (timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD) then
				TriggerSleepAction(0.1 * timeRemaining)
			else
				TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
			end
		end
		DestroyTimer(t)
	end
end
-- ===========================================================================

---@param flag boolean
---@param valueA integer
---@param valueB integer
---@return integer
function IntegerTertiaryOp(flag, valueA, valueB)
	if flag then
		return valueA
	else
		return valueB
	end
end
-- ***************************************************************************
-- 
-- *  General Utility Functions
-- *  These functions exist purely to make the trigger dialogs cleaner and
-- *  more comprehensible.
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function DoNothing()
end
-- ===========================================================================
--  This function does nothing.  WorldEdit should should eventually ignore
--  CommentString triggers during script generation, but until such a time,
--  this function will serve as a stub.
-- 

---@param commentString string
---@return nil
function CommentString(commentString)
end
-- ===========================================================================
--  This function returns the input string, converting it from the localized text, if necessary
-- 

---@param theString string
---@return string
function StringIdentity(theString)
	return GetLocalizedString(theString)
end
-- ===========================================================================

---@param valueA boolean
---@param valueB boolean
---@return boolean
function GetBooleanAnd(valueA, valueB)
	return valueA and valueB
end
-- ===========================================================================

---@param valueA boolean
---@param valueB boolean
---@return boolean
function GetBooleanOr(valueA, valueB)
	return valueA or valueB
end
-- ===========================================================================
--  Converts a percentage (real, 0..100) into a scaled integer (0..max),
--  clipping the result to 0..max in case the input is invalid.
-- 

---@param percentage real
---@param max integer
---@return integer
function PercentToInt(percentage, max)
	local realpercent = percentage * I2R(max) * 0.01
	local result      = MathRound(realpercent)
	
	if (result < 0) then
		result = 0
	elseif (result > max) then
		result = max
	end
	
	return result
end
-- ===========================================================================

---@param percentage real
---@return integer
function PercentTo255(percentage)
	return PercentToInt(percentage, 255)
end
-- ===========================================================================
---@return real
function GetTimeOfDay()
	return GetFloatGameState(GAME_STATE_TIME_OF_DAY)
end
-- ===========================================================================

---@param whatTime real
---@return nil
function SetTimeOfDay(whatTime)
	SetFloatGameState(GAME_STATE_TIME_OF_DAY, whatTime)
end
-- ===========================================================================

---@param scalePercent real
---@return nil
function SetTimeOfDayScalePercentBJ(scalePercent)
	SetTimeOfDayScale(scalePercent * 0.01)
end
-- ===========================================================================
---@return real
function GetTimeOfDayScalePercentBJ()
	return GetTimeOfDayScale() * 100
end
-- ===========================================================================

---@param soundName string
---@return nil
function PlaySound(soundName)
	local soundHandle = CreateSound(soundName, false, false, true, 12700, 12700, "")
	StartSound(soundHandle)
	KillSoundWhenDone(soundHandle)
end
-- ===========================================================================

---@param A location
---@param B location
---@return boolean
function CompareLocationsBJ(A, B)
	return GetLocationX(A) == GetLocationX(B) and GetLocationY(A) == GetLocationY(B)
end
-- ===========================================================================

---@param A rect
---@param B rect
---@return boolean
function CompareRectsBJ(A, B)
	return GetRectMinX(A) == GetRectMinX(B) and GetRectMinY(A) == GetRectMinY(B) and GetRectMaxX(A) == GetRectMaxX(B) and GetRectMaxY(A) == GetRectMaxY(B)
end
-- ===========================================================================
--  Returns a square rect that exactly encompasses the specified circle.
-- 

---@param center location
---@param radius real
---@return rect
function GetRectFromCircleBJ(center, radius)
	local centerX = GetLocationX(center)
	local centerY = GetLocationY(center)
	return Rect(centerX - radius, centerY - radius, centerX + radius, centerY + radius)
end
-- ***************************************************************************
-- 
-- *  Camera Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================
---@return camerasetup
function GetCurrentCameraSetup()
	local theCam   = CreateCameraSetup()
	local duration = 0
	CameraSetupSetField(theCam, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_FARZ, GetCameraField(CAMERA_FIELD_FARZ), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_ZOFFSET, GetCameraField(CAMERA_FIELD_ZOFFSET), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_ANGLE_OF_ATTACK, bj_RADTODEG * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_FIELD_OF_VIEW, bj_RADTODEG * GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_ROLL, bj_RADTODEG * GetCameraField(CAMERA_FIELD_ROLL), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_ROTATION, bj_RADTODEG * GetCameraField(CAMERA_FIELD_ROTATION), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_LOCAL_PITCH, bj_RADTODEG * GetCameraField(CAMERA_FIELD_LOCAL_PITCH), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_LOCAL_YAW, bj_RADTODEG * GetCameraField(CAMERA_FIELD_LOCAL_YAW), duration)
	CameraSetupSetField(theCam, CAMERA_FIELD_LOCAL_ROLL, bj_RADTODEG * GetCameraField(CAMERA_FIELD_LOCAL_ROLL), duration)
	CameraSetupSetDestPosition(theCam, GetCameraTargetPositionX(), GetCameraTargetPositionY(), duration)
	return theCam
end
-- ===========================================================================

---@param doPan boolean
---@param whichSetup camerasetup
---@param whichPlayer player
---@param duration real
---@return nil
function CameraSetupApplyForPlayer(doPan, whichSetup, whichPlayer, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		CameraSetupApplyForceDuration(whichSetup, doPan, duration)
	end
end
-- ===========================================================================

---@param doPan boolean
---@param whichSetup camerasetup
---@param whichPlayer player
---@param forcedDuration real
---@param easeInDuration real
---@param easeOutDuration real
---@param smoothFactor real
---@return nil
function CameraSetupApplyForPlayerSmooth(doPan, whichSetup, whichPlayer, forcedDuration, easeInDuration, easeOutDuration, smoothFactor)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		BlzCameraSetupApplyForceDurationSmooth(whichSetup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor)
	end
end
-- ===========================================================================

---@param whichField camerafield
---@param whichSetup camerasetup
---@return real
function CameraSetupGetFieldSwap(whichField, whichSetup)
	return CameraSetupGetField(whichSetup, whichField)
end
-- ===========================================================================

---@param whichPlayer player
---@param whichField camerafield
---@param value real
---@param duration real
---@return nil
function SetCameraFieldForPlayer(whichPlayer, whichField, value, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraField(whichField, value, duration)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param whichUnit unit
---@param xoffset real
---@param yoffset real
---@param inheritOrientation boolean
---@return nil
function SetCameraTargetControllerNoZForPlayer(whichPlayer, whichUnit, xoffset, yoffset, inheritOrientation)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraTargetController(whichUnit, xoffset, yoffset, inheritOrientation)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param x real
---@param y real
---@return nil
function SetCameraPositionForPlayer(whichPlayer, x, y)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraPosition(x, y)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param loc location
---@return nil
function SetCameraPositionLocForPlayer(whichPlayer, loc)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraPosition(GetLocationX(loc), GetLocationY(loc))
	end
end
-- ===========================================================================

---@param degrees real
---@param loc location
---@param whichPlayer player
---@param duration real
---@return nil
function RotateCameraAroundLocBJ(degrees, loc, whichPlayer, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraRotateMode(GetLocationX(loc), GetLocationY(loc), bj_DEGTORAD * degrees, duration)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param x real
---@param y real
---@return nil
function PanCameraToForPlayer(whichPlayer, x, y)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		PanCameraTo(x, y)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param loc location
---@return nil
function PanCameraToLocForPlayer(whichPlayer, loc)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		PanCameraTo(GetLocationX(loc), GetLocationY(loc))
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param x real
---@param y real
---@param duration real
---@return nil
function PanCameraToTimedForPlayer(whichPlayer, x, y, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		PanCameraToTimed(x, y, duration)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param loc location
---@param duration real
---@return nil
function PanCameraToTimedLocForPlayer(whichPlayer, loc, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		PanCameraToTimed(GetLocationX(loc), GetLocationY(loc), duration)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param loc location
---@param zOffset real
---@param duration real
---@return nil
function PanCameraToTimedLocWithZForPlayer(whichPlayer, loc, zOffset, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		PanCameraToTimedWithZ(GetLocationX(loc), GetLocationY(loc), zOffset, duration)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param loc location
---@param duration real
---@return nil
function SmartCameraPanBJ(whichPlayer, loc, duration)
	local dist
	local cameraLoc = GetCameraTargetPositionLoc()
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		
		dist = DistanceBetweenPoints(loc, cameraLoc)
		if (dist >= bj_SMARTPAN_TRESHOLD_SNAP) then
			--  If the user is too far away, snap the camera.
			PanCameraToTimed(GetLocationX(loc), GetLocationY(loc), 0)
		elseif (dist >= bj_SMARTPAN_TRESHOLD_PAN) then
			--  If the user is moderately close, pan the camera.
			PanCameraToTimed(GetLocationX(loc), GetLocationY(loc), duration)
		else
			--  User is close enough, so don't touch the camera.
		end
	end
	RemoveLocation(cameraLoc)
end
-- ===========================================================================

---@param whichPlayer player
---@param cameraModelFile string
---@return nil
function SetCinematicCameraForPlayer(whichPlayer, cameraModelFile)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCinematicCamera(cameraModelFile)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param duration real
---@return nil
function ResetToGameCameraForPlayer(whichPlayer, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ResetToGameCamera(duration)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param magnitude real
---@param velocity real
---@return nil
function CameraSetSourceNoiseForPlayer(whichPlayer, magnitude, velocity)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		CameraSetSourceNoise(magnitude, velocity)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param magnitude real
---@param velocity real
---@return nil
function CameraSetTargetNoiseForPlayer(whichPlayer, magnitude, velocity)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		CameraSetTargetNoise(magnitude, velocity)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param magnitude real
---@return nil
function CameraSetEQNoiseForPlayer(whichPlayer, magnitude)
	local richter = magnitude
	if (richter > 5.0) then
		richter = 5.0
	end
	if (richter < 2.0) then
		richter = 2.0
	end
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		CameraSetTargetNoiseEx(magnitude * 2.0, magnitude * Pow(10, richter), true)
		CameraSetSourceNoiseEx(magnitude * 2.0, magnitude * Pow(10, richter), true)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@return nil
function CameraClearNoiseForPlayer(whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		CameraSetSourceNoise(0, 0)
		CameraSetTargetNoise(0, 0)
	end
end
-- ===========================================================================
--  Query the current camera bounds.
-- 
---@return rect
function GetCurrentCameraBoundsMapRectBJ()
	return Rect(GetCameraBoundMinX(), GetCameraBoundMinY(), GetCameraBoundMaxX(), GetCameraBoundMaxY())
end
-- ===========================================================================
--  Query the initial camera bounds, as defined at map init.
-- 
---@return rect
function GetCameraBoundsMapRect()
	return bj_mapInitialCameraBounds
end
-- ===========================================================================
--  Query the playable map area, as defined at map init.
-- 
---@return rect
function GetPlayableMapRect()
	return bj_mapInitialPlayableArea
end
-- ===========================================================================
--  Query the entire map area, as defined at map init.
-- 
---@return rect
function GetEntireMapRect()
	return GetWorldBounds()
end
-- ===========================================================================

---@param r rect
---@return nil
function SetCameraBoundsToRect(r)
	local minX = GetRectMinX(r)
	local minY = GetRectMinY(r)
	local maxX = GetRectMaxX(r)
	local maxY = GetRectMaxY(r)
	SetCameraBounds(minX, minY, minX, maxY, maxX, maxY, maxX, minY)
end
-- ===========================================================================

---@param whichPlayer player
---@param r rect
---@return nil
function SetCameraBoundsToRectForPlayerBJ(whichPlayer, r)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraBoundsToRect(r)
	end
end
-- ===========================================================================

---@param adjustMethod integer
---@param dxWest real
---@param dxEast real
---@param dyNorth real
---@param dySouth real
---@return nil
function AdjustCameraBoundsBJ(adjustMethod, dxWest, dxEast, dyNorth, dySouth)
	local minX  = 0
	local minY  = 0
	local maxX  = 0
	local maxY  = 0
	local scale = 0
	
	if (adjustMethod == bj_CAMERABOUNDS_ADJUST_ADD) then
		scale = 1
	elseif (adjustMethod == bj_CAMERABOUNDS_ADJUST_SUB) then
		scale = -1
	else
		--  Unrecognized adjustment method - ignore the request.
		return
	end
	
	--  Adjust the actual camera values
	minX = GetCameraBoundMinX() - scale * dxWest
	maxX = GetCameraBoundMaxX() + scale * dxEast
	minY = GetCameraBoundMinY() - scale * dySouth
	maxY = GetCameraBoundMaxY() + scale * dyNorth
	
	--  Make sure the camera bounds are still valid.
	if (maxX < minX) then
		minX = (minX + maxX) * 0.5
		maxX = minX
	end
	if (maxY < minY) then
		minY = (minY + maxY) * 0.5
		maxY = minY
	end
	
	--  Apply the new camera values.
	SetCameraBounds(minX, minY, minX, maxY, maxX, maxY, maxX, minY)
end
-- ===========================================================================

---@param adjustMethod integer
---@param whichPlayer player
---@param dxWest real
---@param dxEast real
---@param dyNorth real
---@param dySouth real
---@return nil
function AdjustCameraBoundsForPlayerBJ(adjustMethod, whichPlayer, dxWest, dxEast, dyNorth, dySouth)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		AdjustCameraBoundsBJ(adjustMethod, dxWest, dxEast, dyNorth, dySouth)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param x real
---@param y real
---@return nil
function SetCameraQuickPositionForPlayer(whichPlayer, x, y)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraQuickPosition(x, y)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param loc location
---@return nil
function SetCameraQuickPositionLocForPlayer(whichPlayer, loc)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraQuickPosition(GetLocationX(loc), GetLocationY(loc))
	end
end
-- ===========================================================================

---@param loc location
---@return nil
function SetCameraQuickPositionLoc(loc)
	SetCameraQuickPosition(GetLocationX(loc), GetLocationY(loc))
end
-- ===========================================================================

---@param whichPlayer player
---@return nil
function StopCameraForPlayerBJ(whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		StopCamera()
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param whichUnit unit
---@param xoffset real
---@param yoffset real
---@return nil
function SetCameraOrientControllerForPlayerBJ(whichPlayer, whichUnit, xoffset, yoffset)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetCameraOrientController(whichUnit, xoffset, yoffset)
	end
end
-- ===========================================================================

---@param factor real
---@return nil
function CameraSetSmoothingFactorBJ(factor)
	CameraSetSmoothingFactor(factor)
end
-- ===========================================================================
---@return nil
function CameraResetSmoothingFactorBJ()
	CameraSetSmoothingFactor(0)
end
-- ***************************************************************************
-- 
-- *  Text Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param toForce force
---@param message string
---@return nil
function DisplayTextToForce(toForce, message)
	if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		DisplayTextToPlayer(GetLocalPlayer(), 0, 0, message)
	end
end
-- ===========================================================================

---@param toForce force
---@param duration real
---@param message string
---@return nil
function DisplayTimedTextToForce(toForce, duration, message)
	if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, duration, message)
	end
end
-- ===========================================================================

---@param toForce force
---@return nil
function ClearTextMessagesBJ(toForce)
	if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ClearTextMessages()
	end
end
-- ===========================================================================
--  The parameters for the API Substring function are unintuitive, so this
--  merely performs a translation for the starting index.
-- 

---@param source string
---@param start integer
---@param end_ integer
---@return string
function SubStringBJ(source, start, end_)
	return SubString(source, start - 1, end_)
end

---@param h handle
---@return integer
function GetHandleIdBJ(h)
	return GetHandleId(h)
end

---@param s string
---@return integer
function StringHashBJ(s)
	return StringHash(s)
end
-- ***************************************************************************
-- 
-- *  Event Registration Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param trig trigger
---@param timeout real
---@return event
function TriggerRegisterTimerEventPeriodic(trig, timeout)
	return TriggerRegisterTimerEvent(trig, timeout, true)
end
-- ===========================================================================

---@param trig trigger
---@param timeout real
---@return event
function TriggerRegisterTimerEventSingle(trig, timeout)
	return TriggerRegisterTimerEvent(trig, timeout, false)
end
-- ===========================================================================

---@param trig trigger
---@param t timer
---@return event
function TriggerRegisterTimerExpireEventBJ(trig, t)
	return TriggerRegisterTimerExpireEvent(trig, t)
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@param whichEvent playerunitevent
---@return event
function TriggerRegisterPlayerUnitEventSimple(trig, whichPlayer, whichEvent)
	return TriggerRegisterPlayerUnitEvent(trig, whichPlayer, whichEvent, nil)
end
-- ===========================================================================

---@param trig trigger
---@param whichEvent playerunitevent
---@return nil
function TriggerRegisterAnyUnitEventBJ(trig, whichEvent)
	local index
	
	index = 0
	while true do
		TriggerRegisterPlayerUnitEvent(trig, Player(index), whichEvent, nil)
		
		index = index + 1
		if index == bj_MAX_PLAYER_SLOTS then break end
	end
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@param selected boolean
---@return event
function TriggerRegisterPlayerSelectionEventBJ(trig, whichPlayer, selected)
	if selected then
		return TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_SELECTED, nil)
	else
		return TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_DESELECTED, nil)
	end
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@param keType integer
---@param keKey integer
---@return event
function TriggerRegisterPlayerKeyEventBJ(trig, whichPlayer, keType, keKey)
	if (keType == bj_KEYEVENTTYPE_DEPRESS) then
		--  Depress event - find out what key
		if (keKey == bj_KEYEVENTKEY_LEFT) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_DOWN)
		elseif (keKey == bj_KEYEVENTKEY_RIGHT) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_DOWN)
		elseif (keKey == bj_KEYEVENTKEY_DOWN) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_DOWN)
		elseif (keKey == bj_KEYEVENTKEY_UP) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_DOWN)
		else
			--  Unrecognized key - ignore the request and return failure.
			return nil
		end
	elseif (keType == bj_KEYEVENTTYPE_RELEASE) then
		--  Release event - find out what key
		if (keKey == bj_KEYEVENTKEY_LEFT) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_UP)
		elseif (keKey == bj_KEYEVENTKEY_RIGHT) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_UP)
		elseif (keKey == bj_KEYEVENTKEY_DOWN) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_UP)
		elseif (keKey == bj_KEYEVENTKEY_UP) then
			return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_UP)
		else
			--  Unrecognized key - ignore the request and return failure.
			return nil
		end
	else
		--  Unrecognized type - ignore the request and return failure.
		return nil
	end
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@param meType integer
---@return event
function TriggerRegisterPlayerMouseEventBJ(trig, whichPlayer, meType)
	if (meType == bj_MOUSEEVENTTYPE_DOWN) then
		--  Mouse down event
		return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_MOUSE_DOWN)
	elseif (meType == bj_MOUSEEVENTTYPE_UP) then
		--  Mouse up event
		return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_MOUSE_UP)
	elseif (meType == bj_MOUSEEVENTTYPE_MOVE) then
		--  Mouse move event
		return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_MOUSE_MOVE)
	else
		--  Unrecognized type - ignore the request and return failure.
		return nil
	end
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventVictory(trig, whichPlayer)
	return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_VICTORY)
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventDefeat(trig, whichPlayer)
	return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_DEFEAT)
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventLeave(trig, whichPlayer)
	return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_LEAVE)
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventAllianceChanged(trig, whichPlayer)
	return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ALLIANCE_CHANGED)
end
-- ===========================================================================

---@param trig trigger
---@param whichPlayer player
---@return event
function TriggerRegisterPlayerEventEndCinematic(trig, whichPlayer)
	return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_END_CINEMATIC)
end
-- ===========================================================================

---@param trig trigger
---@param opcode limitop
---@param limitval real
---@return event
function TriggerRegisterGameStateEventTimeOfDay(trig, opcode, limitval)
	return TriggerRegisterGameStateEvent(trig, GAME_STATE_TIME_OF_DAY, opcode, limitval)
end
-- ===========================================================================

---@param trig trigger
---@param whichRegion region
---@return event
function TriggerRegisterEnterRegionSimple(trig, whichRegion)
	return TriggerRegisterEnterRegion(trig, whichRegion, nil)
end
-- ===========================================================================

---@param trig trigger
---@param whichRegion region
---@return event
function TriggerRegisterLeaveRegionSimple(trig, whichRegion)
	return TriggerRegisterLeaveRegion(trig, whichRegion, nil)
end
-- ===========================================================================

---@param trig trigger
---@param r rect
---@return event
function TriggerRegisterEnterRectSimple(trig, r)
	local rectRegion = CreateRegion()
	RegionAddRect(rectRegion, r)
	return TriggerRegisterEnterRegion(trig, rectRegion, nil)
end
-- ===========================================================================

---@param trig trigger
---@param r rect
---@return event
function TriggerRegisterLeaveRectSimple(trig, r)
	local rectRegion = CreateRegion()
	RegionAddRect(rectRegion, r)
	return TriggerRegisterLeaveRegion(trig, rectRegion, nil)
end
-- ===========================================================================

---@param trig trigger
---@param whichUnit unit
---@param condition boolexpr
---@param range real
---@return event
function TriggerRegisterDistanceBetweenUnits(trig, whichUnit, condition, range)
	return TriggerRegisterUnitInRange(trig, whichUnit, range, condition)
end
-- ===========================================================================

---@param trig trigger
---@param range real
---@param whichUnit unit
---@return event
function TriggerRegisterUnitInRangeSimple(trig, range, whichUnit)
	return TriggerRegisterUnitInRange(trig, whichUnit, range, nil)
end
-- ===========================================================================

---@param trig trigger
---@param whichUnit unit
---@param opcode limitop
---@param limitval real
---@return event
function TriggerRegisterUnitLifeEvent(trig, whichUnit, opcode, limitval)
	return TriggerRegisterUnitStateEvent(trig, whichUnit, UNIT_STATE_LIFE, opcode, limitval)
end
-- ===========================================================================

---@param trig trigger
---@param whichUnit unit
---@param opcode limitop
---@param limitval real
---@return event
function TriggerRegisterUnitManaEvent(trig, whichUnit, opcode, limitval)
	return TriggerRegisterUnitStateEvent(trig, whichUnit, UNIT_STATE_MANA, opcode, limitval)
end
-- ===========================================================================

---@param trig trigger
---@param whichDialog dialog
---@return event
function TriggerRegisterDialogEventBJ(trig, whichDialog)
	return TriggerRegisterDialogEvent(trig, whichDialog)
end
-- ===========================================================================

---@param trig trigger
---@return event
function TriggerRegisterShowSkillEventBJ(trig)
	return TriggerRegisterGameEvent(trig, EVENT_GAME_SHOW_SKILL)
end
-- ===========================================================================

---@param trig trigger
---@return event
function TriggerRegisterBuildSubmenuEventBJ(trig)
	return TriggerRegisterGameEvent(trig, EVENT_GAME_BUILD_SUBMENU)
end
-- ===========================================================================

---@param trig trigger
---@param unitId integer
---@return event
function TriggerRegisterBuildCommandEventBJ(trig, unitId)
	TriggerRegisterCommandEvent(trig, FourCC('ANbu'), UnitId2String(unitId))
	TriggerRegisterCommandEvent(trig, FourCC('AHbu'), UnitId2String(unitId))
	TriggerRegisterCommandEvent(trig, FourCC('AEbu'), UnitId2String(unitId))
	TriggerRegisterCommandEvent(trig, FourCC('AObu'), UnitId2String(unitId))
	TriggerRegisterCommandEvent(trig, FourCC('AUbu'), UnitId2String(unitId))
	return TriggerRegisterCommandEvent(trig, FourCC('AGbu'), UnitId2String(unitId))
end
-- ===========================================================================

---@param trig trigger
---@param unitId integer
---@return event
function TriggerRegisterTrainCommandEventBJ(trig, unitId)
	return TriggerRegisterCommandEvent(trig, FourCC('Aque'), UnitId2String(unitId))
end
-- ===========================================================================

---@param trig trigger
---@param techId integer
---@return event
function TriggerRegisterUpgradeCommandEventBJ(trig, techId)
	return TriggerRegisterUpgradeCommandEvent(trig, techId)
end
-- ===========================================================================

---@param trig trigger
---@param order string
---@return event
function TriggerRegisterCommonCommandEventBJ(trig, order)
	return TriggerRegisterCommandEvent(trig, 0, order)
end
-- ===========================================================================

---@param trig trigger
---@return event
function TriggerRegisterGameLoadedEventBJ(trig)
	return TriggerRegisterGameEvent(trig, EVENT_GAME_LOADED)
end
-- ===========================================================================

---@param trig trigger
---@return event
function TriggerRegisterGameSavedEventBJ(trig)
	return TriggerRegisterGameEvent(trig, EVENT_GAME_SAVE)
end
-- ===========================================================================
---@return nil
function RegisterDestDeathInRegionEnum()
	bj_destInRegionDiesCount = bj_destInRegionDiesCount + 1
	if (bj_destInRegionDiesCount <= bj_MAX_DEST_IN_REGION_EVENTS) then
		TriggerRegisterDeathEvent(bj_destInRegionDiesTrig, GetEnumDestructable())
	end
end
-- ===========================================================================

---@param trig trigger
---@param r rect
---@return nil
function TriggerRegisterDestDeathInRegionEvent(trig, r)
	bj_destInRegionDiesTrig  = trig
	bj_destInRegionDiesCount = 0
	EnumDestructablesInRect(r, nil, RegisterDestDeathInRegionEnum)
end
-- ***************************************************************************
-- 
-- *  Environment Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param where rect
---@param effectID integer
---@return weathereffect
function AddWeatherEffectSaveLast(where, effectID)
	bj_lastCreatedWeatherEffect = AddWeatherEffect(where, effectID)
	return bj_lastCreatedWeatherEffect
end
-- ===========================================================================
---@return weathereffect
function GetLastCreatedWeatherEffect()
	return bj_lastCreatedWeatherEffect
end
-- ===========================================================================

---@param whichWeatherEffect weathereffect
---@return nil
function RemoveWeatherEffectBJ(whichWeatherEffect)
	RemoveWeatherEffect(whichWeatherEffect)
end
-- ===========================================================================

---@param duration real
---@param permanent boolean
---@param where location
---@param radius real
---@param depth real
---@return terraindeformation
function TerrainDeformationCraterBJ(duration, permanent, where, radius, depth)
	bj_lastCreatedTerrainDeformation = TerrainDeformCrater(GetLocationX(where), GetLocationY(where), radius, depth, R2I(duration * 1000), permanent)
	return bj_lastCreatedTerrainDeformation
end
-- ===========================================================================

---@param duration real
---@param limitNeg boolean
---@param where location
---@param startRadius real
---@param endRadius real
---@param depth real
---@param wavePeriod real
---@param waveWidth real
---@return terraindeformation
function TerrainDeformationRippleBJ(duration, limitNeg, where, startRadius, endRadius, depth, wavePeriod, waveWidth)
	local spaceWave
	local timeWave
	local radiusRatio
	
	if (endRadius <= 0 or waveWidth <= 0 or wavePeriod <= 0) then
		return nil
	end
	
	timeWave                         = 2.0 * duration / wavePeriod
	spaceWave                        = 2.0 * endRadius / waveWidth
	radiusRatio                      = startRadius / endRadius
	
	bj_lastCreatedTerrainDeformation = TerrainDeformRipple(GetLocationX(where), GetLocationY(where), endRadius, depth, R2I(duration * 1000), 1, spaceWave, timeWave, radiusRatio, limitNeg)
	return bj_lastCreatedTerrainDeformation
end
-- ===========================================================================

---@param duration real
---@param source location
---@param target location
---@param radius real
---@param depth real
---@param trailDelay real
---@return terraindeformation
function TerrainDeformationWaveBJ(duration, source, target, radius, depth, trailDelay)
	local distance
	local dirX
	local dirY
	local speed
	
	distance = DistanceBetweenPoints(source, target)
	if (distance == 0 or duration <= 0) then
		return nil
	end
	
	dirX                             = (GetLocationX(target) - GetLocationX(source)) / distance
	dirY                             = (GetLocationY(target) - GetLocationY(source)) / distance
	speed                            = distance / duration
	
	bj_lastCreatedTerrainDeformation = TerrainDeformWave(GetLocationX(source), GetLocationY(source), dirX, dirY, distance, speed, radius, depth, R2I(trailDelay * 1000), 1)
	return bj_lastCreatedTerrainDeformation
end
-- ===========================================================================

---@param duration real
---@param where location
---@param radius real
---@param minDelta real
---@param maxDelta real
---@param updateInterval real
---@return terraindeformation
function TerrainDeformationRandomBJ(duration, where, radius, minDelta, maxDelta, updateInterval)
	bj_lastCreatedTerrainDeformation = TerrainDeformRandom(GetLocationX(where), GetLocationY(where), radius, minDelta, maxDelta, R2I(duration * 1000), R2I(updateInterval * 1000))
	return bj_lastCreatedTerrainDeformation
end
-- ===========================================================================

---@param deformation terraindeformation
---@param duration real
---@return nil
function TerrainDeformationStopBJ(deformation, duration)
	TerrainDeformStop(deformation, R2I(duration * 1000))
end
-- ===========================================================================
---@return terraindeformation
function GetLastCreatedTerrainDeformation()
	return bj_lastCreatedTerrainDeformation
end
-- ===========================================================================

---@param codeName string
---@param where1 location
---@param where2 location
---@return lightning
function AddLightningLoc(codeName, where1, where2)
	bj_lastCreatedLightning = AddLightningEx(codeName, true, GetLocationX(where1), GetLocationY(where1), GetLocationZ(where1), GetLocationX(where2), GetLocationY(where2), GetLocationZ(where2))
	return bj_lastCreatedLightning
end
-- ===========================================================================

---@param whichBolt lightning
---@return boolean
function DestroyLightningBJ(whichBolt)
	return DestroyLightning(whichBolt)
end
-- ===========================================================================

---@param whichBolt lightning
---@param where1 location
---@param where2 location
---@return boolean
function MoveLightningLoc(whichBolt, where1, where2)
	return MoveLightningEx(whichBolt, true, GetLocationX(where1), GetLocationY(where1), GetLocationZ(where1), GetLocationX(where2), GetLocationY(where2), GetLocationZ(where2))
end
-- ===========================================================================

---@param whichBolt lightning
---@return real
function GetLightningColorABJ(whichBolt)
	return GetLightningColorA(whichBolt)
end
-- ===========================================================================

---@param whichBolt lightning
---@return real
function GetLightningColorRBJ(whichBolt)
	return GetLightningColorR(whichBolt)
end
-- ===========================================================================

---@param whichBolt lightning
---@return real
function GetLightningColorGBJ(whichBolt)
	return GetLightningColorG(whichBolt)
end
-- ===========================================================================

---@param whichBolt lightning
---@return real
function GetLightningColorBBJ(whichBolt)
	return GetLightningColorB(whichBolt)
end
-- ===========================================================================

---@param whichBolt lightning
---@param r real
---@param g real
---@param b real
---@param a real
---@return boolean
function SetLightningColorBJ(whichBolt, r, g, b, a)
	return SetLightningColor(whichBolt, r, g, b, a)
end
-- ===========================================================================
---@return lightning
function GetLastCreatedLightningBJ()
	return bj_lastCreatedLightning
end
-- ===========================================================================

---@param abilcode integer
---@param t effecttype
---@param index integer
---@return string
function GetAbilityEffectBJ(abilcode, t, index)
	return GetAbilityEffectById(abilcode, t, index)
end
-- ===========================================================================

---@param abilcode integer
---@param t soundtype
---@return string
function GetAbilitySoundBJ(abilcode, t)
	return GetAbilitySoundById(abilcode, t)
end
-- ===========================================================================

---@param where location
---@return integer
function GetTerrainCliffLevelBJ(where)
	return GetTerrainCliffLevel(GetLocationX(where), GetLocationY(where))
end
-- ===========================================================================

---@param where location
---@return integer
function GetTerrainTypeBJ(where)
	return GetTerrainType(GetLocationX(where), GetLocationY(where))
end
-- ===========================================================================

---@param where location
---@return integer
function GetTerrainVarianceBJ(where)
	return GetTerrainVariance(GetLocationX(where), GetLocationY(where))
end
-- ===========================================================================

---@param where location
---@param terrainType integer
---@param variation integer
---@param area integer
---@param shape integer
---@return nil
function SetTerrainTypeBJ(where, terrainType, variation, area, shape)
	SetTerrainType(GetLocationX(where), GetLocationY(where), terrainType, variation, area, shape)
end
-- ===========================================================================

---@param where location
---@param t pathingtype
---@return boolean
function IsTerrainPathableBJ(where, t)
	return IsTerrainPathable(GetLocationX(where), GetLocationY(where), t)
end
-- ===========================================================================

---@param where location
---@param t pathingtype
---@param flag boolean
---@return nil
function SetTerrainPathableBJ(where, t, flag)
	SetTerrainPathable(GetLocationX(where), GetLocationY(where), t, flag)
end
-- ===========================================================================

---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function SetWaterBaseColorBJ(red, green, blue, transparency)
	SetWaterBaseColor(PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param whichPlayer player
---@param whichFogState fogstate
---@param r rect
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRectSimple(whichPlayer, whichFogState, r, afterUnits)
	bj_lastCreatedFogModifier = CreateFogModifierRect(whichPlayer, whichFogState, r, true, afterUnits)
	return bj_lastCreatedFogModifier
end
-- ===========================================================================

---@param whichPlayer player
---@param whichFogState fogstate
---@param center location
---@param radius real
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRadiusLocSimple(whichPlayer, whichFogState, center, radius, afterUnits)
	bj_lastCreatedFogModifier = CreateFogModifierRadiusLoc(whichPlayer, whichFogState, center, radius, true, afterUnits)
	return bj_lastCreatedFogModifier
end
-- ===========================================================================
--  Version of CreateFogModifierRect that assumes use of sharedVision and
--  gives the option of immediately enabling the modifier, so that triggers
--  can default to modifiers that are immediately enabled.
-- 

---@param enabled boolean
---@param whichPlayer player
---@param whichFogState fogstate
---@param r rect
---@return fogmodifier
function CreateFogModifierRectBJ(enabled, whichPlayer, whichFogState, r)
	bj_lastCreatedFogModifier = CreateFogModifierRect(whichPlayer, whichFogState, r, true, false)
	if enabled then
		FogModifierStart(bj_lastCreatedFogModifier)
	end
	return bj_lastCreatedFogModifier
end
-- ===========================================================================
--  Version of CreateFogModifierRadius that assumes use of sharedVision and
--  gives the option of immediately enabling the modifier, so that triggers
--  can default to modifiers that are immediately enabled.
-- 

---@param enabled boolean
---@param whichPlayer player
---@param whichFogState fogstate
---@param center location
---@param radius real
---@return fogmodifier
function CreateFogModifierRadiusLocBJ(enabled, whichPlayer, whichFogState, center, radius)
	bj_lastCreatedFogModifier = CreateFogModifierRadiusLoc(whichPlayer, whichFogState, center, radius, true, false)
	if enabled then
		FogModifierStart(bj_lastCreatedFogModifier)
	end
	return bj_lastCreatedFogModifier
end
-- ===========================================================================
---@return fogmodifier
function GetLastCreatedFogModifier()
	return bj_lastCreatedFogModifier
end
-- ===========================================================================
---@return nil
function FogEnableOn()
	FogEnable(true)
end
-- ===========================================================================
---@return nil
function FogEnableOff()
	FogEnable(false)
end
-- ===========================================================================
---@return nil
function FogMaskEnableOn()
	FogMaskEnable(true)
end
-- ===========================================================================
---@return nil
function FogMaskEnableOff()
	FogMaskEnable(false)
end
-- ===========================================================================

---@param flag boolean
---@return nil
function UseTimeOfDayBJ(flag)
	SuspendTimeOfDay(not flag)
end
-- ===========================================================================

---@param style integer
---@param zstart real
---@param zend real
---@param density real
---@param red real
---@param green real
---@param blue real
---@return nil
function SetTerrainFogExBJ(style, zstart, zend, density, red, green, blue)
	SetTerrainFogEx(style, zstart, zend, density, red * 0.01, green * 0.01, blue * 0.01)
end
-- ===========================================================================
---@return nil
function ResetTerrainFogBJ()
	ResetTerrainFog()
end
-- ===========================================================================

---@param animName string
---@param doodadID integer
---@param radius real
---@param center location
---@return nil
function SetDoodadAnimationBJ(animName, doodadID, radius, center)
	SetDoodadAnimation(GetLocationX(center), GetLocationY(center), radius, doodadID, false, animName, false)
end
-- ===========================================================================

---@param animName string
---@param doodadID integer
---@param r rect
---@return nil
function SetDoodadAnimationRectBJ(animName, doodadID, r)
	SetDoodadAnimationRect(r, doodadID, animName, false)
end
-- ===========================================================================

---@param add boolean
---@param animProperties string
---@param whichUnit unit
---@return nil
function AddUnitAnimationPropertiesBJ(add, animProperties, whichUnit)
	AddUnitAnimationProperties(whichUnit, animProperties, add)
end
-- ============================================================================

---@param file string
---@param size real
---@param where location
---@param zOffset real
---@param imageType integer
---@return image
function CreateImageBJ(file, size, where, zOffset, imageType)
	bj_lastCreatedImage = CreateImage(file, size, size, size, GetLocationX(where), GetLocationY(where), zOffset, 0, 0, 0, imageType)
	return bj_lastCreatedImage
end
-- ============================================================================

---@param flag boolean
---@param whichImage image
---@return nil
function ShowImageBJ(flag, whichImage)
	ShowImage(whichImage, flag)
end
-- ============================================================================

---@param whichImage image
---@param where location
---@param zOffset real
---@return nil
function SetImagePositionBJ(whichImage, where, zOffset)
	SetImagePosition(whichImage, GetLocationX(where), GetLocationY(where), zOffset)
end
-- ============================================================================

---@param whichImage image
---@param red real
---@param green real
---@param blue real
---@param alpha real
---@return nil
function SetImageColorBJ(whichImage, red, green, blue, alpha)
	SetImageColor(whichImage, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - alpha))
end
-- ============================================================================
---@return image
function GetLastCreatedImage()
	return bj_lastCreatedImage
end
-- ============================================================================

---@param where location
---@param name string
---@param red real
---@param green real
---@param blue real
---@param alpha real
---@param forcePaused boolean
---@param noBirthTime boolean
---@return ubersplat
function CreateUbersplatBJ(where, name, red, green, blue, alpha, forcePaused, noBirthTime)
	bj_lastCreatedUbersplat = CreateUbersplat(GetLocationX(where), GetLocationY(where), name, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - alpha), forcePaused, noBirthTime)
	return bj_lastCreatedUbersplat
end
-- ============================================================================

---@param flag boolean
---@param whichSplat ubersplat
---@return nil
function ShowUbersplatBJ(flag, whichSplat)
	ShowUbersplat(whichSplat, flag)
end
-- ============================================================================
---@return ubersplat
function GetLastCreatedUbersplat()
	return bj_lastCreatedUbersplat
end
-- ============================================================================
---@return minimapicon
function GetLastCreatedMinimapIcon()
	return bj_lastCreatedMinimapIcon
end
-- ============================================================================

---@param whichUnit unit
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconOnUnitBJ(whichUnit, red, green, blue, pingPath, fogVisibility)
	bj_lastCreatedMinimapIcon = CreateMinimapIconOnUnit(whichUnit, red, green, blue, pingPath, fogVisibility)
	return bj_lastCreatedMinimapIcon
end
-- ============================================================================

---@param where location
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconAtLocBJ(where, red, green, blue, pingPath, fogVisibility)
	bj_lastCreatedMinimapIcon = CreateMinimapIconAtLoc(where, red, green, blue, pingPath, fogVisibility)
	return bj_lastCreatedMinimapIcon
end
-- ============================================================================

---@param x real
---@param y real
---@param red integer
---@param green integer
---@param blue integer
---@param pingPath string
---@param fogVisibility fogstate
---@return minimapicon
function CreateMinimapIconBJ(x, y, red, green, blue, pingPath, fogVisibility)
	bj_lastCreatedMinimapIcon = CreateMinimapIcon(x, y, red, green, blue, pingPath, fogVisibility)
	return bj_lastCreatedMinimapIcon
end
-- ============================================================================

---@param whichUnit unit
---@param style integer
---@return nil
function CampaignMinimapIconUnitBJ(whichUnit, style)
	local red
	local green
	local blue
	local path
	if (style == bj_CAMPPINGSTYLE_PRIMARY) then
		--  green
		red   = 255
		green = 0
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectivePrimary")
	elseif (style == bj_CAMPPINGSTYLE_PRIMARY_GREEN) then
		--  green
		red   = 0
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectivePrimary")
	elseif (style == bj_CAMPPINGSTYLE_PRIMARY_RED) then
		--  green
		red   = 255
		green = 0
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectivePrimary")
	elseif (style == bj_CAMPPINGSTYLE_BONUS) then
		--  yellow
		red   = 255
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectiveBonus")
	elseif (style == bj_CAMPPINGSTYLE_TURNIN) then
		--  yellow
		red   = 255
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestTurnIn")
	elseif (style == bj_CAMPPINGSTYLE_BOSS) then
		--  red
		red   = 255
		green = 0
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestBoss")
	elseif (style == bj_CAMPPINGSTYLE_CONTROL_ALLY) then
		--  green
		red   = 0
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestControlPoint")
	elseif (style == bj_CAMPPINGSTYLE_CONTROL_NEUTRAL) then
		--  white
		red   = 255
		green = 255
		blue  = 255
		path  = SkinManagerGetLocalPath("MinimapQuestControlPoint")
	elseif (style == bj_CAMPPINGSTYLE_CONTROL_ENEMY) then
		--  red
		red   = 255
		green = 0
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestControlPoint")
	end
	CreateMinimapIconOnUnitBJ(whichUnit, red, green, blue, path, FOG_OF_WAR_MASKED)
	SetMinimapIconOrphanDestroy(bj_lastCreatedMinimapIcon, true)
end
-- ============================================================================

---@param where location
---@param style integer
---@return nil
function CampaignMinimapIconLocBJ(where, style)
	local red
	local green
	local blue
	local path
	if (style == bj_CAMPPINGSTYLE_PRIMARY) then
		--  green (different from the unit version)
		red   = 0
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectivePrimary")
	elseif (style == bj_CAMPPINGSTYLE_PRIMARY_GREEN) then
		--  green (different from the unit version)
		red   = 0
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectivePrimary")
	elseif (style == bj_CAMPPINGSTYLE_PRIMARY_RED) then
		--  green (different from the unit version)
		red   = 255
		green = 0
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectivePrimary")
	elseif (style == bj_CAMPPINGSTYLE_BONUS) then
		--  yellow
		red   = 255
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestObjectiveBonus")
	elseif (style == bj_CAMPPINGSTYLE_TURNIN) then
		--  yellow
		red   = 255
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestTurnIn")
	elseif (style == bj_CAMPPINGSTYLE_BOSS) then
		--  red
		red   = 255
		green = 0
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestBoss")
	elseif (style == bj_CAMPPINGSTYLE_CONTROL_ALLY) then
		--  green
		red   = 0
		green = 255
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestControlPoint")
	elseif (style == bj_CAMPPINGSTYLE_CONTROL_NEUTRAL) then
		--  white
		red   = 255
		green = 255
		blue  = 255
		path  = SkinManagerGetLocalPath("MinimapQuestControlPoint")
	elseif (style == bj_CAMPPINGSTYLE_CONTROL_ENEMY) then
		--  red
		red   = 255
		green = 0
		blue  = 0
		path  = SkinManagerGetLocalPath("MinimapQuestControlPoint")
	end
	CreateMinimapIconAtLocBJ(where, red, green, blue, path, FOG_OF_WAR_MASKED)
end
-- ***************************************************************************
-- 
-- *  Sound Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param soundHandle sound
---@return nil
function PlaySoundBJ(soundHandle)
	bj_lastPlayedSound = soundHandle
	if (soundHandle ~= nil) then
		StartSound(soundHandle)
	end
end
-- ===========================================================================

---@param soundHandle sound
---@param fadeOut boolean
---@return nil
function StopSoundBJ(soundHandle, fadeOut)
	StopSound(soundHandle, false, fadeOut)
end
-- ===========================================================================

---@param soundHandle sound
---@param volumePercent real
---@return nil
function SetSoundVolumeBJ(soundHandle, volumePercent)
	SetSoundVolume(soundHandle, PercentToInt(volumePercent, 127))
end
-- ===========================================================================

---@param newOffset real
---@param soundHandle sound
---@return nil
function SetSoundOffsetBJ(newOffset, soundHandle)
	SetSoundPlayPosition(soundHandle, R2I(newOffset * 1000))
end
-- ===========================================================================

---@param soundHandle sound
---@param cutoff real
---@return nil
function SetSoundDistanceCutoffBJ(soundHandle, cutoff)
	SetSoundDistanceCutoff(soundHandle, cutoff)
end
-- ===========================================================================

---@param soundHandle sound
---@param pitch real
---@return nil
function SetSoundPitchBJ(soundHandle, pitch)
	SetSoundPitch(soundHandle, pitch)
end
-- ===========================================================================

---@param soundHandle sound
---@param loc location
---@param z real
---@return nil
function SetSoundPositionLocBJ(soundHandle, loc, z)
	SetSoundPosition(soundHandle, GetLocationX(loc), GetLocationY(loc), z)
end
-- ===========================================================================

---@param soundHandle sound
---@param whichUnit unit
---@return nil
function AttachSoundToUnitBJ(soundHandle, whichUnit)
	AttachSoundToUnit(soundHandle, whichUnit)
end
-- ===========================================================================

---@param soundHandle sound
---@param inside real
---@param outside real
---@param outsideVolumePercent real
---@return nil
function SetSoundConeAnglesBJ(soundHandle, inside, outside, outsideVolumePercent)
	SetSoundConeAngles(soundHandle, inside, outside, PercentToInt(outsideVolumePercent, 127))
end
-- ===========================================================================

---@param soundHandle sound
---@return nil
function KillSoundWhenDoneBJ(soundHandle)
	KillSoundWhenDone(soundHandle)
end
-- ===========================================================================

---@param soundHandle sound
---@param volumePercent real
---@param loc location
---@param z real
---@return nil
function PlaySoundAtPointBJ(soundHandle, volumePercent, loc, z)
	SetSoundPositionLocBJ(soundHandle, loc, z)
	SetSoundVolumeBJ(soundHandle, volumePercent)
	PlaySoundBJ(soundHandle)
end
-- ===========================================================================

---@param soundHandle sound
---@param volumePercent real
---@param whichUnit unit
---@return nil
function PlaySoundOnUnitBJ(soundHandle, volumePercent, whichUnit)
	AttachSoundToUnitBJ(soundHandle, whichUnit)
	SetSoundVolumeBJ(soundHandle, volumePercent)
	PlaySoundBJ(soundHandle)
end
-- ===========================================================================

---@param soundHandle sound
---@param volumePercent real
---@param startingOffset real
---@return nil
function PlaySoundFromOffsetBJ(soundHandle, volumePercent, startingOffset)
	SetSoundVolumeBJ(soundHandle, volumePercent)
	PlaySoundBJ(soundHandle)
	SetSoundOffsetBJ(startingOffset, soundHandle)
end
-- ===========================================================================

---@param musicFileName string
---@return nil
function PlayMusicBJ(musicFileName)
	bj_lastPlayedMusic = musicFileName
	PlayMusic(musicFileName)
end
-- ===========================================================================

---@param musicFileName string
---@param startingOffset real
---@param fadeInTime real
---@return nil
function PlayMusicExBJ(musicFileName, startingOffset, fadeInTime)
	bj_lastPlayedMusic = musicFileName
	PlayMusicEx(musicFileName, R2I(startingOffset * 1000), R2I(fadeInTime * 1000))
end
-- ===========================================================================

---@param newOffset real
---@return nil
function SetMusicOffsetBJ(newOffset)
	SetMusicPlayPosition(R2I(newOffset * 1000))
end
-- ===========================================================================

---@param musicName string
---@return nil
function PlayThematicMusicBJ(musicName)
	PlayThematicMusic(musicName)
end
-- ===========================================================================

---@param musicName string
---@param startingOffset real
---@return nil
function PlayThematicMusicExBJ(musicName, startingOffset)
	PlayThematicMusicEx(musicName, R2I(startingOffset * 1000))
end
-- ===========================================================================

---@param newOffset real
---@return nil
function SetThematicMusicOffsetBJ(newOffset)
	SetThematicMusicPlayPosition(R2I(newOffset * 1000))
end
-- ===========================================================================
---@return nil
function EndThematicMusicBJ()
	EndThematicMusic()
end
-- ===========================================================================

---@param fadeOut boolean
---@return nil
function StopMusicBJ(fadeOut)
	StopMusic(fadeOut)
end
-- ===========================================================================
---@return nil
function ResumeMusicBJ()
	ResumeMusic()
end
-- ===========================================================================

---@param volumePercent real
---@return nil
function SetMusicVolumeBJ(volumePercent)
	SetMusicVolume(PercentToInt(volumePercent, 127))
end
-- ===========================================================================

---@param soundHandle sound
---@return real
function GetSoundDurationBJ(soundHandle)
	if (soundHandle == nil) then
		return bj_NOTHING_SOUND_DURATION
	else
		return I2R(GetSoundDuration(soundHandle)) * 0.001
	end
end
-- ===========================================================================

---@param musicFileName string
---@return real
function GetSoundFileDurationBJ(musicFileName)
	return I2R(GetSoundFileDuration(musicFileName)) * 0.001
end
-- ===========================================================================
---@return sound
function GetLastPlayedSound()
	return bj_lastPlayedSound
end
-- ===========================================================================
---@return string
function GetLastPlayedMusic()
	return bj_lastPlayedMusic
end
-- ===========================================================================

---@param vgroup volumegroup
---@param percent real
---@return nil
function VolumeGroupSetVolumeBJ(vgroup, percent)
	VolumeGroupSetVolume(vgroup, percent * 0.01)
end
-- ===========================================================================
---@return nil
function SetCineModeVolumeGroupsImmediateBJ()
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT, bj_CINEMODE_VOLUME_UNITMOVEMENT)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS, bj_CINEMODE_VOLUME_UNITSOUNDS)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT, bj_CINEMODE_VOLUME_COMBAT)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS, bj_CINEMODE_VOLUME_SPELLS)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI, bj_CINEMODE_VOLUME_UI)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_MUSIC, bj_CINEMODE_VOLUME_MUSIC)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, bj_CINEMODE_VOLUME_AMBIENTSOUNDS)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE, bj_CINEMODE_VOLUME_FIRE)
end
-- ===========================================================================
---@return nil
function SetCineModeVolumeGroupsBJ()
	--  Delay the request if it occurs at map init.
	if bj_gameStarted then
		SetCineModeVolumeGroupsImmediateBJ()
	else
		TimerStart(bj_volumeGroupsTimer, bj_GAME_STARTED_THRESHOLD, false, SetCineModeVolumeGroupsImmediateBJ)
	end
end
-- ===========================================================================
---@return nil
function SetSpeechVolumeGroupsImmediateBJ()
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT, bj_SPEECH_VOLUME_UNITMOVEMENT)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS, bj_SPEECH_VOLUME_UNITSOUNDS)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT, bj_SPEECH_VOLUME_COMBAT)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS, bj_SPEECH_VOLUME_SPELLS)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI, bj_SPEECH_VOLUME_UI)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_MUSIC, bj_SPEECH_VOLUME_MUSIC)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, bj_SPEECH_VOLUME_AMBIENTSOUNDS)
	VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE, bj_SPEECH_VOLUME_FIRE)
end
-- ===========================================================================
---@return nil
function SetSpeechVolumeGroupsBJ()
	--  Delay the request if it occurs at map init.
	if bj_gameStarted then
		SetSpeechVolumeGroupsImmediateBJ()
	else
		TimerStart(bj_volumeGroupsTimer, bj_GAME_STARTED_THRESHOLD, false, SetSpeechVolumeGroupsImmediateBJ)
	end
end
-- ===========================================================================
---@return nil
function VolumeGroupResetImmediateBJ()
	VolumeGroupReset()
end
-- ===========================================================================
---@return nil
function VolumeGroupResetBJ()
	--  Delay the request if it occurs at map init.
	if bj_gameStarted then
		VolumeGroupResetImmediateBJ()
	else
		TimerStart(bj_volumeGroupsTimer, bj_GAME_STARTED_THRESHOLD, false, VolumeGroupResetImmediateBJ)
	end
end
-- ===========================================================================

---@param soundHandle sound
---@return boolean
function GetSoundIsPlayingBJ(soundHandle)
	return GetSoundIsLoading(soundHandle) or GetSoundIsPlaying(soundHandle)
end
-- ===========================================================================

---@param soundHandle sound
---@param offset real
---@return nil
function WaitForSoundBJ(soundHandle, offset)
	TriggerWaitForSound(soundHandle, offset)
end
-- ===========================================================================

---@param musicName string
---@param index integer
---@return nil
function SetMapMusicIndexedBJ(musicName, index)
	SetMapMusic(musicName, false, index)
end
-- ===========================================================================

---@param musicName string
---@return nil
function SetMapMusicRandomBJ(musicName)
	SetMapMusic(musicName, true, 0)
end
-- ===========================================================================
---@return nil
function ClearMapMusicBJ()
	ClearMapMusic()
end
-- ===========================================================================

---@param add boolean
---@param soundHandle sound
---@param r rect
---@return nil
function SetStackedSoundBJ(add, soundHandle, r)
	local width  = GetRectMaxX(r) - GetRectMinX(r)
	local height = GetRectMaxY(r) - GetRectMinY(r)
	
	SetSoundPosition(soundHandle, GetRectCenterX(r), GetRectCenterY(r), 0)
	if add then
		RegisterStackedSound(soundHandle, true, width, height)
	else
		UnregisterStackedSound(soundHandle, true, width, height)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param soundHandle sound
---@return nil
function StartSoundForPlayerBJ(whichPlayer, soundHandle)
	if (whichPlayer == GetLocalPlayer()) then
		StartSound(soundHandle)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param vgroup volumegroup
---@param scale real
---@return nil
function VolumeGroupSetVolumeForPlayerBJ(whichPlayer, vgroup, scale)
	if (GetLocalPlayer() == whichPlayer) then
		VolumeGroupSetVolume(vgroup, scale)
	end
end
-- ===========================================================================

---@param flag boolean
---@return nil
function EnableDawnDusk(flag)
	bj_useDawnDuskSounds = flag
end
-- ===========================================================================
---@return boolean
function IsDawnDuskEnabled()
	return bj_useDawnDuskSounds
end
-- ***************************************************************************
-- 
-- *  Day/Night ambient sounds
-- 
-- ***************************************************************************
-- ===========================================================================

---@param inLabel string
---@return nil
function SetAmbientDaySound(inLabel)
	local ToD
	
	--  Stop old sound, if necessary
	if (bj_dayAmbientSound ~= nil) then
		StopSound(bj_dayAmbientSound, true, true)
	end
	
	--  Create new sound
	bj_dayAmbientSound = CreateMIDISound(inLabel, 20, 20)
	
	--  Start the sound if necessary, based on current time
	ToD                = GetTimeOfDay()
	if (ToD >= bj_TOD_DAWN and ToD < bj_TOD_DUSK) then
		StartSound(bj_dayAmbientSound)
	end
end
-- ===========================================================================

---@param inLabel string
---@return nil
function SetAmbientNightSound(inLabel)
	local ToD
	
	--  Stop old sound, if necessary
	if (bj_nightAmbientSound ~= nil) then
		StopSound(bj_nightAmbientSound, true, true)
	end
	
	--  Create new sound
	bj_nightAmbientSound = CreateMIDISound(inLabel, 20, 20)
	
	--  Start the sound if necessary, based on current time
	ToD                  = GetTimeOfDay()
	if (ToD < bj_TOD_DAWN or ToD >= bj_TOD_DUSK) then
		StartSound(bj_nightAmbientSound)
	end
end
-- ***************************************************************************
-- 
-- *  Special Effect Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param where location
---@param modelName string
---@return effect
function AddSpecialEffectLocBJ(where, modelName)
	bj_lastCreatedEffect = AddSpecialEffectLoc(modelName, where)
	return bj_lastCreatedEffect
end
-- ===========================================================================

---@param attachPointName string
---@param targetWidget widget
---@param modelName string
---@return effect
function AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
	bj_lastCreatedEffect = AddSpecialEffectTarget(modelName, targetWidget, attachPointName)
	return bj_lastCreatedEffect
end
-- ===========================================================================
--  Two distinct trigger actions can't share the same function name, so this
--  dummy function simply mimics the behavior of an existing call.
-- 
--  Commented out - Destructibles have no attachment points.
-- 
-- function AddSpecialEffectTargetDestructableBJ takes string attachPointName, widget targetWidget, string modelName returns effect
--     return AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
-- endfunction
-- ===========================================================================
--  Two distinct trigger actions can't share the same function name, so this
--  dummy function simply mimics the behavior of an existing call.
-- 
--  Commented out - Items have no attachment points.
-- 
-- function AddSpecialEffectTargetItemBJ takes string attachPointName, widget targetWidget, string modelName returns effect
--     return AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
-- endfunction
-- ===========================================================================

---@param whichEffect effect
---@return nil
function DestroyEffectBJ(whichEffect)
	DestroyEffect(whichEffect)
end
-- ===========================================================================
---@return effect
function GetLastCreatedEffectBJ()
	return bj_lastCreatedEffect
end
-- ***************************************************************************
-- 
-- *  Command Button Effect Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param abilityId integer
---@param order string
---@return commandbuttoneffect
function CreateCommandButtonEffectBJ(abilityId, order)
	bj_lastCreatedCommandButtonEffect = CreateCommandButtonEffect(abilityId, order)
	return bj_lastCreatedCommandButtonEffect
end
-- ===========================================================================

---@param unitId integer
---@return commandbuttoneffect
function CreateTrainCommandButtonEffectBJ(unitId)
	bj_lastCreatedCommandButtonEffect = CreateCommandButtonEffect(FourCC('Aque'), UnitId2String(unitId))
	return bj_lastCreatedCommandButtonEffect
end
-- ===========================================================================

---@param techId integer
---@return commandbuttoneffect
function CreateUpgradeCommandButtonEffectBJ(techId)
	bj_lastCreatedCommandButtonEffect = CreateUpgradeCommandButtonEffect(techId)
	return bj_lastCreatedCommandButtonEffect
end
-- ===========================================================================

---@param order string
---@return commandbuttoneffect
function CreateCommonCommandButtonEffectBJ(order)
	bj_lastCreatedCommandButtonEffect = CreateCommandButtonEffect(0, order)
	return bj_lastCreatedCommandButtonEffect
end
-- ===========================================================================

---@param abilityId integer
---@return commandbuttoneffect
function CreateLearnCommandButtonEffectBJ(abilityId)
	bj_lastCreatedCommandButtonEffect = CreateLearnCommandButtonEffect(abilityId)
	return bj_lastCreatedCommandButtonEffect
end
-- ===========================================================================

---@param unitId integer
---@return commandbuttoneffect
function CreateBuildCommandButtonEffectBJ(unitId)
	local r = GetPlayerRace(GetLocalPlayer())
	local abilityId
	if (r == RACE_HUMAN) then
		abilityId = FourCC('AHbu')
	elseif (r == RACE_ORC) then
		abilityId = FourCC('AObu')
	elseif (r == RACE_UNDEAD) then
		abilityId = FourCC('AUbu')
	elseif (r == RACE_NIGHTELF) then
		abilityId = FourCC('AEbu')
	else
		abilityId = FourCC('ANbu')
	end
	bj_lastCreatedCommandButtonEffect = CreateCommandButtonEffect(abilityId, UnitId2String(unitId))
	return bj_lastCreatedCommandButtonEffect
end
-- ===========================================================================
---@return commandbuttoneffect
function GetLastCreatedCommandButtonEffectBJ()
	return bj_lastCreatedCommandButtonEffect
end
-- ***************************************************************************
-- 
-- *  Hero and Item Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param whichItem item
---@return location
function GetItemLoc(whichItem)
	return Location(GetItemX(whichItem), GetItemY(whichItem))
end
-- ===========================================================================

---@param whichWidget widget
---@return real
function GetItemLifeBJ(whichWidget)
	return GetWidgetLife(whichWidget)
end
-- ===========================================================================

---@param whichWidget widget
---@param life real
---@return nil
function SetItemLifeBJ(whichWidget, life)
	SetWidgetLife(whichWidget, life)
end
-- ===========================================================================

---@param xpToAdd integer
---@param whichHero unit
---@param showEyeCandy boolean
---@return nil
function AddHeroXPSwapped(xpToAdd, whichHero, showEyeCandy)
	AddHeroXP(whichHero, xpToAdd, showEyeCandy)
end
-- ===========================================================================

---@param whichHero unit
---@param newLevel integer
---@param showEyeCandy boolean
---@return nil
function SetHeroLevelBJ(whichHero, newLevel, showEyeCandy)
	local oldLevel = GetHeroLevel(whichHero)
	
	if (newLevel > oldLevel) then
		SetHeroLevel(whichHero, newLevel, showEyeCandy)
	elseif (newLevel < oldLevel) then
		UnitStripHeroLevel(whichHero, oldLevel - newLevel)
	else
		--  No change in level - ignore the request.
	end
end
-- ===========================================================================

---@param abilcode integer
---@param whichUnit unit
---@return integer
function DecUnitAbilityLevelSwapped(abilcode, whichUnit)
	return DecUnitAbilityLevel(whichUnit, abilcode)
end
-- ===========================================================================

---@param abilcode integer
---@param whichUnit unit
---@return integer
function IncUnitAbilityLevelSwapped(abilcode, whichUnit)
	return IncUnitAbilityLevel(whichUnit, abilcode)
end
-- ===========================================================================

---@param abilcode integer
---@param whichUnit unit
---@param level integer
---@return integer
function SetUnitAbilityLevelSwapped(abilcode, whichUnit, level)
	return SetUnitAbilityLevel(whichUnit, abilcode, level)
end
-- ===========================================================================

---@param abilcode integer
---@param whichUnit unit
---@return integer
function GetUnitAbilityLevelSwapped(abilcode, whichUnit)
	return GetUnitAbilityLevel(whichUnit, abilcode)
end
-- ===========================================================================

---@param whichUnit unit
---@param buffcode integer
---@return boolean
function UnitHasBuffBJ(whichUnit, buffcode)
	return (GetUnitAbilityLevel(whichUnit, buffcode) > 0)
end
-- ===========================================================================

---@param buffcode integer
---@param whichUnit unit
---@return boolean
function UnitRemoveBuffBJ(buffcode, whichUnit)
	return UnitRemoveAbility(whichUnit, buffcode)
end
-- ===========================================================================

---@param whichItem item
---@param whichHero unit
---@return boolean
function UnitAddItemSwapped(whichItem, whichHero)
	return UnitAddItem(whichHero, whichItem)
end
-- ===========================================================================

---@param itemId integer
---@param whichHero unit
---@return item
function UnitAddItemByIdSwapped(itemId, whichHero)
	--  Create the item at the hero's feet first, and then give it to him.
	--  This is to ensure that the item will be left at the hero's feet if
	--  his inventory is full. 
	bj_lastCreatedItem = CreateItem(itemId, GetUnitX(whichHero), GetUnitY(whichHero))
	UnitAddItem(whichHero, bj_lastCreatedItem)
	return bj_lastCreatedItem
end
-- ===========================================================================

---@param whichItem item
---@param whichHero unit
---@return nil
function UnitRemoveItemSwapped(whichItem, whichHero)
	bj_lastRemovedItem = whichItem
	UnitRemoveItem(whichHero, whichItem)
end
-- ===========================================================================
--  Translates 0-based slot indices to 1-based slot indices.
-- 

---@param itemSlot integer
---@param whichHero unit
---@return item
function UnitRemoveItemFromSlotSwapped(itemSlot, whichHero)
	bj_lastRemovedItem = UnitRemoveItemFromSlot(whichHero, itemSlot - 1)
	return bj_lastRemovedItem
end
-- ===========================================================================

---@param itemId integer
---@param loc location
---@return item
function CreateItemLoc(itemId, loc)
	bj_lastCreatedItem = CreateItem(itemId, GetLocationX(loc), GetLocationY(loc))
	return bj_lastCreatedItem
end
-- ===========================================================================
---@return item
function GetLastCreatedItem()
	return bj_lastCreatedItem
end
-- ===========================================================================
---@return item
function GetLastRemovedItem()
	return bj_lastRemovedItem
end
-- ===========================================================================

---@param whichItem item
---@param loc location
---@return nil
function SetItemPositionLoc(whichItem, loc)
	SetItemPosition(whichItem, GetLocationX(loc), GetLocationY(loc))
end
-- ===========================================================================
---@return integer
function GetLearnedSkillBJ()
	return GetLearnedSkill()
end
-- ===========================================================================

---@param flag boolean
---@param whichHero unit
---@return nil
function SuspendHeroXPBJ(flag, whichHero)
	SuspendHeroXP(whichHero, not flag)
end
-- ===========================================================================

---@param whichPlayer player
---@param handicapPercent real
---@return nil
function SetPlayerHandicapDamageBJ(whichPlayer, handicapPercent)
	SetPlayerHandicapDamage(whichPlayer, handicapPercent * 0.01)
end
-- ===========================================================================

---@param whichPlayer player
---@return real
function GetPlayerHandicapDamageBJ(whichPlayer)
	return GetPlayerHandicapDamage(whichPlayer) * 100
end
-- ===========================================================================

---@param whichPlayer player
---@param handicapPercent real
---@return nil
function SetPlayerHandicapReviveTimeBJ(whichPlayer, handicapPercent)
	SetPlayerHandicapReviveTime(whichPlayer, handicapPercent * 0.01)
end
-- ===========================================================================

---@param whichPlayer player
---@return real
function GetPlayerHandicapReviveTimeBJ(whichPlayer)
	return GetPlayerHandicapReviveTime(whichPlayer) * 100
end
-- ===========================================================================

---@param whichPlayer player
---@param handicapPercent real
---@return nil
function SetPlayerHandicapXPBJ(whichPlayer, handicapPercent)
	SetPlayerHandicapXP(whichPlayer, handicapPercent * 0.01)
end
-- ===========================================================================

---@param whichPlayer player
---@return real
function GetPlayerHandicapXPBJ(whichPlayer)
	return GetPlayerHandicapXP(whichPlayer) * 100
end
-- ===========================================================================

---@param whichPlayer player
---@param handicapPercent real
---@return nil
function SetPlayerHandicapBJ(whichPlayer, handicapPercent)
	SetPlayerHandicap(whichPlayer, handicapPercent * 0.01)
end
-- ===========================================================================

---@param whichPlayer player
---@return real
function GetPlayerHandicapBJ(whichPlayer)
	return GetPlayerHandicap(whichPlayer) * 100
end
-- ===========================================================================

---@param whichStat integer
---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroStatBJ(whichStat, whichHero, includeBonuses)
	if (whichStat == bj_HEROSTAT_STR) then
		return GetHeroStr(whichHero, includeBonuses)
	elseif (whichStat == bj_HEROSTAT_AGI) then
		return GetHeroAgi(whichHero, includeBonuses)
	elseif (whichStat == bj_HEROSTAT_INT) then
		return GetHeroInt(whichHero, includeBonuses)
	else
		--  Unrecognized hero stat - return 0
		return 0
	end
end
-- ===========================================================================

---@param whichHero unit
---@param whichStat integer
---@param value integer
---@return nil
function SetHeroStat(whichHero, whichStat, value)
	--  Ignore requests for negative hero stats.
	if (value <= 0) then
		return
	end
	
	if (whichStat == bj_HEROSTAT_STR) then
		SetHeroStr(whichHero, value, true)
	elseif (whichStat == bj_HEROSTAT_AGI) then
		SetHeroAgi(whichHero, value, true)
	elseif (whichStat == bj_HEROSTAT_INT) then
		SetHeroInt(whichHero, value, true)
	else
		--  Unrecognized hero stat - ignore the request.
	end
end
-- ===========================================================================

---@param whichStat integer
---@param whichHero unit
---@param modifyMethod integer
---@param value integer
---@return nil
function ModifyHeroStat(whichStat, whichHero, modifyMethod, value)
	if (modifyMethod == bj_MODIFYMETHOD_ADD) then
		SetHeroStat(whichHero, whichStat, GetHeroStatBJ(whichStat, whichHero, false) + value)
	elseif (modifyMethod == bj_MODIFYMETHOD_SUB) then
		SetHeroStat(whichHero, whichStat, GetHeroStatBJ(whichStat, whichHero, false) - value)
	elseif (modifyMethod == bj_MODIFYMETHOD_SET) then
		SetHeroStat(whichHero, whichStat, value)
	else
		--  Unrecognized modification method - ignore the request.
	end
end
-- ===========================================================================

---@param whichHero unit
---@param modifyMethod integer
---@param value integer
---@return boolean
function ModifyHeroSkillPoints(whichHero, modifyMethod, value)
	if (modifyMethod == bj_MODIFYMETHOD_ADD) then
		return UnitModifySkillPoints(whichHero, value)
	elseif (modifyMethod == bj_MODIFYMETHOD_SUB) then
		return UnitModifySkillPoints(whichHero, -value)
	elseif (modifyMethod == bj_MODIFYMETHOD_SET) then
		return UnitModifySkillPoints(whichHero, value - GetHeroSkillPoints(whichHero))
	else
		--  Unrecognized modification method - ignore the request and return failure.
		return false
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param whichItem item
---@param x real
---@param y real
---@return boolean
function UnitDropItemPointBJ(whichUnit, whichItem, x, y)
	return UnitDropItemPoint(whichUnit, whichItem, x, y)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichItem item
---@param loc location
---@return boolean
function UnitDropItemPointLoc(whichUnit, whichItem, loc)
	return UnitDropItemPoint(whichUnit, whichItem, GetLocationX(loc), GetLocationY(loc))
end
-- ===========================================================================

---@param whichUnit unit
---@param whichItem item
---@param slot integer
---@return boolean
function UnitDropItemSlotBJ(whichUnit, whichItem, slot)
	return UnitDropItemSlot(whichUnit, whichItem, slot - 1)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitDropItemTargetBJ(whichUnit, whichItem, target)
	return UnitDropItemTarget(whichUnit, whichItem, target)
end
-- ===========================================================================
--  Two distinct trigger actions can't share the same function name, so this
--  dummy function simply mimics the behavior of an existing call.
-- 

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitUseItemDestructable(whichUnit, whichItem, target)
	return UnitUseItemTarget(whichUnit, whichItem, target)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichItem item
---@param loc location
---@return boolean
function UnitUseItemPointLoc(whichUnit, whichItem, loc)
	return UnitUseItemPoint(whichUnit, whichItem, GetLocationX(loc), GetLocationY(loc))
end
-- ===========================================================================
--  Translates 0-based slot indices to 1-based slot indices.
-- 

---@param whichUnit unit
---@param itemSlot integer
---@return item
function UnitItemInSlotBJ(whichUnit, itemSlot)
	return UnitItemInSlot(whichUnit, itemSlot - 1)
end
-- ===========================================================================
--  Translates 0-based slot indices to 1-based slot indices.
-- 

---@param whichUnit unit
---@param itemId integer
---@return integer
function GetInventoryIndexOfItemTypeBJ(whichUnit, itemId)
	local index
	local indexItem
	
	index = 0
	while true do
		indexItem = UnitItemInSlot(whichUnit, index)
		if (indexItem ~= nil) and (GetItemTypeId(indexItem) == itemId) then
			return index + 1
		end
		
		index = index + 1
		if index >= bj_MAX_INVENTORY then break end
	end
	return 0
end
-- ===========================================================================

---@param whichUnit unit
---@param itemId integer
---@return item
function GetItemOfTypeFromUnitBJ(whichUnit, itemId)
	local index = GetInventoryIndexOfItemTypeBJ(whichUnit, itemId)
	
	if (index == 0) then
		return nil
	else
		return UnitItemInSlot(whichUnit, index - 1)
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param itemId integer
---@return boolean
function UnitHasItemOfTypeBJ(whichUnit, itemId)
	return GetInventoryIndexOfItemTypeBJ(whichUnit, itemId) > 0
end
-- ===========================================================================

---@param whichUnit unit
---@return integer
function UnitInventoryCount(whichUnit)
	local index = 0
	local count = 0
	
	while true do
		if (UnitItemInSlot(whichUnit, index) ~= nil) then
			count = count + 1
		end
		
		index = index + 1
		if index >= bj_MAX_INVENTORY then break end
	end
	
	return count
end
-- ===========================================================================

---@param whichUnit unit
---@return integer
function UnitInventorySizeBJ(whichUnit)
	return UnitInventorySize(whichUnit)
end
-- ===========================================================================

---@param whichItem item
---@param flag boolean
---@return nil
function SetItemInvulnerableBJ(whichItem, flag)
	SetItemInvulnerable(whichItem, flag)
end
-- ===========================================================================

---@param whichItem item
---@param flag boolean
---@return nil
function SetItemDropOnDeathBJ(whichItem, flag)
	SetItemDropOnDeath(whichItem, flag)
end
-- ===========================================================================

---@param whichItem item
---@param flag boolean
---@return nil
function SetItemDroppableBJ(whichItem, flag)
	SetItemDroppable(whichItem, flag)
end
-- ===========================================================================

---@param whichItem item
---@param whichPlayer player
---@param changeColor boolean
---@return nil
function SetItemPlayerBJ(whichItem, whichPlayer, changeColor)
	SetItemPlayer(whichItem, whichPlayer, changeColor)
end
-- ===========================================================================

---@param show boolean
---@param whichItem item
---@return nil
function SetItemVisibleBJ(show, whichItem)
	SetItemVisible(whichItem, show)
end
-- ===========================================================================

---@param whichItem item
---@return boolean
function IsItemHiddenBJ(whichItem)
	return not IsItemVisible(whichItem)
end
-- ===========================================================================

---@param level integer
---@return integer
function ChooseRandomItemBJ(level)
	return ChooseRandomItem(level)
end
-- ===========================================================================

---@param level integer
---@param whichType itemtype
---@return integer
function ChooseRandomItemExBJ(level, whichType)
	return ChooseRandomItemEx(whichType, level)
end
-- ===========================================================================
---@return integer
function ChooseRandomNPBuildingBJ()
	return ChooseRandomNPBuilding()
end
-- ===========================================================================

---@param level integer
---@return integer
function ChooseRandomCreepBJ(level)
	return ChooseRandomCreep(level)
end
-- ===========================================================================

---@param r rect
---@param actionFunc code
---@return nil
function EnumItemsInRectBJ(r, actionFunc)
	EnumItemsInRect(r, nil, actionFunc)
end
-- ===========================================================================
--  See GroupPickRandomUnitEnum for the details of this algorithm.
-- 
---@return nil
function RandomItemInRectBJEnum()
	bj_itemRandomConsidered = bj_itemRandomConsidered + 1
	if (GetRandomInt(1, bj_itemRandomConsidered) == 1) then
		bj_itemRandomCurrentPick = GetEnumItem()
	end
end
-- ===========================================================================
--  Picks a random item from within a rect, matching a condition
-- 

---@param r rect
---@param filter boolexpr
---@return item
function RandomItemInRectBJ(r, filter)
	bj_itemRandomConsidered  = 0
	bj_itemRandomCurrentPick = nil
	EnumItemsInRect(r, filter, RandomItemInRectBJEnum)
	DestroyBoolExpr(filter)
	return bj_itemRandomCurrentPick
end
-- ===========================================================================
--  Picks a random item from within a rect
-- 

---@param r rect
---@return item
function RandomItemInRectSimpleBJ(r)
	return RandomItemInRectBJ(r, nil)
end
-- ===========================================================================

---@param whichItem item
---@param status integer
---@return boolean
function CheckItemStatus(whichItem, status)
	if (status == bj_ITEM_STATUS_HIDDEN) then
		return not IsItemVisible(whichItem)
	elseif (status == bj_ITEM_STATUS_OWNED) then
		return IsItemOwned(whichItem)
	elseif (status == bj_ITEM_STATUS_INVULNERABLE) then
		return IsItemInvulnerable(whichItem)
	elseif (status == bj_ITEM_STATUS_POWERUP) then
		return IsItemPowerup(whichItem)
	elseif (status == bj_ITEM_STATUS_SELLABLE) then
		return IsItemSellable(whichItem)
	elseif (status == bj_ITEM_STATUS_PAWNABLE) then
		return IsItemPawnable(whichItem)
	else
		--  Unrecognized status - return false
		return false
	end
end
-- ===========================================================================

---@param itemId integer
---@param status integer
---@return boolean
function CheckItemcodeStatus(itemId, status)
	if (status == bj_ITEMCODE_STATUS_POWERUP) then
		return IsItemIdPowerup(itemId)
	elseif (status == bj_ITEMCODE_STATUS_SELLABLE) then
		return IsItemIdSellable(itemId)
	elseif (status == bj_ITEMCODE_STATUS_PAWNABLE) then
		return IsItemIdPawnable(itemId)
	else
		--  Unrecognized status - return false
		return false
	end
end
-- ***************************************************************************
-- 
-- *  Unit Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param unitId integer
---@return integer
function UnitId2OrderIdBJ(unitId)
	return unitId
end
-- ===========================================================================

---@param unitIdString string
---@return integer
function String2UnitIdBJ(unitIdString)
	return UnitId(unitIdString)
end
-- ===========================================================================

---@param unitId integer
---@return string
function UnitId2StringBJ(unitId)
	local unitString = UnitId2String(unitId)
	
	if (unitString ~= nil) then
		return unitString
	end
	
	--  The unitId was not recognized - return an empty string.
	return ""
end
-- ===========================================================================

---@param orderIdString string
---@return integer
function String2OrderIdBJ(orderIdString)
	local orderId
	
	--  Check to see if it's a generic order.
	orderId = OrderId(orderIdString)
	if (orderId ~= 0) then
		return orderId
	end
	
	--  Check to see if it's a (train) unit order.
	orderId = UnitId(orderIdString)
	if (orderId ~= 0) then
		return orderId
	end
	
	--  Unrecognized - return 0
	return 0
end
-- ===========================================================================

---@param orderId integer
---@return string
function OrderId2StringBJ(orderId)
	local orderString
	
	--  Check to see if it's a generic order.
	orderString = OrderId2String(orderId)
	if (orderString ~= nil) then
		return orderString
	end
	
	--  Check to see if it's a (train) unit order.
	orderString = UnitId2String(orderId)
	if (orderString ~= nil) then
		return orderString
	end
	
	--  Unrecognized - return an empty string.
	return ""
end
-- ===========================================================================
---@return integer
function GetIssuedOrderIdBJ()
	return GetIssuedOrderId()
end
-- ===========================================================================
---@return unit
function GetKillingUnitBJ()
	return GetKillingUnit()
end
-- ===========================================================================

---@param id player
---@param unitid integer
---@param loc location
---@param face real
---@return unit
function CreateUnitAtLocSaveLast(id, unitid, loc, face)
	if (unitid == FourCC('ugol')) then
		bj_lastCreatedUnit = CreateBlightedGoldmine(id, GetLocationX(loc), GetLocationY(loc), face)
	else
		bj_lastCreatedUnit = CreateUnitAtLoc(id, unitid, loc, face)
	end
	
	return bj_lastCreatedUnit
end
-- ===========================================================================
---@return unit
function GetLastCreatedUnit()
	return bj_lastCreatedUnit
end
-- ===========================================================================

---@param count integer
---@param unitId integer
---@param whichPlayer player
---@param loc location
---@param face real
---@return group
function CreateNUnitsAtLoc(count, unitId, whichPlayer, loc, face)
	GroupClear(bj_lastCreatedGroup)
	while true do
		count = count - 1
		if count < 0 then break end
		CreateUnitAtLocSaveLast(whichPlayer, unitId, loc, face)
		GroupAddUnit(bj_lastCreatedGroup, bj_lastCreatedUnit)
	end
	return bj_lastCreatedGroup
end
-- ===========================================================================

---@param count integer
---@param unitId integer
---@param whichPlayer player
---@param loc location
---@param lookAt location
---@return group
function CreateNUnitsAtLocFacingLocBJ(count, unitId, whichPlayer, loc, lookAt)
	return CreateNUnitsAtLoc(count, unitId, whichPlayer, loc, AngleBetweenPoints(loc, lookAt))
end
-- ===========================================================================
---@return nil
function GetLastCreatedGroupEnum()
	GroupAddUnit(bj_groupLastCreatedDest, GetEnumUnit())
end
-- ===========================================================================
---@return group
function GetLastCreatedGroup()
	bj_groupLastCreatedDest = CreateGroup()
	ForGroup(bj_lastCreatedGroup, GetLastCreatedGroupEnum)
	return bj_groupLastCreatedDest
end
-- ===========================================================================

---@param unitid integer
---@param whichPlayer player
---@param loc location
---@return unit
function CreateCorpseLocBJ(unitid, whichPlayer, loc)
	bj_lastCreatedUnit = CreateCorpse(whichPlayer, unitid, GetLocationX(loc), GetLocationY(loc), GetRandomReal(0, 360))
	return bj_lastCreatedUnit
end
-- ===========================================================================

---@param suspend boolean
---@param whichUnit unit
---@return nil
function UnitSuspendDecayBJ(suspend, whichUnit)
	UnitSuspendDecay(whichUnit, suspend)
end
-- ===========================================================================
---@return nil
function DelayedSuspendDecayStopAnimEnum()
	local enumUnit = GetEnumUnit()
	
	if (GetUnitState(enumUnit, UNIT_STATE_LIFE) <= 0) then
		SetUnitTimeScale(enumUnit, 0.0001)
	end
end
-- ===========================================================================
---@return nil
function DelayedSuspendDecayBoneEnum()
	local enumUnit = GetEnumUnit()
	
	if (GetUnitState(enumUnit, UNIT_STATE_LIFE) <= 0) then
		UnitSuspendDecay(enumUnit, true)
		SetUnitTimeScale(enumUnit, 0.0001)
	end
end
-- ===========================================================================
--  Game code explicitly sets the animation back to "decay bone" after the
--  initial corpse fades away, so we reset it now.  It's best not to show
--  off corpses thus created until after this grace period has passed.
-- 
---@return nil
function DelayedSuspendDecayFleshEnum()
	local enumUnit = GetEnumUnit()
	
	if (GetUnitState(enumUnit, UNIT_STATE_LIFE) <= 0) then
		UnitSuspendDecay(enumUnit, true)
		SetUnitTimeScale(enumUnit, 10.0)
		SetUnitAnimation(enumUnit, "decay flesh")
	end
end
-- ===========================================================================
--  Waits a short period of time to ensure that the corpse is decaying, and
--  then suspend the animation and corpse decay.
-- 
---@return nil
function DelayedSuspendDecay()
	local boneGroup
	local fleshGroup
	
	--  Switch the global unit groups over to local variables and recreate
	--  the global versions, so that this function can handle overlapping
	--  calls.
	boneGroup                 = bj_suspendDecayBoneGroup
	fleshGroup                = bj_suspendDecayFleshGroup
	bj_suspendDecayBoneGroup  = CreateGroup()
	bj_suspendDecayFleshGroup = CreateGroup()
	
	ForGroup(fleshGroup, DelayedSuspendDecayStopAnimEnum)
	ForGroup(boneGroup, DelayedSuspendDecayStopAnimEnum)
	
	TriggerSleepAction(bj_CORPSE_MAX_DEATH_TIME)
	ForGroup(fleshGroup, DelayedSuspendDecayFleshEnum)
	ForGroup(boneGroup, DelayedSuspendDecayBoneEnum)
	
	TriggerSleepAction(0.05)
	ForGroup(fleshGroup, DelayedSuspendDecayStopAnimEnum)
	
	DestroyGroup(boneGroup)
	DestroyGroup(fleshGroup)
end
-- ===========================================================================
---@return nil
function DelayedSuspendDecayCreate()
	bj_delayedSuspendDecayTrig = CreateTrigger()
	TriggerRegisterTimerExpireEvent(bj_delayedSuspendDecayTrig, bj_delayedSuspendDecayTimer)
	TriggerAddAction(bj_delayedSuspendDecayTrig, DelayedSuspendDecay)
end
-- ===========================================================================

---@param style integer
---@param unitid integer
---@param whichPlayer player
---@param loc location
---@param facing real
---@return unit
function CreatePermanentCorpseLocBJ(style, unitid, whichPlayer, loc, facing)
	bj_lastCreatedUnit = CreateCorpse(whichPlayer, unitid, GetLocationX(loc), GetLocationY(loc), facing)
	SetUnitBlendTime(bj_lastCreatedUnit, 0)
	
	if (style == bj_CORPSETYPE_FLESH) then
		SetUnitAnimation(bj_lastCreatedUnit, "decay flesh")
		GroupAddUnit(bj_suspendDecayFleshGroup, bj_lastCreatedUnit)
	elseif (style == bj_CORPSETYPE_BONE) then
		SetUnitAnimation(bj_lastCreatedUnit, "decay bone")
		GroupAddUnit(bj_suspendDecayBoneGroup, bj_lastCreatedUnit)
	else
		--  Unknown decay style - treat as skeletal.
		SetUnitAnimation(bj_lastCreatedUnit, "decay bone")
		GroupAddUnit(bj_suspendDecayBoneGroup, bj_lastCreatedUnit)
	end
	
	TimerStart(bj_delayedSuspendDecayTimer, 0.05, false, nil)
	return bj_lastCreatedUnit
end
-- ===========================================================================

---@param whichState unitstate
---@param whichUnit unit
---@return real
function GetUnitStateSwap(whichState, whichUnit)
	return GetUnitState(whichUnit, whichState)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichState unitstate
---@param whichMaxState unitstate
---@return real
function GetUnitStatePercent(whichUnit, whichState, whichMaxState)
	local value    = GetUnitState(whichUnit, whichState)
	local maxValue = GetUnitState(whichUnit, whichMaxState)
	
	--  Return 0 for null units.
	if (whichUnit == nil) or (maxValue == 0) then
		return 0.0
	end
	
	return value / maxValue * 100.0
end
-- ===========================================================================

---@param whichUnit unit
---@return real
function GetUnitLifePercent(whichUnit)
	return GetUnitStatePercent(whichUnit, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE)
end
-- ===========================================================================

---@param whichUnit unit
---@return real
function GetUnitManaPercent(whichUnit)
	return GetUnitStatePercent(whichUnit, UNIT_STATE_MANA, UNIT_STATE_MAX_MANA)
end
-- ===========================================================================

---@param whichUnit unit
---@return nil
function SelectUnitSingle(whichUnit)
	ClearSelection()
	SelectUnit(whichUnit, true)
end
-- ===========================================================================
---@return nil
function SelectGroupBJEnum()
	SelectUnit(GetEnumUnit(), true)
end
-- ===========================================================================

---@param g group
---@return nil
function SelectGroupBJ(g)
	ClearSelection()
	ForGroup(g, SelectGroupBJEnum)
end
-- ===========================================================================

---@param whichUnit unit
---@return nil
function SelectUnitAdd(whichUnit)
	SelectUnit(whichUnit, true)
end
-- ===========================================================================

---@param whichUnit unit
---@return nil
function SelectUnitRemove(whichUnit)
	SelectUnit(whichUnit, false)
end
-- ===========================================================================

---@param whichPlayer player
---@return nil
function ClearSelectionForPlayer(whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ClearSelection()
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param whichPlayer player
---@return nil
function SelectUnitForPlayerSingle(whichUnit, whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ClearSelection()
		SelectUnit(whichUnit, true)
	end
end
-- ===========================================================================

---@param g group
---@param whichPlayer player
---@return nil
function SelectGroupForPlayerBJ(g, whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ClearSelection()
		ForGroup(g, SelectGroupBJEnum)
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param whichPlayer player
---@return nil
function SelectUnitAddForPlayer(whichUnit, whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SelectUnit(whichUnit, true)
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param whichPlayer player
---@return nil
function SelectUnitRemoveForPlayer(whichUnit, whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SelectUnit(whichUnit, false)
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param newValue real
---@return nil
function SetUnitLifeBJ(whichUnit, newValue)
	SetUnitState(whichUnit, UNIT_STATE_LIFE, RMaxBJ(0, newValue))
end
-- ===========================================================================

---@param whichUnit unit
---@param newValue real
---@return nil
function SetUnitManaBJ(whichUnit, newValue)
	SetUnitState(whichUnit, UNIT_STATE_MANA, RMaxBJ(0, newValue))
end
-- ===========================================================================

---@param whichUnit unit
---@param percent real
---@return nil
function SetUnitLifePercentBJ(whichUnit, percent)
	SetUnitState(whichUnit, UNIT_STATE_LIFE, GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE) * RMaxBJ(0, percent) * 0.01)
end
-- ===========================================================================

---@param whichUnit unit
---@param percent real
---@return nil
function SetUnitManaPercentBJ(whichUnit, percent)
	SetUnitState(whichUnit, UNIT_STATE_MANA, GetUnitState(whichUnit, UNIT_STATE_MAX_MANA) * RMaxBJ(0, percent) * 0.01)
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function IsUnitDeadBJ(whichUnit)
	return GetUnitState(whichUnit, UNIT_STATE_LIFE) <= 0
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function IsUnitAliveBJ(whichUnit)
	return not IsUnitDeadBJ(whichUnit)
end
-- ===========================================================================
---@return nil
function IsUnitGroupDeadBJEnum()
	if not IsUnitDeadBJ(GetEnumUnit()) then
		bj_isUnitGroupDeadResult = false
	end
end
-- ===========================================================================
--  Returns true if every unit of the group is dead.
-- 

---@param g group
---@return boolean
function IsUnitGroupDeadBJ(g)
	--  If the user wants the group destroyed, remember that fact and clear
	--  the flag, in case it is used again in the callback.
	local wantDestroy        = bj_wantDestroyGroup
	bj_wantDestroyGroup      = false
	
	bj_isUnitGroupDeadResult = true
	ForGroup(g, IsUnitGroupDeadBJEnum)
	
	--  If the user wants the group destroyed, do so now.
	if (wantDestroy) then
		DestroyGroup(g)
	end
	return bj_isUnitGroupDeadResult
end
-- ===========================================================================
---@return nil
function IsUnitGroupEmptyBJEnum()
	bj_isUnitGroupEmptyResult = false
end
-- ===========================================================================
--  Returns true if the group contains no units.
-- 

---@param g group
---@return boolean
function IsUnitGroupEmptyBJ(g)
	--  If the user wants the group destroyed, remember that fact and clear
	--  the flag, in case it is used again in the callback.
	local wantDestroy         = bj_wantDestroyGroup
	bj_wantDestroyGroup       = false
	
	bj_isUnitGroupEmptyResult = true
	ForGroup(g, IsUnitGroupEmptyBJEnum)
	
	--  If the user wants the group destroyed, do so now.
	if (wantDestroy) then
		DestroyGroup(g)
	end
	return bj_isUnitGroupEmptyResult
end
-- ===========================================================================
---@return nil
function IsUnitGroupInRectBJEnum()
	if not RectContainsUnit(bj_isUnitGroupInRectRect, GetEnumUnit()) then
		bj_isUnitGroupInRectResult = false
	end
end
-- ===========================================================================
--  Returns true if every unit of the group is within the given rect.
-- 

---@param g group
---@param r rect
---@return boolean
function IsUnitGroupInRectBJ(g, r)
	bj_isUnitGroupInRectResult = true
	bj_isUnitGroupInRectRect   = r
	ForGroup(g, IsUnitGroupInRectBJEnum)
	return bj_isUnitGroupInRectResult
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function IsUnitHiddenBJ(whichUnit)
	return IsUnitHidden(whichUnit)
end
-- ===========================================================================

---@param whichUnit unit
---@return nil
function ShowUnitHide(whichUnit)
	ShowUnit(whichUnit, false)
end
-- ===========================================================================

---@param whichUnit unit
---@return nil
function ShowUnitShow(whichUnit)
	--  Prevent dead heroes from being unhidden.
	if (IsUnitType(whichUnit, UNIT_TYPE_HERO) and IsUnitDeadBJ(whichUnit)) then
		return
	end
	
	ShowUnit(whichUnit, true)
end
-- ===========================================================================
---@return boolean
function IssueHauntOrderAtLocBJFilter()
	return GetUnitTypeId(GetFilterUnit()) == FourCC('ngol')
end
-- ===========================================================================

---@param whichPeon unit
---@param loc location
---@return boolean
function IssueHauntOrderAtLocBJ(whichPeon, loc)
	local g        = nil
	local goldMine = nil
	
	--  Search for a gold mine within a 1-cell radius of the specified location.
	g              = CreateGroup()
	GroupEnumUnitsInRangeOfLoc(g, loc, 2 * bj_CELLWIDTH, filterIssueHauntOrderAtLocBJ)
	goldMine = FirstOfGroup(g)
	DestroyGroup(g)
	
	--  If no mine was found, abort the request.
	if (goldMine == nil) then
		return false
	end
	
	--  Issue the Haunt Gold Mine order.
	return IssueTargetOrderById(whichPeon, FourCC('ugol'), goldMine)
end
-- ===========================================================================

---@param whichPeon unit
---@param unitId integer
---@param loc location
---@return boolean
function IssueBuildOrderByIdLocBJ(whichPeon, unitId, loc)
	if (unitId == FourCC('ugol')) then
		return IssueHauntOrderAtLocBJ(whichPeon, loc)
	else
		return IssueBuildOrderById(whichPeon, unitId, GetLocationX(loc), GetLocationY(loc))
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param unitId integer
---@return boolean
function IssueTrainOrderByIdBJ(whichUnit, unitId)
	return IssueImmediateOrderById(whichUnit, unitId)
end
-- ===========================================================================

---@param g group
---@param unitId integer
---@return boolean
function GroupTrainOrderByIdBJ(g, unitId)
	return GroupImmediateOrderById(g, unitId)
end
-- ===========================================================================

---@param whichUnit unit
---@param techId integer
---@return boolean
function IssueUpgradeOrderByIdBJ(whichUnit, techId)
	return IssueImmediateOrderById(whichUnit, techId)
end
-- ===========================================================================
---@return unit
function GetAttackedUnitBJ()
	return GetTriggerUnit()
end
-- ===========================================================================

---@param whichUnit unit
---@param newHeight real
---@param rate real
---@return nil
function SetUnitFlyHeightBJ(whichUnit, newHeight, rate)
	SetUnitFlyHeight(whichUnit, newHeight, rate)
end
-- ===========================================================================

---@param whichUnit unit
---@param turnSpeed real
---@return nil
function SetUnitTurnSpeedBJ(whichUnit, turnSpeed)
	SetUnitTurnSpeed(whichUnit, turnSpeed)
end
-- ===========================================================================

---@param whichUnit unit
---@param propWindow real
---@return nil
function SetUnitPropWindowBJ(whichUnit, propWindow)
	local angle = propWindow
	if (angle <= 0) then
		angle = 1
	elseif (angle >= 360) then
		angle = 359
	end
	angle = angle * bj_DEGTORAD
	
	SetUnitPropWindow(whichUnit, angle)
end
-- ===========================================================================

---@param whichUnit unit
---@return real
function GetUnitPropWindowBJ(whichUnit)
	return GetUnitPropWindow(whichUnit) * bj_RADTODEG
end
-- ===========================================================================

---@param whichUnit unit
---@return real
function GetUnitDefaultPropWindowBJ(whichUnit)
	return GetUnitDefaultPropWindow(whichUnit)
end
-- ===========================================================================

---@param whichUnit unit
---@param blendTime real
---@return nil
function SetUnitBlendTimeBJ(whichUnit, blendTime)
	SetUnitBlendTime(whichUnit, blendTime)
end
-- ===========================================================================

---@param whichUnit unit
---@param acquireRange real
---@return nil
function SetUnitAcquireRangeBJ(whichUnit, acquireRange)
	SetUnitAcquireRange(whichUnit, acquireRange)
end
-- ===========================================================================

---@param whichUnit unit
---@param canSleep boolean
---@return nil
function UnitSetCanSleepBJ(whichUnit, canSleep)
	UnitAddSleep(whichUnit, canSleep)
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function UnitCanSleepBJ(whichUnit)
	return UnitCanSleep(whichUnit)
end
-- ===========================================================================

---@param whichUnit unit
---@return nil
function UnitWakeUpBJ(whichUnit)
	UnitWakeUp(whichUnit)
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function UnitIsSleepingBJ(whichUnit)
	return UnitIsSleeping(whichUnit)
end
-- ===========================================================================
---@return nil
function WakePlayerUnitsEnum()
	UnitWakeUp(GetEnumUnit())
end
-- ===========================================================================

---@param whichPlayer player
---@return nil
function WakePlayerUnits(whichPlayer)
	local g = CreateGroup()
	GroupEnumUnitsOfPlayer(g, whichPlayer, nil)
	ForGroup(g, WakePlayerUnitsEnum)
	DestroyGroup(g)
end
-- ===========================================================================

---@param enable boolean
---@return nil
function EnableCreepSleepBJ(enable)
	SetPlayerState(Player(PLAYER_NEUTRAL_AGGRESSIVE), PLAYER_STATE_NO_CREEP_SLEEP, IntegerTertiaryOp(enable, 0, 1))
	
	--  If we're disabling, attempt to wake any already-sleeping creeps.
	if (not enable) then
		WakePlayerUnits(Player(PLAYER_NEUTRAL_AGGRESSIVE))
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param generate boolean
---@return boolean
function UnitGenerateAlarms(whichUnit, generate)
	return UnitIgnoreAlarm(whichUnit, not generate)
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function DoesUnitGenerateAlarms(whichUnit)
	return not UnitIgnoreAlarmToggled(whichUnit)
end
-- ===========================================================================
---@return nil
function PauseAllUnitsBJEnum()
	PauseUnit(GetEnumUnit(), bj_pauseAllUnitsFlag)
end
-- ===========================================================================
--  Pause all units 

---@param pause boolean
---@return nil
function PauseAllUnitsBJ(pause)
	local index
	local indexPlayer
	local g
	
	bj_pauseAllUnitsFlag = pause
	g                    = CreateGroup()
	index                = 0
	while true do
		indexPlayer = Player(index)
		
		--  If this is a computer slot, pause/resume the AI.
		if (GetPlayerController(indexPlayer) == MAP_CONTROL_COMPUTER) then
			PauseCompAI(indexPlayer, pause)
		end
		
		--  Enumerate and unpause every unit owned by the player.
		GroupEnumUnitsOfPlayer(g, indexPlayer, nil)
		ForGroup(g, PauseAllUnitsBJEnum)
		GroupClear(g)
		
		index = index + 1
		if index == bj_MAX_PLAYER_SLOTS then break end
	end
	DestroyGroup(g)
end
-- ===========================================================================

---@param pause boolean
---@param whichUnit unit
---@return nil
function PauseUnitBJ(pause, whichUnit)
	PauseUnit(whichUnit, pause)
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function IsUnitPausedBJ(whichUnit)
	return IsUnitPaused(whichUnit)
end
-- ===========================================================================

---@param flag boolean
---@param whichUnit unit
---@return nil
function UnitPauseTimedLifeBJ(flag, whichUnit)
	UnitPauseTimedLife(whichUnit, flag)
end
-- ===========================================================================

---@param duration real
---@param buffId integer
---@param whichUnit unit
---@return nil
function UnitApplyTimedLifeBJ(duration, buffId, whichUnit)
	UnitApplyTimedLife(whichUnit, buffId, duration)
end
-- ===========================================================================

---@param share boolean
---@param whichUnit unit
---@param whichPlayer player
---@return nil
function UnitShareVisionBJ(share, whichUnit, whichPlayer)
	UnitShareVision(whichUnit, whichPlayer, share)
end
-- ===========================================================================

---@param buffType integer
---@param whichUnit unit
---@return nil
function UnitRemoveBuffsBJ(buffType, whichUnit)
	if (buffType == bj_REMOVEBUFFS_POSITIVE) then
		UnitRemoveBuffs(whichUnit, true, false)
	elseif (buffType == bj_REMOVEBUFFS_NEGATIVE) then
		UnitRemoveBuffs(whichUnit, false, true)
	elseif (buffType == bj_REMOVEBUFFS_ALL) then
		UnitRemoveBuffs(whichUnit, true, true)
	elseif (buffType == bj_REMOVEBUFFS_NONTLIFE) then
		UnitRemoveBuffsEx(whichUnit, true, true, false, false, false, true, false)
	else
		--  Unrecognized dispel type - ignore the request.
	end
end
-- ===========================================================================

---@param polarity integer
---@param resist integer
---@param whichUnit unit
---@param bTLife boolean
---@param bAura boolean
---@return nil
function UnitRemoveBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura)
	local bPos   = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_POSITIVE)
	local bNeg   = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_NEGATIVE)
	local bMagic = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_MAGIC)
	local bPhys  = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_PHYSICAL)
	
	UnitRemoveBuffsEx(whichUnit, bPos, bNeg, bMagic, bPhys, bTLife, bAura, false)
end
-- ===========================================================================

---@param polarity integer
---@param resist integer
---@param whichUnit unit
---@param bTLife boolean
---@param bAura boolean
---@return integer
function UnitCountBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura)
	local bPos   = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_POSITIVE)
	local bNeg   = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_NEGATIVE)
	local bMagic = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_MAGIC)
	local bPhys  = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_PHYSICAL)
	
	return UnitCountBuffsEx(whichUnit, bPos, bNeg, bMagic, bPhys, bTLife, bAura, false)
end
-- ===========================================================================

---@param abilityId integer
---@param whichUnit unit
---@return boolean
function UnitRemoveAbilityBJ(abilityId, whichUnit)
	return UnitRemoveAbility(whichUnit, abilityId)
end
-- ===========================================================================

---@param abilityId integer
---@param whichUnit unit
---@return boolean
function UnitAddAbilityBJ(abilityId, whichUnit)
	return UnitAddAbility(whichUnit, abilityId)
end
-- ===========================================================================

---@param whichType unittype
---@param whichUnit unit
---@return boolean
function UnitRemoveTypeBJ(whichType, whichUnit)
	return UnitRemoveType(whichUnit, whichType)
end
-- ===========================================================================

---@param whichType unittype
---@param whichUnit unit
---@return boolean
function UnitAddTypeBJ(whichType, whichUnit)
	return UnitAddType(whichUnit, whichType)
end
-- ===========================================================================

---@param permanent boolean
---@param abilityId integer
---@param whichUnit unit
---@return boolean
function UnitMakeAbilityPermanentBJ(permanent, abilityId, whichUnit)
	return UnitMakeAbilityPermanent(whichUnit, permanent, abilityId)
end
-- ===========================================================================

---@param whichUnit unit
---@param exploded boolean
---@return nil
function SetUnitExplodedBJ(whichUnit, exploded)
	SetUnitExploded(whichUnit, exploded)
end
-- ===========================================================================

---@param whichUnit unit
---@return nil
function ExplodeUnitBJ(whichUnit)
	SetUnitExploded(whichUnit, true)
	KillUnit(whichUnit)
end
-- ===========================================================================
---@return unit
function GetTransportUnitBJ()
	return GetTransportUnit()
end
-- ===========================================================================
---@return unit
function GetLoadedUnitBJ()
	return GetLoadedUnit()
end
-- ===========================================================================

---@param whichUnit unit
---@param whichTransport unit
---@return boolean
function IsUnitInTransportBJ(whichUnit, whichTransport)
	return IsUnitInTransport(whichUnit, whichTransport)
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function IsUnitLoadedBJ(whichUnit)
	return IsUnitLoaded(whichUnit)
end
-- ===========================================================================

---@param whichUnit unit
---@return boolean
function IsUnitIllusionBJ(whichUnit)
	return IsUnitIllusion(whichUnit)
end
-- ===========================================================================
--  This attempts to replace a unit with a new unit type by creating a new
--  unit of the desired type using the old unit's location, facing, etc.
-- 

---@param whichUnit unit
---@param newUnitId integer
---@param unitStateMethod integer
---@return unit
function ReplaceUnitBJ(whichUnit, newUnitId, unitStateMethod)
	local oldUnit = whichUnit
	local newUnit
	local wasHidden
	local index
	local indexItem
	local oldRatio
	
	--  If we have bogus data, don't attempt the replace.
	if (oldUnit == nil) then
		bj_lastReplacedUnit = oldUnit
		return oldUnit
	end
	
	--  Hide the original unit.
	wasHidden = IsUnitHidden(oldUnit)
	ShowUnit(oldUnit, false)
	
	--  Create the replacement unit.
	if (newUnitId == FourCC('ugol')) then
		newUnit = CreateBlightedGoldmine(GetOwningPlayer(oldUnit), GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
	else
		newUnit = CreateUnit(GetOwningPlayer(oldUnit), newUnitId, GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
	end
	
	--  Set the unit's life and mana according to the requested method.
	if (unitStateMethod == bj_UNIT_STATE_METHOD_RELATIVE) then
		--  Set the replacement's current/max life ratio to that of the old unit.
		--  If both units have mana, do the same for mana.
		if (GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE) > 0) then
			oldRatio = GetUnitState(oldUnit, UNIT_STATE_LIFE) / GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE)
			SetUnitState(newUnit, UNIT_STATE_LIFE, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
		end
		
		if (GetUnitState(oldUnit, UNIT_STATE_MAX_MANA) > 0) and (GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0) then
			oldRatio = GetUnitState(oldUnit, UNIT_STATE_MANA) / GetUnitState(oldUnit, UNIT_STATE_MAX_MANA)
			SetUnitState(newUnit, UNIT_STATE_MANA, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
		end
	elseif (unitStateMethod == bj_UNIT_STATE_METHOD_ABSOLUTE) then
		--  Set the replacement's current life to that of the old unit.
		--  If the new unit has mana, do the same for mana.
		SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(oldUnit, UNIT_STATE_LIFE))
		if (GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0) then
			SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(oldUnit, UNIT_STATE_MANA))
		end
	elseif (unitStateMethod == bj_UNIT_STATE_METHOD_DEFAULTS) then
		--  The newly created unit should already have default life and mana.
	elseif (unitStateMethod == bj_UNIT_STATE_METHOD_MAXIMUM) then
		--  Use max life and mana.
		SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
		SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
	else
		--  Unrecognized unit state method - ignore the request.
	end
	
	--  Mirror properties of the old unit onto the new unit.
	-- call PauseUnit(newUnit, IsUnitPaused(oldUnit))
	SetResourceAmount(newUnit, GetResourceAmount(oldUnit))
	
	--  If both the old and new units are heroes, handle their hero info.
	if (IsUnitType(oldUnit, UNIT_TYPE_HERO) and IsUnitType(newUnit, UNIT_TYPE_HERO)) then
		SetHeroXP(newUnit, GetHeroXP(oldUnit), false)
		
		index = 0
		while true do
			indexItem = UnitItemInSlot(oldUnit, index)
			if (indexItem ~= nil) then
				UnitRemoveItem(oldUnit, indexItem)
				UnitAddItem(newUnit, indexItem)
			end
			
			index = index + 1
			if index >= bj_MAX_INVENTORY then break end
		end
	end
	
	--  Remove or kill the original unit.  It is sometimes unsafe to remove
	--  hidden units, so kill the original unit if it was previously hidden.
	if wasHidden then
		KillUnit(oldUnit)
		RemoveUnit(oldUnit)
	else
		RemoveUnit(oldUnit)
	end
	
	bj_lastReplacedUnit = newUnit
	return newUnit
end
-- ===========================================================================
---@return unit
function GetLastReplacedUnitBJ()
	return bj_lastReplacedUnit
end
-- ===========================================================================

---@param whichUnit unit
---@param loc location
---@param facing real
---@return nil
function SetUnitPositionLocFacingBJ(whichUnit, loc, facing)
	SetUnitPositionLoc(whichUnit, loc)
	SetUnitFacing(whichUnit, facing)
end
-- ===========================================================================

---@param whichUnit unit
---@param loc location
---@param lookAt location
---@return nil
function SetUnitPositionLocFacingLocBJ(whichUnit, loc, lookAt)
	SetUnitPositionLoc(whichUnit, loc)
	SetUnitFacing(whichUnit, AngleBetweenPoints(loc, lookAt))
end
-- ===========================================================================

---@param itemId integer
---@param whichUnit unit
---@param currentStock integer
---@param stockMax integer
---@return nil
function AddItemToStockBJ(itemId, whichUnit, currentStock, stockMax)
	AddItemToStock(whichUnit, itemId, currentStock, stockMax)
end
-- ===========================================================================

---@param unitId integer
---@param whichUnit unit
---@param currentStock integer
---@param stockMax integer
---@return nil
function AddUnitToStockBJ(unitId, whichUnit, currentStock, stockMax)
	AddUnitToStock(whichUnit, unitId, currentStock, stockMax)
end
-- ===========================================================================

---@param itemId integer
---@param whichUnit unit
---@return nil
function RemoveItemFromStockBJ(itemId, whichUnit)
	RemoveItemFromStock(whichUnit, itemId)
end
-- ===========================================================================

---@param unitId integer
---@param whichUnit unit
---@return nil
function RemoveUnitFromStockBJ(unitId, whichUnit)
	RemoveUnitFromStock(whichUnit, unitId)
end
-- ===========================================================================

---@param enable boolean
---@param whichUnit unit
---@return nil
function SetUnitUseFoodBJ(enable, whichUnit)
	SetUnitUseFood(whichUnit, enable)
end
-- ===========================================================================

---@param whichUnit unit
---@param delay real
---@param radius real
---@param loc location
---@param amount real
---@param whichAttack attacktype
---@param whichDamage damagetype
---@return boolean
function UnitDamagePointLoc(whichUnit, delay, radius, loc, amount, whichAttack, whichDamage)
	return UnitDamagePoint(whichUnit, delay, radius, GetLocationX(loc), GetLocationY(loc), amount, true, false, whichAttack, whichDamage, WEAPON_TYPE_WHOKNOWS)
end
-- ===========================================================================

---@param whichUnit unit
---@param target unit
---@param amount real
---@param whichAttack attacktype
---@param whichDamage damagetype
---@return boolean
function UnitDamageTargetBJ(whichUnit, target, amount, whichAttack, whichDamage)
	return UnitDamageTarget(whichUnit, target, amount, true, false, whichAttack, whichDamage, WEAPON_TYPE_WHOKNOWS)
end
-- ***************************************************************************
-- 
-- *  Destructable Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param objectid integer
---@param loc location
---@param facing real
---@param scale real
---@param variation integer
---@return destructable
function CreateDestructableLoc(objectid, loc, facing, scale, variation)
	bj_lastCreatedDestructable = CreateDestructable(objectid, GetLocationX(loc), GetLocationY(loc), facing, scale, variation)
	return bj_lastCreatedDestructable
end
-- ===========================================================================

---@param objectid integer
---@param loc location
---@param facing real
---@param scale real
---@param variation integer
---@return destructable
function CreateDeadDestructableLocBJ(objectid, loc, facing, scale, variation)
	bj_lastCreatedDestructable = CreateDeadDestructable(objectid, GetLocationX(loc), GetLocationY(loc), facing, scale, variation)
	return bj_lastCreatedDestructable
end
-- ===========================================================================
---@return destructable
function GetLastCreatedDestructable()
	return bj_lastCreatedDestructable
end
-- ===========================================================================

---@param flag boolean
---@param d destructable
---@return nil
function ShowDestructableBJ(flag, d)
	ShowDestructable(d, flag)
end
-- ===========================================================================

---@param d destructable
---@param flag boolean
---@return nil
function SetDestructableInvulnerableBJ(d, flag)
	SetDestructableInvulnerable(d, flag)
end
-- ===========================================================================

---@param d destructable
---@return boolean
function IsDestructableInvulnerableBJ(d)
	return IsDestructableInvulnerable(d)
end
-- ===========================================================================

---@param whichDestructable destructable
---@return location
function GetDestructableLoc(whichDestructable)
	return Location(GetDestructableX(whichDestructable), GetDestructableY(whichDestructable))
end
-- ===========================================================================

---@param r rect
---@param actionFunc code
---@return nil
function EnumDestructablesInRectAll(r, actionFunc)
	EnumDestructablesInRect(r, nil, actionFunc)
end
-- ===========================================================================
---@return boolean
function EnumDestructablesInCircleBJFilter()
	local destLoc = GetDestructableLoc(GetFilterDestructable())
	local result
	
	result        = DistanceBetweenPoints(destLoc, bj_enumDestructableCenter) <= bj_enumDestructableRadius
	RemoveLocation(destLoc)
	return result
end
-- ===========================================================================

---@param d destructable
---@return boolean
function IsDestructableDeadBJ(d)
	return GetDestructableLife(d) <= 0
end
-- ===========================================================================

---@param d destructable
---@return boolean
function IsDestructableAliveBJ(d)
	return not IsDestructableDeadBJ(d)
end
-- ===========================================================================
--  See GroupPickRandomUnitEnum for the details of this algorithm.
-- 
---@return nil
function RandomDestructableInRectBJEnum()
	bj_destRandomConsidered = bj_destRandomConsidered + 1
	if (GetRandomInt(1, bj_destRandomConsidered) == 1) then
		bj_destRandomCurrentPick = GetEnumDestructable()
	end
end
-- ===========================================================================
--  Picks a random destructable from within a rect, matching a condition
-- 

---@param r rect
---@param filter boolexpr
---@return destructable
function RandomDestructableInRectBJ(r, filter)
	bj_destRandomConsidered  = 0
	bj_destRandomCurrentPick = nil
	EnumDestructablesInRect(r, filter, RandomDestructableInRectBJEnum)
	DestroyBoolExpr(filter)
	return bj_destRandomCurrentPick
end
-- ===========================================================================
--  Picks a random destructable from within a rect
-- 

---@param r rect
---@return destructable
function RandomDestructableInRectSimpleBJ(r)
	return RandomDestructableInRectBJ(r, nil)
end
-- ===========================================================================
--  Enumerates within a rect, with a filter to narrow the enumeration down
--  objects within a circular area.
-- 

---@param radius real
---@param loc location
---@param actionFunc code
---@return nil
function EnumDestructablesInCircleBJ(radius, loc, actionFunc)
	local r
	
	if (radius >= 0) then
		bj_enumDestructableCenter = loc
		bj_enumDestructableRadius = radius
		r                         = GetRectFromCircleBJ(loc, radius)
		EnumDestructablesInRect(r, filterEnumDestructablesInCircleBJ, actionFunc)
		RemoveRect(r)
	end
end
-- ===========================================================================

---@param d destructable
---@param percent real
---@return nil
function SetDestructableLifePercentBJ(d, percent)
	SetDestructableLife(d, GetDestructableMaxLife(d) * percent * 0.01)
end
-- ===========================================================================

---@param d destructable
---@param max real
---@return nil
function SetDestructableMaxLifeBJ(d, max)
	SetDestructableMaxLife(d, max)
end
-- ===========================================================================

---@param gateOperation integer
---@param d destructable
---@return nil
function ModifyGateBJ(gateOperation, d)
	if (gateOperation == bj_GATEOPERATION_CLOSE) then
		if (GetDestructableLife(d) <= 0) then
			DestructableRestoreLife(d, GetDestructableMaxLife(d), true)
		end
		SetDestructableAnimation(d, "stand")
	elseif (gateOperation == bj_GATEOPERATION_OPEN) then
		if (GetDestructableLife(d) > 0) then
			KillDestructable(d)
		end
		SetDestructableAnimation(d, "death alternate")
	elseif (gateOperation == bj_GATEOPERATION_DESTROY) then
		if (GetDestructableLife(d) > 0) then
			KillDestructable(d)
		end
		SetDestructableAnimation(d, "death")
	else
		--  Unrecognized gate state - ignore the request.
	end
end
-- ===========================================================================
--  Determine the elevator's height from its occlusion height.
-- 

---@param d destructable
---@return integer
function GetElevatorHeight(d)
	local height
	
	height = 1 + R2I(GetDestructableOccluderHeight(d) / bj_CLIFFHEIGHT)
	if (height < 1) or (height > 3) then
		height = 1
	end
	return height
end
-- ===========================================================================
--  To properly animate an elevator, we must know not only what height we
--  want to change to, but also what height we are currently at.  This code
--  determines the elevator's current height from its occlusion height.
--  Arbitrarily changing an elevator's occlusion height is thus inadvisable.
-- 

---@param d destructable
---@param newHeight integer
---@return nil
function ChangeElevatorHeight(d, newHeight)
	local oldHeight
	
	--  Cap the new height within the supported range.
	newHeight = IMaxBJ(1, newHeight)
	newHeight = IMinBJ(3, newHeight)
	
	--  Find out what height the elevator is already at.
	oldHeight = GetElevatorHeight(d)
	
	--  Set the elevator's occlusion height.
	SetDestructableOccluderHeight(d, bj_CLIFFHEIGHT * (newHeight - 1))
	
	if (newHeight == 1) then
		if (oldHeight == 2) then
			SetDestructableAnimation(d, "birth")
			QueueDestructableAnimation(d, "stand")
		elseif (oldHeight == 3) then
			SetDestructableAnimation(d, "birth third")
			QueueDestructableAnimation(d, "stand")
		else
			--  Unrecognized old height - snap to new height.
			SetDestructableAnimation(d, "stand")
		end
	elseif (newHeight == 2) then
		if (oldHeight == 1) then
			SetDestructableAnimation(d, "death")
			QueueDestructableAnimation(d, "stand second")
		elseif (oldHeight == 3) then
			SetDestructableAnimation(d, "birth second")
			QueueDestructableAnimation(d, "stand second")
		else
			--  Unrecognized old height - snap to new height.
			SetDestructableAnimation(d, "stand second")
		end
	elseif (newHeight == 3) then
		if (oldHeight == 1) then
			SetDestructableAnimation(d, "death third")
			QueueDestructableAnimation(d, "stand third")
		elseif (oldHeight == 2) then
			SetDestructableAnimation(d, "death second")
			QueueDestructableAnimation(d, "stand third")
		else
			--  Unrecognized old height - snap to new height.
			SetDestructableAnimation(d, "stand third")
		end
	else
		--  Unrecognized new height - ignore the request.
	end
end
-- ===========================================================================
--  Grab the unit and throw his own coords in his face, forcing him to push
--  and shove until he finds a spot where noone will bother him.
-- 
---@return nil
function NudgeUnitsInRectEnum()
	local nudgee = GetEnumUnit()
	
	SetUnitPosition(nudgee, GetUnitX(nudgee), GetUnitY(nudgee))
end
-- ===========================================================================
---@return nil
function NudgeItemsInRectEnum()
	local nudgee = GetEnumItem()
	
	SetItemPosition(nudgee, GetItemX(nudgee), GetItemY(nudgee))
end
-- ===========================================================================
--  Nudge the items and units within a given rect ever so gently, so as to
--  encourage them to find locations where they can peacefully coexist with
--  pathing restrictions and live happy, fruitful lives.
-- 

---@param nudgeArea rect
---@return nil
function NudgeObjectsInRect(nudgeArea)
	local g
	
	g = CreateGroup()
	GroupEnumUnitsInRect(g, nudgeArea, nil)
	ForGroup(g, NudgeUnitsInRectEnum)
	DestroyGroup(g)
	
	EnumItemsInRect(nudgeArea, nil, NudgeItemsInRectEnum)
end
-- ===========================================================================
---@return nil
function NearbyElevatorExistsEnum()
	local d     = GetEnumDestructable()
	local dType = GetDestructableTypeId(d)
	
	if (dType == bj_ELEVATOR_CODE01) or (dType == bj_ELEVATOR_CODE02) then
		bj_elevatorNeighbor = d
	end
end
-- ===========================================================================

---@param x real
---@param y real
---@return boolean
function NearbyElevatorExists(x, y)
	local findThreshold = 32
	local r
	
	--  If another elevator is overlapping this one, ignore the wall.
	r                   = Rect(x - findThreshold, y - findThreshold, x + findThreshold, y + findThreshold)
	bj_elevatorNeighbor = nil
	EnumDestructablesInRect(r, nil, NearbyElevatorExistsEnum)
	RemoveRect(r)
	
	return bj_elevatorNeighbor ~= nil
end
-- ===========================================================================
---@return nil
function FindElevatorWallBlockerEnum()
	bj_elevatorWallBlocker = GetEnumDestructable()
end
-- ===========================================================================
--  This toggles pathing on or off for one wall of an elevator by killing
--  or reviving a pathing blocker at the appropriate location (and creating
--  the pathing blocker in the first place, if it does not yet exist).
-- 

---@param x real
---@param y real
---@param facing real
---@param open boolean
---@return nil
function ChangeElevatorWallBlocker(x, y, facing, open)
	local blocker          = nil
	local findThreshold    = 32
	local nudgeLength      = 4.25 * bj_CELLWIDTH
	local nudgeWidth       = 1.25 * bj_CELLWIDTH
	local r
	
	--  Search for the pathing blocker within the general area.
	r                      = Rect(x - findThreshold, y - findThreshold, x + findThreshold, y + findThreshold)
	bj_elevatorWallBlocker = nil
	EnumDestructablesInRect(r, nil, FindElevatorWallBlockerEnum)
	RemoveRect(r)
	blocker = bj_elevatorWallBlocker
	
	--  Ensure that the blocker exists.
	if (blocker == nil) then
		blocker = CreateDeadDestructable(bj_ELEVATOR_BLOCKER_CODE, x, y, facing, 1, 0)
	elseif (GetDestructableTypeId(blocker) ~= bj_ELEVATOR_BLOCKER_CODE) then
		--  If a different destructible exists in the blocker's spot, ignore
		--  the request.  (Two destructibles cannot occupy the same location
		--  on the map, so we cannot create an elevator blocker here.)
		return
	end
	
	if (open) then
		--  Ensure that the blocker is dead.
		if (GetDestructableLife(blocker) > 0) then
			KillDestructable(blocker)
		end
	else
		--  Ensure that the blocker is alive.
		if (GetDestructableLife(blocker) <= 0) then
			DestructableRestoreLife(blocker, GetDestructableMaxLife(blocker), false)
		end
		
		--  Nudge any objects standing in the blocker's way.
		if (facing == 0) then
			r = Rect(x - nudgeWidth / 2, y - nudgeLength / 2, x + nudgeWidth / 2, y + nudgeLength / 2)
			NudgeObjectsInRect(r)
			RemoveRect(r)
		elseif (facing == 90) then
			r = Rect(x - nudgeLength / 2, y - nudgeWidth / 2, x + nudgeLength / 2, y + nudgeWidth / 2)
			NudgeObjectsInRect(r)
			RemoveRect(r)
		else
			--  Unrecognized blocker angle - don't nudge anything.
		end
	end
end
-- ===========================================================================

---@param open boolean
---@param walls integer
---@param d destructable
---@return nil
function ChangeElevatorWalls(open, walls, d)
	local x              = GetDestructableX(d)
	local y              = GetDestructableY(d)
	local distToBlocker  = 192
	local distToNeighbor = 256
	
	if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_EAST) then
		if (not NearbyElevatorExists(x + distToNeighbor, y)) then
			ChangeElevatorWallBlocker(x + distToBlocker, y, 0, open)
		end
	end
	
	if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_NORTH) then
		if (not NearbyElevatorExists(x, y + distToNeighbor)) then
			ChangeElevatorWallBlocker(x, y + distToBlocker, 90, open)
		end
	end
	
	if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_SOUTH) then
		if (not NearbyElevatorExists(x, y - distToNeighbor)) then
			ChangeElevatorWallBlocker(x, y - distToBlocker, 90, open)
		end
	end
	
	if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_WEST) then
		if (not NearbyElevatorExists(x - distToNeighbor, y)) then
			ChangeElevatorWallBlocker(x - distToBlocker, y, 0, open)
		end
	end
end
-- ***************************************************************************
-- 
-- *  Neutral Building Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param activate boolean
---@param waygate unit
---@return nil
function WaygateActivateBJ(activate, waygate)
	WaygateActivate(waygate, activate)
end
-- ===========================================================================

---@param waygate unit
---@return boolean
function WaygateIsActiveBJ(waygate)
	return WaygateIsActive(waygate)
end
-- ===========================================================================

---@param waygate unit
---@param loc location
---@return nil
function WaygateSetDestinationLocBJ(waygate, loc)
	WaygateSetDestination(waygate, GetLocationX(loc), GetLocationY(loc))
end
-- ===========================================================================

---@param waygate unit
---@return location
function WaygateGetDestinationLocBJ(waygate)
	return Location(WaygateGetDestinationX(waygate), WaygateGetDestinationY(waygate))
end
-- ===========================================================================

---@param flag boolean
---@param whichUnit unit
---@return nil
function UnitSetUsesAltIconBJ(flag, whichUnit)
	UnitSetUsesAltIcon(whichUnit, flag)
end
-- ***************************************************************************
-- 
-- *  UI Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param whichPlayer player
---@param key string
---@return nil
function ForceUIKeyBJ(whichPlayer, key)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ForceUIKey(key)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@return nil
function ForceUICancelBJ(whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ForceUICancel()
	end
end
-- ***************************************************************************
-- 
-- *  Group and Force Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param whichGroup group
---@param callback code
---@return nil
function ForGroupBJ(whichGroup, callback)
	--  If the user wants the group destroyed, remember that fact and clear
	--  the flag, in case it is used again in the callback.
	local wantDestroy   = bj_wantDestroyGroup
	bj_wantDestroyGroup = false
	
	ForGroup(whichGroup, callback)
	
	--  If the user wants the group destroyed, do so now.
	if (wantDestroy) then
		DestroyGroup(whichGroup)
	end
end
-- ===========================================================================

---@param whichUnit unit
---@param whichGroup group
---@return nil
function GroupAddUnitSimple(whichUnit, whichGroup)
	GroupAddUnit(whichGroup, whichUnit)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichGroup group
---@return nil
function GroupRemoveUnitSimple(whichUnit, whichGroup)
	GroupRemoveUnit(whichGroup, whichUnit)
end
-- ===========================================================================
---@return nil
function GroupAddGroupEnum()
	GroupAddUnit(bj_groupAddGroupDest, GetEnumUnit())
end
-- ===========================================================================

---@param sourceGroup group
---@param destGroup group
---@return nil
function GroupAddGroup(sourceGroup, destGroup)
	--  If the user wants the group destroyed, remember that fact and clear
	--  the flag, in case it is used again in the callback.
	local wantDestroy    = bj_wantDestroyGroup
	bj_wantDestroyGroup  = false
	
	bj_groupAddGroupDest = destGroup
	ForGroup(sourceGroup, GroupAddGroupEnum)
	
	--  If the user wants the group destroyed, do so now.
	if (wantDestroy) then
		DestroyGroup(sourceGroup)
	end
end
-- ===========================================================================
---@return nil
function GroupRemoveGroupEnum()
	GroupRemoveUnit(bj_groupRemoveGroupDest, GetEnumUnit())
end
-- ===========================================================================

---@param sourceGroup group
---@param destGroup group
---@return nil
function GroupRemoveGroup(sourceGroup, destGroup)
	--  If the user wants the group destroyed, remember that fact and clear
	--  the flag, in case it is used again in the callback.
	local wantDestroy       = bj_wantDestroyGroup
	bj_wantDestroyGroup     = false
	
	bj_groupRemoveGroupDest = destGroup
	ForGroup(sourceGroup, GroupRemoveGroupEnum)
	
	--  If the user wants the group destroyed, do so now.
	if (wantDestroy) then
		DestroyGroup(sourceGroup)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param whichForce force
---@return nil
function ForceAddPlayerSimple(whichPlayer, whichForce)
	ForceAddPlayer(whichForce, whichPlayer)
end
-- ===========================================================================

---@param whichPlayer player
---@param whichForce force
---@return nil
function ForceRemovePlayerSimple(whichPlayer, whichForce)
	ForceRemovePlayer(whichForce, whichPlayer)
end
-- ===========================================================================
--  Consider each unit, one at a time, keeping a "current pick".   Once all units
--  are considered, this "current pick" will be the resulting random unit.
-- 
--  The chance of picking a given unit over the "current pick" is 1/N, where N is
--  the number of units considered thusfar (including the current consideration).
-- 
---@return nil
function GroupPickRandomUnitEnum()
	bj_groupRandomConsidered = bj_groupRandomConsidered + 1
	if (GetRandomInt(1, bj_groupRandomConsidered) == 1) then
		bj_groupRandomCurrentPick = GetEnumUnit()
	end
end
-- ===========================================================================
--  Picks a random unit from a group.
-- 

---@param whichGroup group
---@return unit
function GroupPickRandomUnit(whichGroup)
	--  If the user wants the group destroyed, remember that fact and clear
	--  the flag, in case it is used again in the callback.
	local wantDestroy         = bj_wantDestroyGroup
	bj_wantDestroyGroup       = false
	
	bj_groupRandomConsidered  = 0
	bj_groupRandomCurrentPick = nil
	ForGroup(whichGroup, GroupPickRandomUnitEnum)
	
	--  If the user wants the group destroyed, do so now.
	if (wantDestroy) then
		DestroyGroup(whichGroup)
	end
	return bj_groupRandomCurrentPick
end
-- ===========================================================================
--  See GroupPickRandomUnitEnum for the details of this algorithm.
-- 
---@return nil
function ForcePickRandomPlayerEnum()
	bj_forceRandomConsidered = bj_forceRandomConsidered + 1
	if (GetRandomInt(1, bj_forceRandomConsidered) == 1) then
		bj_forceRandomCurrentPick = GetEnumPlayer()
	end
end
-- ===========================================================================
--  Picks a random player from a force.
-- 

---@param whichForce force
---@return player
function ForcePickRandomPlayer(whichForce)
	bj_forceRandomConsidered  = 0
	bj_forceRandomCurrentPick = nil
	ForForce(whichForce, ForcePickRandomPlayerEnum)
	return bj_forceRandomCurrentPick
end
-- ===========================================================================

---@param whichPlayer player
---@param enumFilter boolexpr
---@param enumAction code
---@return nil
function EnumUnitsSelected(whichPlayer, enumFilter, enumAction)
	local g = CreateGroup()
	SyncSelections()
	GroupEnumUnitsSelected(g, whichPlayer, enumFilter)
	DestroyBoolExpr(enumFilter)
	ForGroup(g, enumAction)
	DestroyGroup(g)
end
-- ===========================================================================

---@param r rect
---@param filter boolexpr
---@return group
function GetUnitsInRectMatching(r, filter)
	local g = CreateGroup()
	GroupEnumUnitsInRect(g, r, filter)
	DestroyBoolExpr(filter)
	return g
end
-- ===========================================================================

---@param r rect
---@return group
function GetUnitsInRectAll(r)
	return GetUnitsInRectMatching(r, nil)
end
-- ===========================================================================
---@return boolean
function GetUnitsInRectOfPlayerFilter()
	return GetOwningPlayer(GetFilterUnit()) == bj_groupEnumOwningPlayer
end
-- ===========================================================================

---@param r rect
---@param whichPlayer player
---@return group
function GetUnitsInRectOfPlayer(r, whichPlayer)
	local g                  = CreateGroup()
	bj_groupEnumOwningPlayer = whichPlayer
	GroupEnumUnitsInRect(g, r, filterGetUnitsInRectOfPlayer)
	return g
end
-- ===========================================================================

---@param radius real
---@param whichLocation location
---@param filter boolexpr
---@return group
function GetUnitsInRangeOfLocMatching(radius, whichLocation, filter)
	local g = CreateGroup()
	GroupEnumUnitsInRangeOfLoc(g, whichLocation, radius, filter)
	DestroyBoolExpr(filter)
	return g
end
-- ===========================================================================

---@param radius real
---@param whichLocation location
---@return group
function GetUnitsInRangeOfLocAll(radius, whichLocation)
	return GetUnitsInRangeOfLocMatching(radius, whichLocation, nil)
end
-- ===========================================================================
---@return boolean
function GetUnitsOfTypeIdAllFilter()
	return GetUnitTypeId(GetFilterUnit()) == bj_groupEnumTypeId
end
-- ===========================================================================

---@param unitid integer
---@return group
function GetUnitsOfTypeIdAll(unitid)
	local result = CreateGroup()
	local g      = CreateGroup()
	local index
	
	index        = 0
	while true do
		bj_groupEnumTypeId = unitid
		GroupClear(g)
		GroupEnumUnitsOfPlayer(g, Player(index), filterGetUnitsOfTypeIdAll)
		GroupAddGroup(g, result)
		
		index = index + 1
		if index == bj_MAX_PLAYER_SLOTS then break end
	end
	DestroyGroup(g)
	
	return result
end
-- ===========================================================================

---@param whichPlayer player
---@param filter boolexpr
---@return group
function GetUnitsOfPlayerMatching(whichPlayer, filter)
	local g = CreateGroup()
	GroupEnumUnitsOfPlayer(g, whichPlayer, filter)
	DestroyBoolExpr(filter)
	return g
end
-- ===========================================================================

---@param whichPlayer player
---@return group
function GetUnitsOfPlayerAll(whichPlayer)
	return GetUnitsOfPlayerMatching(whichPlayer, nil)
end
-- ===========================================================================
---@return boolean
function GetUnitsOfPlayerAndTypeIdFilter()
	return GetUnitTypeId(GetFilterUnit()) == bj_groupEnumTypeId
end
-- ===========================================================================

---@param whichPlayer player
---@param unitid integer
---@return group
function GetUnitsOfPlayerAndTypeId(whichPlayer, unitid)
	local g            = CreateGroup()
	bj_groupEnumTypeId = unitid
	GroupEnumUnitsOfPlayer(g, whichPlayer, filterGetUnitsOfPlayerAndTypeId)
	return g
end
-- ===========================================================================

---@param whichPlayer player
---@return group
function GetUnitsSelectedAll(whichPlayer)
	local g = CreateGroup()
	SyncSelections()
	GroupEnumUnitsSelected(g, whichPlayer, nil)
	return g
end
-- ===========================================================================

---@param whichPlayer player
---@return force
function GetForceOfPlayer(whichPlayer)
	local f = CreateForce()
	ForceAddPlayer(f, whichPlayer)
	return f
end
-- ===========================================================================
---@return force
function GetPlayersAll()
	return bj_FORCE_ALL_PLAYERS
end
-- ===========================================================================

---@param whichControl mapcontrol
---@return force
function GetPlayersByMapControl(whichControl)
	local f     = CreateForce()
	local playerIndex
	local indexPlayer
	
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		if GetPlayerController(indexPlayer) == whichControl then
			ForceAddPlayer(f, indexPlayer)
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYER_SLOTS then break end
	end
	
	return f
end
-- ===========================================================================

---@param whichPlayer player
---@return force
function GetPlayersAllies(whichPlayer)
	local f = CreateForce()
	ForceEnumAllies(f, whichPlayer, nil)
	return f
end
-- ===========================================================================

---@param whichPlayer player
---@return force
function GetPlayersEnemies(whichPlayer)
	local f = CreateForce()
	ForceEnumEnemies(f, whichPlayer, nil)
	return f
end
-- ===========================================================================

---@param filter boolexpr
---@return force
function GetPlayersMatching(filter)
	local f = CreateForce()
	ForceEnumPlayers(f, filter)
	DestroyBoolExpr(filter)
	return f
end
-- ===========================================================================
---@return nil
function CountUnitsInGroupEnum()
	bj_groupCountUnits = bj_groupCountUnits + 1
end
-- ===========================================================================

---@param g group
---@return integer
function CountUnitsInGroup(g)
	--  If the user wants the group destroyed, remember that fact and clear
	--  the flag, in case it is used again in the callback.
	local wantDestroy   = bj_wantDestroyGroup
	bj_wantDestroyGroup = false
	
	bj_groupCountUnits  = 0
	ForGroup(g, CountUnitsInGroupEnum)
	
	--  If the user wants the group destroyed, do so now.
	if (wantDestroy) then
		DestroyGroup(g)
	end
	return bj_groupCountUnits
end
-- ===========================================================================
---@return nil
function CountPlayersInForceEnum()
	bj_forceCountPlayers = bj_forceCountPlayers + 1
end
-- ===========================================================================

---@param f force
---@return integer
function CountPlayersInForceBJ(f)
	bj_forceCountPlayers = 0
	ForForce(f, CountPlayersInForceEnum)
	return bj_forceCountPlayers
end
-- ===========================================================================
---@return nil
function GetRandomSubGroupEnum()
	if (bj_randomSubGroupWant > 0) then
		if (bj_randomSubGroupWant >= bj_randomSubGroupTotal) or (GetRandomReal(0, 1) < bj_randomSubGroupChance) then
			--  We either need every remaining unit, or the unit passed its chance check.
			GroupAddUnit(bj_randomSubGroupGroup, GetEnumUnit())
			bj_randomSubGroupWant = bj_randomSubGroupWant - 1
		end
	end
	bj_randomSubGroupTotal = bj_randomSubGroupTotal - 1
end
-- ===========================================================================

---@param count integer
---@param sourceGroup group
---@return group
function GetRandomSubGroup(count, sourceGroup)
	local g                = CreateGroup()
	
	bj_randomSubGroupGroup = g
	bj_randomSubGroupWant  = count
	bj_randomSubGroupTotal = CountUnitsInGroup(sourceGroup)
	
	if (bj_randomSubGroupWant <= 0 or bj_randomSubGroupTotal <= 0) then
		return g
	end
	
	bj_randomSubGroupChance = I2R(bj_randomSubGroupWant) / I2R(bj_randomSubGroupTotal)
	ForGroup(sourceGroup, GetRandomSubGroupEnum)
	return g
end
-- ===========================================================================
---@return boolean
function LivingPlayerUnitsOfTypeIdFilter()
	local filterUnit = GetFilterUnit()
	return IsUnitAliveBJ(filterUnit) and GetUnitTypeId(filterUnit) == bj_livingPlayerUnitsTypeId
end
-- ===========================================================================

---@param unitId integer
---@param whichPlayer player
---@return integer
function CountLivingPlayerUnitsOfTypeId(unitId, whichPlayer)
	local g
	local matchedCount
	
	g                          = CreateGroup()
	bj_livingPlayerUnitsTypeId = unitId
	GroupEnumUnitsOfPlayer(g, whichPlayer, filterLivingPlayerUnitsOfTypeId)
	matchedCount = CountUnitsInGroup(g)
	DestroyGroup(g)
	
	return matchedCount
end
-- ***************************************************************************
-- 
-- *  Animation Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param whichUnit unit
---@return nil
function ResetUnitAnimation(whichUnit)
	SetUnitAnimation(whichUnit, "stand")
end
-- ===========================================================================

---@param whichUnit unit
---@param percentScale real
---@return nil
function SetUnitTimeScalePercent(whichUnit, percentScale)
	SetUnitTimeScale(whichUnit, percentScale * 0.01)
end
-- ===========================================================================

---@param whichUnit unit
---@param percentScaleX real
---@param percentScaleY real
---@param percentScaleZ real
---@return nil
function SetUnitScalePercent(whichUnit, percentScaleX, percentScaleY, percentScaleZ)
	SetUnitScale(whichUnit, percentScaleX * 0.01, percentScaleY * 0.01, percentScaleZ * 0.01)
end
-- ===========================================================================
--  This version differs from the common.j interface in that the alpha value
--  is reversed so as to be displayed as transparency, and all four parameters
--  are treated as percentages rather than bytes.
-- 

---@param whichUnit unit
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function SetUnitVertexColorBJ(whichUnit, red, green, blue, transparency)
	SetUnitVertexColor(whichUnit, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param whichUnit unit
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function UnitAddIndicatorBJ(whichUnit, red, green, blue, transparency)
	AddIndicator(whichUnit, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param whichDestructable destructable
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function DestructableAddIndicatorBJ(whichDestructable, red, green, blue, transparency)
	AddIndicator(whichDestructable, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param whichItem item
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function ItemAddIndicatorBJ(whichItem, red, green, blue, transparency)
	AddIndicator(whichItem, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================
--  Sets a unit's facing to point directly at a location.
-- 

---@param whichUnit unit
---@param target location
---@param duration real
---@return nil
function SetUnitFacingToFaceLocTimed(whichUnit, target, duration)
	local unitLoc = GetUnitLoc(whichUnit)
	
	SetUnitFacingTimed(whichUnit, AngleBetweenPoints(unitLoc, target), duration)
	RemoveLocation(unitLoc)
end
-- ===========================================================================
--  Sets a unit's facing to point directly at another unit.
-- 

---@param whichUnit unit
---@param target unit
---@param duration real
---@return nil
function SetUnitFacingToFaceUnitTimed(whichUnit, target, duration)
	local unitLoc = GetUnitLoc(target)
	
	SetUnitFacingToFaceLocTimed(whichUnit, unitLoc, duration)
	RemoveLocation(unitLoc)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichAnimation string
---@return nil
function QueueUnitAnimationBJ(whichUnit, whichAnimation)
	QueueUnitAnimation(whichUnit, whichAnimation)
end
-- ===========================================================================

---@param d destructable
---@param whichAnimation string
---@return nil
function SetDestructableAnimationBJ(d, whichAnimation)
	SetDestructableAnimation(d, whichAnimation)
end
-- ===========================================================================

---@param d destructable
---@param whichAnimation string
---@return nil
function QueueDestructableAnimationBJ(d, whichAnimation)
	QueueDestructableAnimation(d, whichAnimation)
end
-- ===========================================================================

---@param d destructable
---@param percentScale real
---@return nil
function SetDestAnimationSpeedPercent(d, percentScale)
	SetDestructableAnimationSpeed(d, percentScale * 0.01)
end
-- ***************************************************************************
-- 
-- *  Dialog Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param flag boolean
---@param whichDialog dialog
---@param whichPlayer player
---@return nil
function DialogDisplayBJ(flag, whichDialog, whichPlayer)
	DialogDisplay(whichPlayer, whichDialog, flag)
end
-- ===========================================================================

---@param whichDialog dialog
---@param message string
---@return nil
function DialogSetMessageBJ(whichDialog, message)
	DialogSetMessage(whichDialog, message)
end
-- ===========================================================================

---@param whichDialog dialog
---@param buttonText string
---@return button
function DialogAddButtonBJ(whichDialog, buttonText)
	bj_lastCreatedButton = DialogAddButton(whichDialog, buttonText, 0)
	return bj_lastCreatedButton
end
-- ===========================================================================

---@param whichDialog dialog
---@param buttonText string
---@param hotkey integer
---@return button
function DialogAddButtonWithHotkeyBJ(whichDialog, buttonText, hotkey)
	bj_lastCreatedButton = DialogAddButton(whichDialog, buttonText, hotkey)
	return bj_lastCreatedButton
end
-- ===========================================================================

---@param whichDialog dialog
---@return nil
function DialogClearBJ(whichDialog)
	DialogClear(whichDialog)
end
-- ===========================================================================
---@return button
function GetLastCreatedButtonBJ()
	return bj_lastCreatedButton
end
-- ===========================================================================
---@return button
function GetClickedButtonBJ()
	return GetClickedButton()
end
-- ===========================================================================
---@return dialog
function GetClickedDialogBJ()
	return GetClickedDialog()
end
-- ***************************************************************************
-- 
-- *  Alliance Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param sourcePlayer player
---@param whichAllianceSetting alliancetype
---@param value boolean
---@param otherPlayer player
---@return nil
function SetPlayerAllianceBJ(sourcePlayer, whichAllianceSetting, value, otherPlayer)
	--  Prevent players from attempting to ally with themselves.
	if (sourcePlayer == otherPlayer) then
		return
	end
	
	SetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting, value)
end
-- ===========================================================================
--  Set all flags used by the in-game "Ally" checkbox.
-- 

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
---@return nil
function SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_PASSIVE, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_HELP_REQUEST, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_HELP_RESPONSE, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_XP, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_SPELLS, flag)
end
-- ===========================================================================
--  Set all flags used by the in-game "Shared Vision" checkbox.
-- 

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
---@return nil
function SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_VISION, flag)
end
-- ===========================================================================
--  Set all flags used by the in-game "Shared Units" checkbox.
-- 

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
---@return nil
function SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_CONTROL, flag)
end
-- ===========================================================================
--  Set all flags used by the in-game "Shared Units" checkbox with the Full
--  Shared Unit Control feature enabled.
-- 

---@param sourcePlayer player
---@param otherPlayer player
---@param flag boolean
---@return nil
function SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, flag)
	SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_ADVANCED_CONTROL, flag)
end
-- ===========================================================================

---@param sourcePlayer player
---@param otherPlayer player
---@param allianceState integer
---@return nil
function SetPlayerAllianceStateBJ(sourcePlayer, otherPlayer, allianceState)
	--  Prevent players from attempting to ally with themselves.
	if (sourcePlayer == otherPlayer) then
		return
	end
	
	if allianceState == bj_ALLIANCE_UNALLIED then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
	elseif allianceState == bj_ALLIANCE_UNALLIED_VISION then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
	elseif allianceState == bj_ALLIANCE_ALLIED then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
	elseif allianceState == bj_ALLIANCE_ALLIED_VISION then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
	elseif allianceState == bj_ALLIANCE_ALLIED_UNITS then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
	elseif allianceState == bj_ALLIANCE_ALLIED_ADVUNITS then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, true)
	elseif allianceState == bj_ALLIANCE_NEUTRAL then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_PASSIVE, true)
	elseif allianceState == bj_ALLIANCE_NEUTRAL_VISION then
		SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
		SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
		SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_PASSIVE, true)
	else
		--  Unrecognized alliance state - ignore the request.
	end
end
-- ===========================================================================
--  Set the alliance states for an entire force towards another force.
-- 

---@param sourceForce force
---@param targetForce force
---@param allianceState integer
---@return nil
function SetForceAllianceStateBJ(sourceForce, targetForce, allianceState)
	local sourceIndex
	local targetIndex
	
	sourceIndex = 0
	while true do
		
		if (sourceForce == bj_FORCE_ALL_PLAYERS or IsPlayerInForce(Player(sourceIndex), sourceForce)) then
			targetIndex = 0
			while true do
				if (targetForce == bj_FORCE_ALL_PLAYERS or IsPlayerInForce(Player(targetIndex), targetForce)) then
					SetPlayerAllianceStateBJ(Player(sourceIndex), Player(targetIndex), allianceState)
				end
				
				targetIndex = targetIndex + 1
				if targetIndex == bj_MAX_PLAYER_SLOTS then break end
			end
		end
		
		sourceIndex = sourceIndex + 1
		if sourceIndex == bj_MAX_PLAYER_SLOTS then break end
	end
end
-- ===========================================================================
--  Test to see if two players are co-allied (allied with each other).
-- 

---@param playerA player
---@param playerB player
---@return boolean
function PlayersAreCoAllied(playerA, playerB)
	--  Players are considered to be allied with themselves.
	if (playerA == playerB) then
		return true
	end
	
	--  Co-allies are both allied with each other.
	if GetPlayerAlliance(playerA, playerB, ALLIANCE_PASSIVE) then
		if GetPlayerAlliance(playerB, playerA, ALLIANCE_PASSIVE) then
			return true
		end
	end
	return false
end
-- ===========================================================================
--  Force (whichPlayer) AI player to share vision and advanced unit control 
--  with all AI players of its allies.
-- 

---@param whichPlayer player
---@return nil
function ShareEverythingWithTeamAI(whichPlayer)
	local playerIndex
	local indexPlayer
	
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		if (PlayersAreCoAllied(whichPlayer, indexPlayer) and whichPlayer ~= indexPlayer) then
			if (GetPlayerController(indexPlayer) == MAP_CONTROL_COMPUTER) then
				SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_VISION, true)
				SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_CONTROL, true)
				SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_ADVANCED_CONTROL, true)
			end
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================
--  Force (whichPlayer) to share vision and advanced unit control with all of his/her allies.
-- 

---@param whichPlayer player
---@return nil
function ShareEverythingWithTeam(whichPlayer)
	local playerIndex
	local indexPlayer
	
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		if (PlayersAreCoAllied(whichPlayer, indexPlayer) and whichPlayer ~= indexPlayer) then
			SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_VISION, true)
			SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_CONTROL, true)
			SetPlayerAlliance(indexPlayer, whichPlayer, ALLIANCE_SHARED_CONTROL, true)
			SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_ADVANCED_CONTROL, true)
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================
--  Creates a 'Neutral Victim' player slot.  This slot is passive towards all
--  other players, but all other players are aggressive towards him/her.
-- 
---@return nil
function ConfigureNeutralVictim()
	local index
	local indexPlayer
	local neutralVictim = Player(bj_PLAYER_NEUTRAL_VICTIM)
	
	index               = 0
	while true do
		indexPlayer = Player(index)
		
		SetPlayerAlliance(neutralVictim, indexPlayer, ALLIANCE_PASSIVE, true)
		SetPlayerAlliance(indexPlayer, neutralVictim, ALLIANCE_PASSIVE, false)
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
	
	--  Neutral Victim and Neutral Aggressive should not fight each other.
	indexPlayer = Player(PLAYER_NEUTRAL_AGGRESSIVE)
	SetPlayerAlliance(neutralVictim, indexPlayer, ALLIANCE_PASSIVE, true)
	SetPlayerAlliance(indexPlayer, neutralVictim, ALLIANCE_PASSIVE, true)
	
	--  Neutral Victim does not give bounties.
	SetPlayerState(neutralVictim, PLAYER_STATE_GIVES_BOUNTY, 0)
end
-- ===========================================================================
---@return nil
function MakeUnitsPassiveForPlayerEnum()
	SetUnitOwner(GetEnumUnit(), Player(bj_PLAYER_NEUTRAL_VICTIM), false)
end
-- ===========================================================================
--  Change ownership for every unit of (whichPlayer)'s team to neutral passive.
-- 

---@param whichPlayer player
---@return nil
function MakeUnitsPassiveForPlayer(whichPlayer)
	local playerUnits = CreateGroup()
	CachePlayerHeroData(whichPlayer)
	GroupEnumUnitsOfPlayer(playerUnits, whichPlayer, nil)
	ForGroup(playerUnits, MakeUnitsPassiveForPlayerEnum)
	DestroyGroup(playerUnits)
end
-- ===========================================================================
--  Change ownership for every unit of (whichPlayer)'s team to neutral passive.
-- 

---@param whichPlayer player
---@return nil
function MakeUnitsPassiveForTeam(whichPlayer)
	local playerIndex
	local indexPlayer
	
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		if PlayersAreCoAllied(whichPlayer, indexPlayer) then
			MakeUnitsPassiveForPlayer(indexPlayer)
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================
--  Determine whether or not victory/defeat is disabled via cheat codes.
-- 

---@param gameResult playergameresult
---@return boolean
function AllowVictoryDefeat(gameResult)
	if (gameResult == PLAYER_GAME_RESULT_VICTORY) then
		return not IsNoVictoryCheat()
	end
	if (gameResult == PLAYER_GAME_RESULT_DEFEAT) then
		return not IsNoDefeatCheat()
	end
	if (gameResult == PLAYER_GAME_RESULT_NEUTRAL) then
		return (not IsNoVictoryCheat()) and (not IsNoDefeatCheat())
	end
	return true
end
-- ===========================================================================
---@return nil
function EndGameBJ()
	EndGame(true)
end
-- ===========================================================================

---@param whichPlayer player
---@param leftGame boolean
---@return nil
function MeleeVictoryDialogBJ(whichPlayer, leftGame)
	local t = CreateTrigger()
	local d = DialogCreate()
	local formatString
	
	--  Display "player was victorious" or "player has left the game" message
	if (leftGame) then
		formatString = GetLocalizedString("PLAYER_LEFT_GAME")
	else
		formatString = GetLocalizedString("PLAYER_VICTORIOUS")
	end
	
	DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, formatString)
	
	DialogSetMessage(d, GetLocalizedString("GAMEOVER_VICTORY_MSG"))
	DialogAddButton(d, GetLocalizedString("GAMEOVER_CONTINUE_GAME"), GetLocalizedHotkey("GAMEOVER_CONTINUE_GAME"))
	
	t = CreateTrigger()
	TriggerRegisterDialogButtonEvent(t, DialogAddQuitButton(d, true, GetLocalizedString("GAMEOVER_QUIT_GAME"), GetLocalizedHotkey("GAMEOVER_QUIT_GAME")))
	
	DialogDisplay(whichPlayer, d, true)
	StartSoundForPlayerBJ(whichPlayer, bj_victoryDialogSound)
end
-- ===========================================================================

---@param whichPlayer player
---@param leftGame boolean
---@return nil
function MeleeDefeatDialogBJ(whichPlayer, leftGame)
	local t = CreateTrigger()
	local d = DialogCreate()
	local formatString
	
	--  Display "player was defeated" or "player has left the game" message
	if (leftGame) then
		formatString = GetLocalizedString("PLAYER_LEFT_GAME")
	else
		formatString = GetLocalizedString("PLAYER_DEFEATED")
	end
	
	DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, formatString)
	
	DialogSetMessage(d, GetLocalizedString("GAMEOVER_DEFEAT_MSG"))
	
	--  Only show the continue button if the game is not over and observers on death are allowed
	if (not bj_meleeGameOver and IsMapFlagSet(MAP_OBSERVERS_ON_DEATH)) then
		DialogAddButton(d, GetLocalizedString("GAMEOVER_CONTINUE_OBSERVING"), GetLocalizedHotkey("GAMEOVER_CONTINUE_OBSERVING"))
	end
	
	t = CreateTrigger()
	TriggerRegisterDialogButtonEvent(t, DialogAddQuitButton(d, true, GetLocalizedString("GAMEOVER_QUIT_GAME"), GetLocalizedHotkey("GAMEOVER_QUIT_GAME")))
	
	DialogDisplay(whichPlayer, d, true)
	StartSoundForPlayerBJ(whichPlayer, bj_defeatDialogSound)
end
-- ===========================================================================

---@param whichPlayer player
---@param leftGame boolean
---@return nil
function GameOverDialogBJ(whichPlayer, leftGame)
	local t = CreateTrigger()
	local d = DialogCreate()
	local s
	
	--  Display "player left the game" message
	DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, GetLocalizedString("PLAYER_LEFT_GAME"))
	
	if (GetIntegerGameState(GAME_STATE_DISCONNECTED) ~= 0) then
		s = GetLocalizedString("GAMEOVER_DISCONNECTED")
	else
		s = GetLocalizedString("GAMEOVER_GAME_OVER")
	end
	
	DialogSetMessage(d, s)
	
	t = CreateTrigger()
	TriggerRegisterDialogButtonEvent(t, DialogAddQuitButton(d, true, GetLocalizedString("GAMEOVER_OK"), GetLocalizedHotkey("GAMEOVER_OK")))
	
	DialogDisplay(whichPlayer, d, true)
	StartSoundForPlayerBJ(whichPlayer, bj_defeatDialogSound)
end
-- ===========================================================================

---@param whichPlayer player
---@param gameResult playergameresult
---@param leftGame boolean
---@return nil
function RemovePlayerPreserveUnitsBJ(whichPlayer, gameResult, leftGame)
	if AllowVictoryDefeat(gameResult) then
		
		RemovePlayer(whichPlayer, gameResult)
		
		if (gameResult == PLAYER_GAME_RESULT_VICTORY) then
			MeleeVictoryDialogBJ(whichPlayer, leftGame)
			return
		elseif (gameResult == PLAYER_GAME_RESULT_DEFEAT) then
			MeleeDefeatDialogBJ(whichPlayer, leftGame)
		else
			GameOverDialogBJ(whichPlayer, leftGame)
		end
	
	end
end
-- ===========================================================================
---@return nil
function CustomVictoryOkBJ()
	if bj_isSinglePlayer then
		PauseGame(false)
		--  Bump the difficulty back up to the default.
		SetGameDifficulty(GetDefaultDifficulty())
	end
	
	if (bj_changeLevelMapName == nil) then
		EndGame(bj_changeLevelShowScores)
	else
		ChangeLevel(bj_changeLevelMapName, bj_changeLevelShowScores)
	end
end
-- ===========================================================================
---@return nil
function CustomVictoryQuitBJ()
	if bj_isSinglePlayer then
		PauseGame(false)
		--  Bump the difficulty back up to the default.
		SetGameDifficulty(GetDefaultDifficulty())
	end
	
	EndGame(bj_changeLevelShowScores)
end
-- ===========================================================================

---@param whichPlayer player
---@return nil
function CustomVictoryDialogBJ(whichPlayer)
	local t = CreateTrigger()
	local d = DialogCreate()
	
	DialogSetMessage(d, GetLocalizedString("GAMEOVER_VICTORY_MSG"))
	
	t = CreateTrigger()
	TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_CONTINUE"), GetLocalizedHotkey("GAMEOVER_CONTINUE")))
	TriggerAddAction(t, CustomVictoryOkBJ)
	
	t = CreateTrigger()
	TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_QUIT_MISSION"), GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")))
	TriggerAddAction(t, CustomVictoryQuitBJ)
	
	if (GetLocalPlayer() == whichPlayer) then
		EnableUserControl(true)
		if bj_isSinglePlayer then
			PauseGame(true)
		end
		EnableUserUI(false)
	end
	
	DialogDisplay(whichPlayer, d, true)
	VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
	StartSoundForPlayerBJ(whichPlayer, bj_victoryDialogSound)
end
-- ===========================================================================

---@param whichPlayer player
---@return nil
function CustomVictorySkipBJ(whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		if bj_isSinglePlayer then
			--  Bump the difficulty back up to the default.
			SetGameDifficulty(GetDefaultDifficulty())
		end
		
		if (bj_changeLevelMapName == nil) then
			EndGame(bj_changeLevelShowScores)
		else
			ChangeLevel(bj_changeLevelMapName, bj_changeLevelShowScores)
		end
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param showDialog boolean
---@param showScores boolean
---@return nil
function CustomVictoryBJ(whichPlayer, showDialog, showScores)
	if AllowVictoryDefeat(PLAYER_GAME_RESULT_VICTORY) then
		RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_VICTORY)
		
		if not bj_isSinglePlayer then
			DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, GetLocalizedString("PLAYER_VICTORIOUS"))
		end
		
		--  UI only needs to be displayed to users.
		if (GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
			bj_changeLevelShowScores = showScores
			if showDialog then
				CustomVictoryDialogBJ(whichPlayer)
			else
				CustomVictorySkipBJ(whichPlayer)
			end
		end
	end
end
-- ===========================================================================
---@return nil
function CustomDefeatRestartBJ()
	PauseGame(false)
	RestartGame(true)
end
-- ===========================================================================
---@return nil
function CustomDefeatReduceDifficultyBJ()
	local diff = GetGameDifficulty()
	
	PauseGame(false)
	
	--  Knock the difficulty down, if possible.
	if (diff == MAP_DIFFICULTY_EASY) then
		--  Sorry, but it doesn't get any easier than this.
	elseif (diff == MAP_DIFFICULTY_NORMAL) then
		SetGameDifficulty(MAP_DIFFICULTY_EASY)
	elseif (diff == MAP_DIFFICULTY_HARD) then
		SetGameDifficulty(MAP_DIFFICULTY_NORMAL)
	else
		--  Unrecognized difficulty
	end
	
	RestartGame(true)
end
-- ===========================================================================
---@return nil
function CustomDefeatLoadBJ()
	PauseGame(false)
	DisplayLoadDialog()
end
-- ===========================================================================
---@return nil
function CustomDefeatQuitBJ()
	if bj_isSinglePlayer then
		PauseGame(false)
	end
	
	--  Bump the difficulty back up to the default.
	SetGameDifficulty(GetDefaultDifficulty())
	EndGame(true)
end
-- ===========================================================================

---@param whichPlayer player
---@param message string
---@return nil
function CustomDefeatDialogBJ(whichPlayer, message)
	local t = CreateTrigger()
	local d = DialogCreate()
	
	DialogSetMessage(d, message)
	
	if bj_isSinglePlayer then
		t = CreateTrigger()
		TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_RESTART"), GetLocalizedHotkey("GAMEOVER_RESTART")))
		TriggerAddAction(t, CustomDefeatRestartBJ)
		
		if (GetGameDifficulty() ~= MAP_DIFFICULTY_EASY) then
			t = CreateTrigger()
			TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_REDUCE_DIFFICULTY"), GetLocalizedHotkey("GAMEOVER_REDUCE_DIFFICULTY")))
			TriggerAddAction(t, CustomDefeatReduceDifficultyBJ)
		end
		
		t = CreateTrigger()
		TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_LOAD"), GetLocalizedHotkey("GAMEOVER_LOAD")))
		TriggerAddAction(t, CustomDefeatLoadBJ)
	end
	
	t = CreateTrigger()
	TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_QUIT_MISSION"), GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")))
	TriggerAddAction(t, CustomDefeatQuitBJ)
	
	if (GetLocalPlayer() == whichPlayer) then
		EnableUserControl(true)
		if bj_isSinglePlayer then
			PauseGame(true)
		end
		EnableUserUI(false)
	end
	
	DialogDisplay(whichPlayer, d, true)
	VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
	StartSoundForPlayerBJ(whichPlayer, bj_defeatDialogSound)
end
-- ===========================================================================

---@param whichPlayer player
---@param message string
---@return nil
function CustomDefeatBJ(whichPlayer, message)
	if AllowVictoryDefeat(PLAYER_GAME_RESULT_DEFEAT) then
		RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_DEFEAT)
		
		if not bj_isSinglePlayer then
			DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, GetLocalizedString("PLAYER_DEFEATED"))
		end
		
		--  UI only needs to be displayed to users.
		if (GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
			CustomDefeatDialogBJ(whichPlayer, message)
		end
	end
end
-- ===========================================================================

---@param nextLevel string
---@return nil
function SetNextLevelBJ(nextLevel)
	if (nextLevel == "") then
		bj_changeLevelMapName = nil
	else
		bj_changeLevelMapName = nextLevel
	end
end
-- ===========================================================================

---@param flag boolean
---@param whichPlayer player
---@return nil
function SetPlayerOnScoreScreenBJ(flag, whichPlayer)
	SetPlayerOnScoreScreen(whichPlayer, flag)
end
-- ***************************************************************************
-- 
-- *  Quest Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param questType integer
---@param title string
---@param description string
---@param iconPath string
---@return quest
function CreateQuestBJ(questType, title, description, iconPath)
	local required      = (questType == bj_QUESTTYPE_REQ_DISCOVERED) or (questType == bj_QUESTTYPE_REQ_UNDISCOVERED)
	local discovered    = (questType == bj_QUESTTYPE_REQ_DISCOVERED) or (questType == bj_QUESTTYPE_OPT_DISCOVERED)
	
	bj_lastCreatedQuest = CreateQuest()
	QuestSetTitle(bj_lastCreatedQuest, title)
	QuestSetDescription(bj_lastCreatedQuest, description)
	QuestSetIconPath(bj_lastCreatedQuest, iconPath)
	QuestSetRequired(bj_lastCreatedQuest, required)
	QuestSetDiscovered(bj_lastCreatedQuest, discovered)
	QuestSetCompleted(bj_lastCreatedQuest, false)
	return bj_lastCreatedQuest
end
-- ===========================================================================

---@param whichQuest quest
---@return nil
function DestroyQuestBJ(whichQuest)
	DestroyQuest(whichQuest)
end
-- ===========================================================================

---@param enabled boolean
---@param whichQuest quest
---@return nil
function QuestSetEnabledBJ(enabled, whichQuest)
	QuestSetEnabled(whichQuest, enabled)
end
-- ===========================================================================

---@param whichQuest quest
---@param title string
---@return nil
function QuestSetTitleBJ(whichQuest, title)
	QuestSetTitle(whichQuest, title)
end
-- ===========================================================================

---@param whichQuest quest
---@param description string
---@return nil
function QuestSetDescriptionBJ(whichQuest, description)
	QuestSetDescription(whichQuest, description)
end
-- ===========================================================================

---@param whichQuest quest
---@param completed boolean
---@return nil
function QuestSetCompletedBJ(whichQuest, completed)
	QuestSetCompleted(whichQuest, completed)
end
-- ===========================================================================

---@param whichQuest quest
---@param failed boolean
---@return nil
function QuestSetFailedBJ(whichQuest, failed)
	QuestSetFailed(whichQuest, failed)
end
-- ===========================================================================

---@param whichQuest quest
---@param discovered boolean
---@return nil
function QuestSetDiscoveredBJ(whichQuest, discovered)
	QuestSetDiscovered(whichQuest, discovered)
end
-- ===========================================================================
---@return quest
function GetLastCreatedQuestBJ()
	return bj_lastCreatedQuest
end
-- ===========================================================================

---@param whichQuest quest
---@param description string
---@return questitem
function CreateQuestItemBJ(whichQuest, description)
	bj_lastCreatedQuestItem = QuestCreateItem(whichQuest)
	QuestItemSetDescription(bj_lastCreatedQuestItem, description)
	QuestItemSetCompleted(bj_lastCreatedQuestItem, false)
	return bj_lastCreatedQuestItem
end
-- ===========================================================================

---@param whichQuestItem questitem
---@param description string
---@return nil
function QuestItemSetDescriptionBJ(whichQuestItem, description)
	QuestItemSetDescription(whichQuestItem, description)
end
-- ===========================================================================

---@param whichQuestItem questitem
---@param completed boolean
---@return nil
function QuestItemSetCompletedBJ(whichQuestItem, completed)
	QuestItemSetCompleted(whichQuestItem, completed)
end
-- ===========================================================================
---@return questitem
function GetLastCreatedQuestItemBJ()
	return bj_lastCreatedQuestItem
end
-- ===========================================================================

---@param description string
---@return defeatcondition
function CreateDefeatConditionBJ(description)
	bj_lastCreatedDefeatCondition = CreateDefeatCondition()
	DefeatConditionSetDescription(bj_lastCreatedDefeatCondition, description)
	return bj_lastCreatedDefeatCondition
end
-- ===========================================================================

---@param whichCondition defeatcondition
---@return nil
function DestroyDefeatConditionBJ(whichCondition)
	DestroyDefeatCondition(whichCondition)
end
-- ===========================================================================

---@param whichCondition defeatcondition
---@param description string
---@return nil
function DefeatConditionSetDescriptionBJ(whichCondition, description)
	DefeatConditionSetDescription(whichCondition, description)
end
-- ===========================================================================
---@return defeatcondition
function GetLastCreatedDefeatConditionBJ()
	return bj_lastCreatedDefeatCondition
end
-- ===========================================================================
---@return nil
function FlashQuestDialogButtonBJ()
	FlashQuestDialogButton()
end
-- ===========================================================================

---@param f force
---@param messageType integer
---@param message string
---@return nil
function QuestMessageBJ(f, messageType, message)
	if (IsPlayerInForce(GetLocalPlayer(), f)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		
		if (messageType == bj_QUESTMESSAGE_DISCOVERED) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUEST, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUEST, message)
			StartSound(bj_questDiscoveredSound)
			FlashQuestDialogButton()
		
		elseif (messageType == bj_QUESTMESSAGE_UPDATED) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTUPDATE, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTUPDATE, message)
			StartSound(bj_questUpdatedSound)
			FlashQuestDialogButton()
		
		elseif (messageType == bj_QUESTMESSAGE_COMPLETED) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTDONE, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTDONE, message)
			StartSound(bj_questCompletedSound)
			FlashQuestDialogButton()
		
		elseif (messageType == bj_QUESTMESSAGE_FAILED) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTFAILED, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTFAILED, message)
			StartSound(bj_questFailedSound)
			FlashQuestDialogButton()
		
		elseif (messageType == bj_QUESTMESSAGE_REQUIREMENT) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTREQUIREMENT, message)
		
		elseif (messageType == bj_QUESTMESSAGE_MISSIONFAILED) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_MISSIONFAILED, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_MISSIONFAILED, message)
			StartSound(bj_questFailedSound)
		
		elseif (messageType == bj_QUESTMESSAGE_HINT) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_HINT, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_HINT, message)
			StartSound(bj_questHintSound)
		
		elseif (messageType == bj_QUESTMESSAGE_ALWAYSHINT) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ALWAYSHINT, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ALWAYSHINT, message)
			StartSound(bj_questHintSound)
		
		elseif (messageType == bj_QUESTMESSAGE_SECRET) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_SECRET, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_SECRET, message)
			StartSound(bj_questSecretSound)
		
		elseif (messageType == bj_QUESTMESSAGE_UNITACQUIRED) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITACQUIRED, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITACQUIRED, message)
			StartSound(bj_questHintSound)
		
		elseif (messageType == bj_QUESTMESSAGE_UNITAVAILABLE) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITAVAILABLE, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITAVAILABLE, message)
			StartSound(bj_questHintSound)
		
		elseif (messageType == bj_QUESTMESSAGE_ITEMACQUIRED) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ITEMACQUIRED, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ITEMACQUIRED, message)
			StartSound(bj_questItemAcquiredSound)
		
		elseif (messageType == bj_QUESTMESSAGE_WARNING) then
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_WARNING, " ")
			DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_WARNING, message)
			StartSound(bj_questWarningSound)
		
		else
			--  Unrecognized message type - ignore the request.
		end
	end
end
-- ***************************************************************************
-- 
-- *  Timer Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param t timer
---@param periodic boolean
---@param timeout real
---@return timer
function StartTimerBJ(t, periodic, timeout)
	bj_lastStartedTimer = t
	TimerStart(t, timeout, periodic, nil)
	return bj_lastStartedTimer
end
-- ===========================================================================

---@param periodic boolean
---@param timeout real
---@return timer
function CreateTimerBJ(periodic, timeout)
	bj_lastStartedTimer = CreateTimer()
	TimerStart(bj_lastStartedTimer, timeout, periodic, nil)
	return bj_lastStartedTimer
end
-- ===========================================================================

---@param whichTimer timer
---@return nil
function DestroyTimerBJ(whichTimer)
	DestroyTimer(whichTimer)
end
-- ===========================================================================

---@param pause boolean
---@param whichTimer timer
---@return nil
function PauseTimerBJ(pause, whichTimer)
	if pause then
		PauseTimer(whichTimer)
	else
		ResumeTimer(whichTimer)
	end
end
-- ===========================================================================
---@return timer
function GetLastCreatedTimerBJ()
	return bj_lastStartedTimer
end
-- ===========================================================================

---@param t timer
---@param title string
---@return timerdialog
function CreateTimerDialogBJ(t, title)
	bj_lastCreatedTimerDialog = CreateTimerDialog(t)
	TimerDialogSetTitle(bj_lastCreatedTimerDialog, title)
	TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
	return bj_lastCreatedTimerDialog
end
-- ===========================================================================

---@param td timerdialog
---@return nil
function DestroyTimerDialogBJ(td)
	DestroyTimerDialog(td)
end
-- ===========================================================================

---@param td timerdialog
---@param title string
---@return nil
function TimerDialogSetTitleBJ(td, title)
	TimerDialogSetTitle(td, title)
end
-- ===========================================================================

---@param td timerdialog
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function TimerDialogSetTitleColorBJ(td, red, green, blue, transparency)
	TimerDialogSetTitleColor(td, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param td timerdialog
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function TimerDialogSetTimeColorBJ(td, red, green, blue, transparency)
	TimerDialogSetTimeColor(td, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param td timerdialog
---@param speedMultFactor real
---@return nil
function TimerDialogSetSpeedBJ(td, speedMultFactor)
	TimerDialogSetSpeed(td, speedMultFactor)
end
-- ===========================================================================

---@param show boolean
---@param td timerdialog
---@param whichPlayer player
---@return nil
function TimerDialogDisplayForPlayerBJ(show, td, whichPlayer)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		TimerDialogDisplay(td, show)
	end
end
-- ===========================================================================

---@param show boolean
---@param td timerdialog
---@return nil
function TimerDialogDisplayBJ(show, td)
	TimerDialogDisplay(td, show)
end
-- ===========================================================================
---@return timerdialog
function GetLastCreatedTimerDialogBJ()
	return bj_lastCreatedTimerDialog
end
-- ***************************************************************************
-- 
-- *  Leaderboard Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param lb leaderboard
---@return nil
function LeaderboardResizeBJ(lb)
	local size = LeaderboardGetItemCount(lb)
	
	if (LeaderboardGetLabelText(lb) == "") then
		size = size - 1
	end
	LeaderboardSetSizeByItemCount(lb, size)
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@param val integer
---@return nil
function LeaderboardSetPlayerItemValueBJ(whichPlayer, lb, val)
	LeaderboardSetItemValue(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), val)
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@param val string
---@return nil
function LeaderboardSetPlayerItemLabelBJ(whichPlayer, lb, val)
	LeaderboardSetItemLabel(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), val)
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
---@return nil
function LeaderboardSetPlayerItemStyleBJ(whichPlayer, lb, showLabel, showValue, showIcon)
	LeaderboardSetItemStyle(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), showLabel, showValue, showIcon)
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function LeaderboardSetPlayerItemLabelColorBJ(whichPlayer, lb, red, green, blue, transparency)
	LeaderboardSetItemLabelColor(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function LeaderboardSetPlayerItemValueColorBJ(whichPlayer, lb, red, green, blue, transparency)
	LeaderboardSetItemValueColor(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param lb leaderboard
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function LeaderboardSetLabelColorBJ(lb, red, green, blue, transparency)
	LeaderboardSetLabelColor(lb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param lb leaderboard
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function LeaderboardSetValueColorBJ(lb, red, green, blue, transparency)
	LeaderboardSetValueColor(lb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param lb leaderboard
---@param label string
---@return nil
function LeaderboardSetLabelBJ(lb, label)
	LeaderboardSetLabel(lb, label)
	LeaderboardResizeBJ(lb)
end
-- ===========================================================================

---@param lb leaderboard
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
---@return nil
function LeaderboardSetStyleBJ(lb, showLabel, showNames, showValues, showIcons)
	LeaderboardSetStyle(lb, showLabel, showNames, showValues, showIcons)
end
-- ===========================================================================

---@param lb leaderboard
---@return integer
function LeaderboardGetItemCountBJ(lb)
	return LeaderboardGetItemCount(lb)
end
-- ===========================================================================

---@param lb leaderboard
---@param whichPlayer player
---@return boolean
function LeaderboardHasPlayerItemBJ(lb, whichPlayer)
	return LeaderboardHasPlayerItem(lb, whichPlayer)
end
-- ===========================================================================

---@param lb leaderboard
---@param toForce force
---@return nil
function ForceSetLeaderboardBJ(lb, toForce)
	local index
	local indexPlayer
	
	index = 0
	while true do
		indexPlayer = Player(index)
		if IsPlayerInForce(indexPlayer, toForce) then
			PlayerSetLeaderboard(indexPlayer, lb)
		end
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================

---@param toForce force
---@param label string
---@return leaderboard
function CreateLeaderboardBJ(toForce, label)
	bj_lastCreatedLeaderboard = CreateLeaderboard()
	LeaderboardSetLabel(bj_lastCreatedLeaderboard, label)
	ForceSetLeaderboardBJ(bj_lastCreatedLeaderboard, toForce)
	LeaderboardDisplay(bj_lastCreatedLeaderboard, true)
	return bj_lastCreatedLeaderboard
end
-- ===========================================================================

---@param lb leaderboard
---@return nil
function DestroyLeaderboardBJ(lb)
	DestroyLeaderboard(lb)
end
-- ===========================================================================

---@param show boolean
---@param lb leaderboard
---@return nil
function LeaderboardDisplayBJ(show, lb)
	LeaderboardDisplay(lb, show)
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@param label string
---@param value integer
---@return nil
function LeaderboardAddItemBJ(whichPlayer, lb, label, value)
	if (LeaderboardHasPlayerItem(lb, whichPlayer)) then
		LeaderboardRemovePlayerItem(lb, whichPlayer)
	end
	LeaderboardAddItem(lb, label, value, whichPlayer)
	LeaderboardResizeBJ(lb)
	-- call LeaderboardSetSizeByItemCount(lb, LeaderboardGetItemCount(lb))
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@return nil
function LeaderboardRemovePlayerItemBJ(whichPlayer, lb)
	LeaderboardRemovePlayerItem(lb, whichPlayer)
	LeaderboardResizeBJ(lb)
end
-- ===========================================================================

---@param lb leaderboard
---@param sortType integer
---@param ascending boolean
---@return nil
function LeaderboardSortItemsBJ(lb, sortType, ascending)
	if (sortType == bj_SORTTYPE_SORTBYVALUE) then
		LeaderboardSortItemsByValue(lb, ascending)
	elseif (sortType == bj_SORTTYPE_SORTBYPLAYER) then
		LeaderboardSortItemsByPlayer(lb, ascending)
	elseif (sortType == bj_SORTTYPE_SORTBYLABEL) then
		LeaderboardSortItemsByLabel(lb, ascending)
	else
		--  Unrecognized sort type - ignore the request.
	end
end
-- ===========================================================================

---@param lb leaderboard
---@param ascending boolean
---@return nil
function LeaderboardSortItemsByPlayerBJ(lb, ascending)
	LeaderboardSortItemsByPlayer(lb, ascending)
end
-- ===========================================================================

---@param lb leaderboard
---@param ascending boolean
---@return nil
function LeaderboardSortItemsByLabelBJ(lb, ascending)
	LeaderboardSortItemsByLabel(lb, ascending)
end
-- ===========================================================================

---@param whichPlayer player
---@param lb leaderboard
---@return integer
function LeaderboardGetPlayerIndexBJ(whichPlayer, lb)
	return LeaderboardGetPlayerIndex(lb, whichPlayer) + 1
end
-- ===========================================================================
--  Returns the player who is occupying a specified position in a leaderboard.
--  The position parameter is expected in the range of 1..16.
-- 

---@param position integer
---@param lb leaderboard
---@return player
function LeaderboardGetIndexedPlayerBJ(position, lb)
	local index
	local indexPlayer
	
	index = 0
	while true do
		indexPlayer = Player(index)
		if (LeaderboardGetPlayerIndex(lb, indexPlayer) == position - 1) then
			return indexPlayer
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
	
	return Player(PLAYER_NEUTRAL_PASSIVE)
end
-- ===========================================================================

---@param whichPlayer player
---@return leaderboard
function PlayerGetLeaderboardBJ(whichPlayer)
	return PlayerGetLeaderboard(whichPlayer)
end
-- ===========================================================================
---@return leaderboard
function GetLastCreatedLeaderboard()
	return bj_lastCreatedLeaderboard
end
-- ***************************************************************************
-- 
-- *  Multiboard Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param cols integer
---@param rows integer
---@param title string
---@return multiboard
function CreateMultiboardBJ(cols, rows, title)
	bj_lastCreatedMultiboard = CreateMultiboard()
	MultiboardSetRowCount(bj_lastCreatedMultiboard, rows)
	MultiboardSetColumnCount(bj_lastCreatedMultiboard, cols)
	MultiboardSetTitleText(bj_lastCreatedMultiboard, title)
	MultiboardDisplay(bj_lastCreatedMultiboard, true)
	return bj_lastCreatedMultiboard
end
-- ===========================================================================

---@param mb multiboard
---@return nil
function DestroyMultiboardBJ(mb)
	DestroyMultiboard(mb)
end
-- ===========================================================================
---@return multiboard
function GetLastCreatedMultiboard()
	return bj_lastCreatedMultiboard
end
-- ===========================================================================

---@param show boolean
---@param mb multiboard
---@return nil
function MultiboardDisplayBJ(show, mb)
	MultiboardDisplay(mb, show)
end
-- ===========================================================================

---@param minimize boolean
---@param mb multiboard
---@return nil
function MultiboardMinimizeBJ(minimize, mb)
	MultiboardMinimize(mb, minimize)
end
-- ===========================================================================

---@param mb multiboard
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function MultiboardSetTitleTextColorBJ(mb, red, green, blue, transparency)
	MultiboardSetTitleTextColor(mb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param flag boolean
---@return nil
function MultiboardAllowDisplayBJ(flag)
	MultiboardSuppressDisplay(not flag)
end
-- ===========================================================================

---@param mb multiboard
---@param col integer
---@param row integer
---@param showValue boolean
---@param showIcon boolean
---@return nil
function MultiboardSetItemStyleBJ(mb, col, row, showValue, showIcon)
	local curRow  = 0
	local curCol  = 0
	local numRows = MultiboardGetRowCount(mb)
	local numCols = MultiboardGetColumnCount(mb)
	local mbitem  = nil
	
	--  Loop over rows, using 1-based index
	while true do
		curRow = curRow + 1
		if curRow > numRows then break end
		
		--  Apply setting to the requested row, or all rows (if row is 0)
		if (row == 0 or row == curRow) then
			--  Loop over columns, using 1-based index
			curCol = 0
			while true do
				curCol = curCol + 1
				if curCol > numCols then break end
				
				--  Apply setting to the requested column, or all columns (if col is 0)
				if (col == 0 or col == curCol) then
					mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
					MultiboardSetItemStyle(mbitem, showValue, showIcon)
					MultiboardReleaseItem(mbitem)
				end
			end
		end
	end
end
-- ===========================================================================

---@param mb multiboard
---@param col integer
---@param row integer
---@param val string
---@return nil
function MultiboardSetItemValueBJ(mb, col, row, val)
	local curRow  = 0
	local curCol  = 0
	local numRows = MultiboardGetRowCount(mb)
	local numCols = MultiboardGetColumnCount(mb)
	local mbitem  = nil
	
	--  Loop over rows, using 1-based index
	while true do
		curRow = curRow + 1
		if curRow > numRows then break end
		
		--  Apply setting to the requested row, or all rows (if row is 0)
		if (row == 0 or row == curRow) then
			--  Loop over columns, using 1-based index
			curCol = 0
			while true do
				curCol = curCol + 1
				if curCol > numCols then break end
				
				--  Apply setting to the requested column, or all columns (if col is 0)
				if (col == 0 or col == curCol) then
					mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
					MultiboardSetItemValue(mbitem, val)
					MultiboardReleaseItem(mbitem)
				end
			end
		end
	end
end
-- ===========================================================================

---@param mb multiboard
---@param col integer
---@param row integer
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function MultiboardSetItemColorBJ(mb, col, row, red, green, blue, transparency)
	local curRow  = 0
	local curCol  = 0
	local numRows = MultiboardGetRowCount(mb)
	local numCols = MultiboardGetColumnCount(mb)
	local mbitem  = nil
	
	--  Loop over rows, using 1-based index
	while true do
		curRow = curRow + 1
		if curRow > numRows then break end
		
		--  Apply setting to the requested row, or all rows (if row is 0)
		if (row == 0 or row == curRow) then
			--  Loop over columns, using 1-based index
			curCol = 0
			while true do
				curCol = curCol + 1
				if curCol > numCols then break end
				
				--  Apply setting to the requested column, or all columns (if col is 0)
				if (col == 0 or col == curCol) then
					mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
					MultiboardSetItemValueColor(mbitem, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
					MultiboardReleaseItem(mbitem)
				end
			end
		end
	end
end
-- ===========================================================================

---@param mb multiboard
---@param col integer
---@param row integer
---@param width real
---@return nil
function MultiboardSetItemWidthBJ(mb, col, row, width)
	local curRow  = 0
	local curCol  = 0
	local numRows = MultiboardGetRowCount(mb)
	local numCols = MultiboardGetColumnCount(mb)
	local mbitem  = nil
	
	--  Loop over rows, using 1-based index
	while true do
		curRow = curRow + 1
		if curRow > numRows then break end
		
		--  Apply setting to the requested row, or all rows (if row is 0)
		if (row == 0 or row == curRow) then
			--  Loop over columns, using 1-based index
			curCol = 0
			while true do
				curCol = curCol + 1
				if curCol > numCols then break end
				
				--  Apply setting to the requested column, or all columns (if col is 0)
				if (col == 0 or col == curCol) then
					mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
					MultiboardSetItemWidth(mbitem, width / 100.0)
					MultiboardReleaseItem(mbitem)
				end
			end
		end
	end
end
-- ===========================================================================

---@param mb multiboard
---@param col integer
---@param row integer
---@param iconFileName string
---@return nil
function MultiboardSetItemIconBJ(mb, col, row, iconFileName)
	local curRow  = 0
	local curCol  = 0
	local numRows = MultiboardGetRowCount(mb)
	local numCols = MultiboardGetColumnCount(mb)
	local mbitem  = nil
	
	--  Loop over rows, using 1-based index
	while true do
		curRow = curRow + 1
		if curRow > numRows then break end
		
		--  Apply setting to the requested row, or all rows (if row is 0)
		if (row == 0 or row == curRow) then
			--  Loop over columns, using 1-based index
			curCol = 0
			while true do
				curCol = curCol + 1
				if curCol > numCols then break end
				
				--  Apply setting to the requested column, or all columns (if col is 0)
				if (col == 0 or col == curCol) then
					mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
					MultiboardSetItemIcon(mbitem, iconFileName)
					MultiboardReleaseItem(mbitem)
				end
			end
		end
	end
end
-- ***************************************************************************
-- 
-- *  Text Tag Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================
--  Scale the font size linearly such that size 10 equates to height 0.023.
--  Screen-relative font heights are harder to grasp and than font sizes.
-- 

---@param size real
---@return real
function TextTagSize2Height(size)
	return size * 0.023 / 10
end
-- ===========================================================================
--  Scale the speed linearly such that speed 128 equates to 0.071.
--  Screen-relative speeds are hard to grasp.
-- 

---@param speed real
---@return real
function TextTagSpeed2Velocity(speed)
	return speed * 0.071 / 128
end
-- ===========================================================================

---@param tt texttag
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return nil
function SetTextTagColorBJ(tt, red, green, blue, transparency)
	SetTextTagColor(tt, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end
-- ===========================================================================

---@param tt texttag
---@param speed real
---@param angle real
---@return nil
function SetTextTagVelocityBJ(tt, speed, angle)
	local vel  = TextTagSpeed2Velocity(speed)
	local xvel = vel * Cos(angle * bj_DEGTORAD)
	local yvel = vel * Sin(angle * bj_DEGTORAD)
	
	SetTextTagVelocity(tt, xvel, yvel)
end
-- ===========================================================================

---@param tt texttag
---@param s string
---@param size real
---@return nil
function SetTextTagTextBJ(tt, s, size)
	local textHeight = TextTagSize2Height(size)
	
	SetTextTagText(tt, s, textHeight)
end
-- ===========================================================================

---@param tt texttag
---@param loc location
---@param zOffset real
---@return nil
function SetTextTagPosBJ(tt, loc, zOffset)
	SetTextTagPos(tt, GetLocationX(loc), GetLocationY(loc), zOffset)
end
-- ===========================================================================

---@param tt texttag
---@param whichUnit unit
---@param zOffset real
---@return nil
function SetTextTagPosUnitBJ(tt, whichUnit, zOffset)
	SetTextTagPosUnit(tt, whichUnit, zOffset)
end
-- ===========================================================================

---@param tt texttag
---@param flag boolean
---@return nil
function SetTextTagSuspendedBJ(tt, flag)
	SetTextTagSuspended(tt, flag)
end
-- ===========================================================================

---@param tt texttag
---@param flag boolean
---@return nil
function SetTextTagPermanentBJ(tt, flag)
	SetTextTagPermanent(tt, flag)
end
-- ===========================================================================

---@param tt texttag
---@param age real
---@return nil
function SetTextTagAgeBJ(tt, age)
	SetTextTagAge(tt, age)
end
-- ===========================================================================

---@param tt texttag
---@param lifespan real
---@return nil
function SetTextTagLifespanBJ(tt, lifespan)
	SetTextTagLifespan(tt, lifespan)
end
-- ===========================================================================

---@param tt texttag
---@param fadepoint real
---@return nil
function SetTextTagFadepointBJ(tt, fadepoint)
	SetTextTagFadepoint(tt, fadepoint)
end
-- ===========================================================================

---@param s string
---@param loc location
---@param zOffset real
---@param size real
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return texttag
function CreateTextTagLocBJ(s, loc, zOffset, size, red, green, blue, transparency)
	bj_lastCreatedTextTag = CreateTextTag()
	SetTextTagTextBJ(bj_lastCreatedTextTag, s, size)
	SetTextTagPosBJ(bj_lastCreatedTextTag, loc, zOffset)
	SetTextTagColorBJ(bj_lastCreatedTextTag, red, green, blue, transparency)
	
	return bj_lastCreatedTextTag
end
-- ===========================================================================

---@param s string
---@param whichUnit unit
---@param zOffset real
---@param size real
---@param red real
---@param green real
---@param blue real
---@param transparency real
---@return texttag
function CreateTextTagUnitBJ(s, whichUnit, zOffset, size, red, green, blue, transparency)
	bj_lastCreatedTextTag = CreateTextTag()
	SetTextTagTextBJ(bj_lastCreatedTextTag, s, size)
	SetTextTagPosUnitBJ(bj_lastCreatedTextTag, whichUnit, zOffset)
	SetTextTagColorBJ(bj_lastCreatedTextTag, red, green, blue, transparency)
	
	return bj_lastCreatedTextTag
end
-- ===========================================================================

---@param tt texttag
---@return nil
function DestroyTextTagBJ(tt)
	DestroyTextTag(tt)
end
-- ===========================================================================

---@param show boolean
---@param tt texttag
---@param whichForce force
---@return nil
function ShowTextTagForceBJ(show, tt, whichForce)
	if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		SetTextTagVisibility(tt, show)
	end
end
-- ===========================================================================
---@return texttag
function GetLastCreatedTextTag()
	return bj_lastCreatedTextTag
end
-- ***************************************************************************
-- 
-- *  Cinematic Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function PauseGameOn()
	PauseGame(true)
end
-- ===========================================================================
---@return nil
function PauseGameOff()
	PauseGame(false)
end
-- ===========================================================================

---@param whichForce force
---@return nil
function SetUserControlForceOn(whichForce)
	if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		EnableUserControl(true)
	end
end
-- ===========================================================================

---@param whichForce force
---@return nil
function SetUserControlForceOff(whichForce)
	if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		EnableUserControl(false)
	end
end
-- ===========================================================================

---@param whichForce force
---@param fadeDuration real
---@return nil
function ShowInterfaceForceOn(whichForce, fadeDuration)
	if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ShowInterface(true, fadeDuration)
	end
end
-- ===========================================================================

---@param whichForce force
---@param fadeDuration real
---@return nil
function ShowInterfaceForceOff(whichForce, fadeDuration)
	if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		ShowInterface(false, fadeDuration)
	end
end
-- ===========================================================================

---@param whichForce force
---@param x real
---@param y real
---@param duration real
---@return nil
function PingMinimapForForce(whichForce, x, y, duration)
	if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		PingMinimap(x, y, duration)
		-- call StartSound(bj_pingMinimapSound)
	end
end
-- ===========================================================================

---@param whichForce force
---@param loc location
---@param duration real
---@return nil
function PingMinimapLocForForce(whichForce, loc, duration)
	PingMinimapForForce(whichForce, GetLocationX(loc), GetLocationY(loc), duration)
end
-- ===========================================================================

---@param whichPlayer player
---@param x real
---@param y real
---@param duration real
---@return nil
function PingMinimapForPlayer(whichPlayer, x, y, duration)
	if (GetLocalPlayer() == whichPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		PingMinimap(x, y, duration)
		-- call StartSound(bj_pingMinimapSound)
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param loc location
---@param duration real
---@return nil
function PingMinimapLocForPlayer(whichPlayer, loc, duration)
	PingMinimapForPlayer(whichPlayer, GetLocationX(loc), GetLocationY(loc), duration)
end
-- ===========================================================================

---@param whichForce force
---@param x real
---@param y real
---@param duration real
---@param style integer
---@param red real
---@param green real
---@param blue real
---@return nil
function PingMinimapForForceEx(whichForce, x, y, duration, style, red, green, blue)
	local red255   = PercentTo255(red)
	local green255 = PercentTo255(green)
	local blue255  = PercentTo255(blue)
	
	if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		
		--  Prevent 100% red simple and flashy pings, as they become "attack" pings.
		if (red255 == 255) and (green255 == 0) and (blue255 == 0) then
			red255 = 254
		end
		
		if (style == bj_MINIMAPPINGSTYLE_SIMPLE) then
			PingMinimapEx(x, y, duration, red255, green255, blue255, false)
		elseif (style == bj_MINIMAPPINGSTYLE_FLASHY) then
			PingMinimapEx(x, y, duration, red255, green255, blue255, true)
		elseif (style == bj_MINIMAPPINGSTYLE_ATTACK) then
			PingMinimapEx(x, y, duration, 255, 0, 0, false)
		else
			--  Unrecognized ping style - ignore the request.
		end
		
		-- call StartSound(bj_pingMinimapSound)
	end
end
-- ===========================================================================

---@param whichForce force
---@param loc location
---@param duration real
---@param style integer
---@param red real
---@param green real
---@param blue real
---@return nil
function PingMinimapLocForForceEx(whichForce, loc, duration, style, red, green, blue)
	PingMinimapForForceEx(whichForce, GetLocationX(loc), GetLocationY(loc), duration, style, red, green, blue)
end
-- ===========================================================================

---@param enable boolean
---@param f force
---@return nil
function EnableWorldFogBoundaryBJ(enable, f)
	if (IsPlayerInForce(GetLocalPlayer(), f)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		EnableWorldFogBoundary(enable)
	end
end
-- ===========================================================================

---@param enable boolean
---@param f force
---@return nil
function EnableOcclusionBJ(enable, f)
	if (IsPlayerInForce(GetLocalPlayer(), f)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		EnableOcclusion(enable)
	end
end
-- ***************************************************************************
-- 
-- *  Cinematic Transmission Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================
--  If cancelled, stop the sound and end the cinematic scene.
-- 
---@return nil
function CancelCineSceneBJ()
	StopSoundBJ(bj_cineSceneLastSound, true)
	EndCinematicScene()
end
-- ===========================================================================
--  Init a trigger to listen for END_CINEMATIC events and respond to them if
--  a cinematic scene is in progress.  For performance reasons, this should
--  only be called once a cinematic scene has been started, so that maps
--  lacking such scenes do not bother to register for these events.
-- 
---@return nil
function TryInitCinematicBehaviorBJ()
	local index
	
	if (bj_cineSceneBeingSkipped == nil) then
		bj_cineSceneBeingSkipped = CreateTrigger()
		index                    = 0
		while true do
			TriggerRegisterPlayerEvent(bj_cineSceneBeingSkipped, Player(index), EVENT_PLAYER_END_CINEMATIC)
			index = index + 1
			if index == bj_MAX_PLAYERS then break end
		end
		TriggerAddAction(bj_cineSceneBeingSkipped, CancelCineSceneBJ)
	end
end
-- ===========================================================================

---@param soundHandle sound
---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration real
---@param voiceoverDuration real
---@return nil
function SetCinematicSceneBJ(soundHandle, portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration)
	bj_cineSceneLastSound = soundHandle
	SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration)
	PlaySoundBJ(soundHandle)
end
-- ===========================================================================

---@param soundHandle sound
---@param timeType integer
---@param timeVal real
---@return real
function GetTransmissionDuration(soundHandle, timeType, timeVal)
	local duration
	
	if (timeType == bj_TIMETYPE_ADD) then
		duration = GetSoundDurationBJ(soundHandle) + timeVal
	elseif (timeType == bj_TIMETYPE_SET) then
		duration = timeVal
	elseif (timeType == bj_TIMETYPE_SUB) then
		duration = GetSoundDurationBJ(soundHandle) - timeVal
	else
		--  Unrecognized timeType - ignore timeVal.
		duration = GetSoundDurationBJ(soundHandle)
	end
	
	--  Make sure we have a non-negative duration.
	if (duration < 0) then
		duration = 0
	end
	return duration
end
-- ===========================================================================

---@param soundHandle sound
---@param timeType integer
---@param timeVal real
---@return nil
function WaitTransmissionDuration(soundHandle, timeType, timeVal)
	if (timeType == bj_TIMETYPE_SET) then
		--  If we have a static duration wait, just perform the wait.
		TriggerSleepAction(timeVal)
	
	elseif (soundHandle == nil) then
		--  If the sound does not exist, perform a default length wait.
		TriggerSleepAction(bj_NOTHING_SOUND_DURATION)
	
	elseif (timeType == bj_TIMETYPE_SUB) then
		--  If the transmission is cutting off the sound, wait for the sound
		--  to be mostly finished.
		WaitForSoundBJ(soundHandle, timeVal)
	
	elseif (timeType == bj_TIMETYPE_ADD) then
		--  If the transmission is extending beyond the sound's length, wait
		--  for it to finish, and then wait the additional time.
		WaitForSoundBJ(soundHandle, 0)
		TriggerSleepAction(timeVal)
	
	else
		--  Unrecognized timeType - ignore.
	end
end
-- ===========================================================================

---@param unitId integer
---@param color playercolor
---@param x real
---@param y real
---@param soundHandle sound
---@param unitName string
---@param message string
---@param duration real
---@return nil
function DoTransmissionBasicsXYBJ(unitId, color, x, y, soundHandle, unitName, message, duration)
	SetCinematicSceneBJ(soundHandle, unitId, color, unitName, message, duration + bj_TRANSMISSION_PORT_HANGTIME, duration)
	
	if (unitId ~= 0) then
		PingMinimap(x, y, bj_TRANSMISSION_PING_TIME)
		-- call SetCameraQuickPosition(x, y)
	end
end
-- ===========================================================================
--  Display a text message to a Player Group with an accompanying sound,
--  portrait, speech indicator, and all that good stuff.
--    - Query duration of sound
--    - Play sound
--    - Display text message for duration
--    - Display animating portrait for duration
--    - Display a speech indicator for the unit
--    - Ping the minimap
-- 

---@param toForce force
---@param whichUnit unit
---@param unitName string
---@param soundHandle sound
---@param message string
---@param timeType integer
---@param timeVal real
---@param wait boolean
---@return nil
function TransmissionFromUnitWithNameBJ(toForce, whichUnit, unitName, soundHandle, message, timeType, timeVal, wait)
	TryInitCinematicBehaviorBJ()
	
	AttachSoundToUnit(soundHandle, whichUnit)
	
	--  Ensure that the time value is non-negative.
	timeVal                     = RMaxBJ(timeVal, 0)
	
	bj_lastTransmissionDuration = GetTransmissionDuration(soundHandle, timeType, timeVal)
	bj_lastPlayedSound          = soundHandle
	
	if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		
		if (whichUnit == nil) then
			--  If the unit reference is invalid, send the transmission from the center of the map with no portrait.
			DoTransmissionBasicsXYBJ(0, PLAYER_COLOR_RED, 0, 0, soundHandle, unitName, message, bj_lastTransmissionDuration)
		else
			DoTransmissionBasicsXYBJ(GetUnitTypeId(whichUnit), GetPlayerColor(GetOwningPlayer(whichUnit)), GetUnitX(whichUnit), GetUnitY(whichUnit), soundHandle, unitName, message, bj_lastTransmissionDuration)
			if (not IsUnitHidden(whichUnit)) then
				UnitAddIndicator(whichUnit, bj_TRANSMISSION_IND_RED, bj_TRANSMISSION_IND_BLUE, bj_TRANSMISSION_IND_GREEN, bj_TRANSMISSION_IND_ALPHA)
			end
		end
	end
	
	if wait and (bj_lastTransmissionDuration > 0) then
		--  call TriggerSleepAction(bj_lastTransmissionDuration)
		WaitTransmissionDuration(soundHandle, timeType, timeVal)
	end

end
-- ===========================================================================

---@param toForce force
---@param speaker unit
---@param speakerType integer
---@param soundHandle sound
---@param timeType integer
---@param timeVal real
---@param wait boolean
---@return boolean
function PlayDialogueFromSpeakerEx(toForce, speaker, speakerType, soundHandle, timeType, timeVal, wait)
	-- Make sure that the runtime unit type and the parameter are the same,
	-- otherwise the offline animations will not match and will fail
	if GetUnitTypeId(speaker) ~= speakerType then
		debugBJDebugMsg(("Attempted to play FacialAnimation with the wrong speaker UnitType - Param: " .. I2S(speakerType) .. " Runtime: " .. I2S(GetUnitTypeId(speaker))))
		-- return false
	end
	
	TryInitCinematicBehaviorBJ()
	
	AttachSoundToUnit(soundHandle, speaker)
	
	--  Ensure that the time value is non-negative.
	timeVal                     = RMaxBJ(timeVal, 0)
	
	bj_lastTransmissionDuration = GetTransmissionDuration(soundHandle, timeType, timeVal)
	bj_lastPlayedSound          = soundHandle
	
	if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
		SetCinematicSceneBJ(soundHandle, speakerType, GetPlayerColor(GetOwningPlayer(speaker)), GetLocalizedString(GetDialogueSpeakerNameKey(soundHandle)), GetLocalizedString(GetDialogueTextKey(soundHandle)), bj_lastTransmissionDuration + bj_TRANSMISSION_PORT_HANGTIME, bj_lastTransmissionDuration)
	end
	
	if wait and (bj_lastTransmissionDuration > 0) then
		--  call TriggerSleepAction(bj_lastTransmissionDuration)
		WaitTransmissionDuration(soundHandle, timeType, timeVal)
	end
	
	return true
end
-- ===========================================================================

---@param toForce force
---@param fromPlayer player
---@param speakerType integer
---@param loc location
---@param soundHandle sound
---@param timeType integer
---@param timeVal real
---@param wait boolean
---@return boolean
function PlayDialogueFromSpeakerTypeEx(toForce, fromPlayer, speakerType, loc, soundHandle, timeType, timeVal, wait)
	TryInitCinematicBehaviorBJ()
	
	--  Ensure that the time value is non-negative.
	timeVal                     = RMaxBJ(timeVal, 0)
	
	bj_lastTransmissionDuration = GetTransmissionDuration(soundHandle, timeType, timeVal)
	bj_lastPlayedSound          = soundHandle
	
	if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
		SetCinematicSceneBJ(soundHandle, speakerType, GetPlayerColor(fromPlayer), GetLocalizedString(GetDialogueSpeakerNameKey(soundHandle)), GetLocalizedString(GetDialogueTextKey(soundHandle)), bj_lastTransmissionDuration + bj_TRANSMISSION_PORT_HANGTIME, bj_lastTransmissionDuration)
		if (speakerType ~= 0) then
			PingMinimap(GetLocationX(loc), GetLocationY(loc), bj_TRANSMISSION_PING_TIME)
		end
	end
	
	if wait and (bj_lastTransmissionDuration > 0) then
		--  call TriggerSleepAction(bj_lastTransmissionDuration)
		WaitTransmissionDuration(soundHandle, timeType, timeVal)
	end
	
	return true
end
-- ===========================================================================
--  This operates like TransmissionFromUnitWithNameBJ, but for a unit type
--  rather than a unit instance.  As such, no speech indicator is employed.
-- 

---@param toForce force
---@param fromPlayer player
---@param unitId integer
---@param unitName string
---@param loc location
---@param soundHandle sound
---@param message string
---@param timeType integer
---@param timeVal real
---@param wait boolean
---@return nil
function TransmissionFromUnitTypeWithNameBJ(toForce, fromPlayer, unitId, unitName, loc, soundHandle, message, timeType, timeVal, wait)
	TryInitCinematicBehaviorBJ()
	
	--  Ensure that the time value is non-negative.
	timeVal                     = RMaxBJ(timeVal, 0)
	
	bj_lastTransmissionDuration = GetTransmissionDuration(soundHandle, timeType, timeVal)
	bj_lastPlayedSound          = soundHandle
	
	if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		
		DoTransmissionBasicsXYBJ(unitId, GetPlayerColor(fromPlayer), GetLocationX(loc), GetLocationY(loc), soundHandle, unitName, message, bj_lastTransmissionDuration)
	end
	
	if wait and (bj_lastTransmissionDuration > 0) then
		--  call TriggerSleepAction(bj_lastTransmissionDuration)
		WaitTransmissionDuration(soundHandle, timeType, timeVal)
	end

end
-- ===========================================================================
---@return real
function GetLastTransmissionDurationBJ()
	return bj_lastTransmissionDuration
end
-- ===========================================================================

---@param flag boolean
---@return nil
function ForceCinematicSubtitlesBJ(flag)
	ForceCinematicSubtitles(flag)
end
-- ***************************************************************************
-- 
-- *  Cinematic Mode Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================
--  Makes many common UI settings changes at once, for use when beginning and
--  ending cinematic sequences.  Note that some affects apply to all players,
--  such as game speed.  This is unavoidable.
--    - Clear the screen of text messages
--    - Hide interface UI (letterbox mode)
--    - Hide game messages (ally under attack, etc.)
--    - Disable user control
--    - Disable occlusion
--    - Set game speed (for all players)
--    - Lock game speed (for all players)
--    - Disable black mask (for all players)
--    - Disable fog of war (for all players)
--    - Disable world boundary fog (for all players)
--    - Dim non-speech sound channels
--    - End any outstanding music themes
--    - Fix the random seed to a set value
--    - Reset the camera smoothing factor
-- 

---@param cineMode boolean
---@param forForce force
---@param interfaceFadeTime real
---@return nil
function CinematicModeExBJ(cineMode, forForce, interfaceFadeTime)
	--  If the game hasn't started yet, perform interface fades immediately
	if (not bj_gameStarted) then
		interfaceFadeTime = 0
	end
	
	if (cineMode) then
		--  Save the UI state so that we can restore it later.
		if (not bj_cineModeAlreadyIn) then
			SetCinematicAudio(true)
			bj_cineModeAlreadyIn        = true
			bj_cineModePriorSpeed       = GetGameSpeed()
			bj_cineModePriorFogSetting  = IsFogEnabled()
			bj_cineModePriorMaskSetting = IsFogMaskEnabled()
			bj_cineModePriorDawnDusk    = IsDawnDuskEnabled()
			bj_cineModeSavedSeed        = GetRandomInt(0, 1000000)
		end
		
		--  Perform local changes
		if (IsPlayerInForce(GetLocalPlayer(), forForce)) then
			--  Use only local code (no net traffic) within this block to avoid desyncs.
			ClearTextMessages()
			ShowInterface(false, interfaceFadeTime)
			EnableUserControl(false)
			EnableOcclusion(false)
			SetCineModeVolumeGroupsBJ()
		end
		
		--  Perform global changes
		SetGameSpeed(bj_CINEMODE_GAMESPEED)
		SetMapFlag(MAP_LOCK_SPEED, true)
		FogMaskEnable(false)
		FogEnable(false)
		EnableWorldFogBoundary(false)
		EnableDawnDusk(false)
		
		--  Use a fixed random seed, so that cinematics play consistently.
		SetRandomSeed(0)
	else
		bj_cineModeAlreadyIn = false
		SetCinematicAudio(false)
		
		--  Perform local changes
		if (IsPlayerInForce(GetLocalPlayer(), forForce)) then
			--  Use only local code (no net traffic) within this block to avoid desyncs.
			ShowInterface(true, interfaceFadeTime)
			EnableUserControl(true)
			EnableOcclusion(true)
			VolumeGroupReset()
			EndThematicMusic()
			CameraResetSmoothingFactorBJ()
		end
		
		--  Perform global changes
		SetMapFlag(MAP_LOCK_SPEED, false)
		SetGameSpeed(bj_cineModePriorSpeed)
		FogMaskEnable(bj_cineModePriorMaskSetting)
		FogEnable(bj_cineModePriorFogSetting)
		EnableWorldFogBoundary(true)
		EnableDawnDusk(bj_cineModePriorDawnDusk)
		SetRandomSeed(bj_cineModeSavedSeed)
	end
end
-- ===========================================================================

---@param cineMode boolean
---@param forForce force
---@return nil
function CinematicModeBJ(cineMode, forForce)
	CinematicModeExBJ(cineMode, forForce, bj_CINEMODE_INTERFACEFADE)
end
-- ***************************************************************************
-- 
-- *  Cinematic Filter Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param flag boolean
---@return nil
function DisplayCineFilterBJ(flag)
	DisplayCineFilter(flag)
end
-- ===========================================================================

---@param red real
---@param green real
---@param blue real
---@param duration real
---@param tex string
---@param startTrans real
---@param endTrans real
---@return nil
function CinematicFadeCommonBJ(red, green, blue, duration, tex, startTrans, endTrans)
	if (duration == 0) then
		--  If the fade is instant, use the same starting and ending values,
		--  so that we effectively do a set rather than a fade.
		startTrans = endTrans
	end
	EnableUserUI(false)
	SetCineFilterTexture(tex)
	SetCineFilterBlendMode(BLEND_MODE_BLEND)
	SetCineFilterTexMapFlags(TEXMAP_FLAG_NONE)
	SetCineFilterStartUV(0, 0, 1, 1)
	SetCineFilterEndUV(0, 0, 1, 1)
	SetCineFilterStartColor(PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - startTrans))
	SetCineFilterEndColor(PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - endTrans))
	SetCineFilterDuration(duration)
	DisplayCineFilter(true)
end
-- ===========================================================================
---@return nil
function FinishCinematicFadeBJ()
	DestroyTimer(bj_cineFadeFinishTimer)
	bj_cineFadeFinishTimer = nil
	DisplayCineFilter(false)
	EnableUserUI(true)
end
-- ===========================================================================

---@param duration real
---@return nil
function FinishCinematicFadeAfterBJ(duration)
	--  Create a timer to end the cinematic fade.
	bj_cineFadeFinishTimer = CreateTimer()
	TimerStart(bj_cineFadeFinishTimer, duration, false, FinishCinematicFadeBJ)
end
-- ===========================================================================
---@return nil
function ContinueCinematicFadeBJ()
	DestroyTimer(bj_cineFadeContinueTimer)
	bj_cineFadeContinueTimer = nil
	CinematicFadeCommonBJ(bj_cineFadeContinueRed, bj_cineFadeContinueGreen, bj_cineFadeContinueBlue, bj_cineFadeContinueDuration, bj_cineFadeContinueTex, bj_cineFadeContinueTrans, 100)
end
-- ===========================================================================

---@param duration real
---@param red real
---@param green real
---@param blue real
---@param trans real
---@param tex string
---@return nil
function ContinueCinematicFadeAfterBJ(duration, red, green, blue, trans, tex)
	bj_cineFadeContinueRed      = red
	bj_cineFadeContinueGreen    = green
	bj_cineFadeContinueBlue     = blue
	bj_cineFadeContinueTrans    = trans
	bj_cineFadeContinueDuration = duration
	bj_cineFadeContinueTex      = tex
	
	--  Create a timer to continue the cinematic fade.
	bj_cineFadeContinueTimer    = CreateTimer()
	TimerStart(bj_cineFadeContinueTimer, duration, false, ContinueCinematicFadeBJ)
end
-- ===========================================================================
---@return nil
function AbortCinematicFadeBJ()
	if (bj_cineFadeContinueTimer ~= nil) then
		DestroyTimer(bj_cineFadeContinueTimer)
	end
	
	if (bj_cineFadeFinishTimer ~= nil) then
		DestroyTimer(bj_cineFadeFinishTimer)
	end
end
-- ===========================================================================

---@param fadetype integer
---@param duration real
---@param tex string
---@param red real
---@param green real
---@param blue real
---@param trans real
---@return nil
function CinematicFadeBJ(fadetype, duration, tex, red, green, blue, trans)
	if (fadetype == bj_CINEFADETYPE_FADEOUT) then
		--  Fade out to the requested color.
		AbortCinematicFadeBJ()
		CinematicFadeCommonBJ(red, green, blue, duration, tex, 100, trans)
	elseif (fadetype == bj_CINEFADETYPE_FADEIN) then
		--  Fade in from the requested color.
		AbortCinematicFadeBJ()
		CinematicFadeCommonBJ(red, green, blue, duration, tex, trans, 100)
		FinishCinematicFadeAfterBJ(duration)
	elseif (fadetype == bj_CINEFADETYPE_FADEOUTIN) then
		--  Fade out to the requested color, and then fade back in from it.
		if (duration > 0) then
			AbortCinematicFadeBJ()
			CinematicFadeCommonBJ(red, green, blue, duration * 0.5, tex, 100, trans)
			ContinueCinematicFadeAfterBJ(duration * 0.5, red, green, blue, trans, tex)
			FinishCinematicFadeAfterBJ(duration)
		end
	else
		--  Unrecognized fadetype - ignore the request.
	end
end
-- ===========================================================================

---@param duration real
---@param bmode blendmode
---@param tex string
---@param red0 real
---@param green0 real
---@param blue0 real
---@param trans0 real
---@param red1 real
---@param green1 real
---@param blue1 real
---@param trans1 real
---@return nil
function CinematicFilterGenericBJ(duration, bmode, tex, red0, green0, blue0, trans0, red1, green1, blue1, trans1)
	AbortCinematicFadeBJ()
	SetCineFilterTexture(tex)
	SetCineFilterBlendMode(bmode)
	SetCineFilterTexMapFlags(TEXMAP_FLAG_NONE)
	SetCineFilterStartUV(0, 0, 1, 1)
	SetCineFilterEndUV(0, 0, 1, 1)
	SetCineFilterStartColor(PercentTo255(red0), PercentTo255(green0), PercentTo255(blue0), PercentTo255(100.0 - trans0))
	SetCineFilterEndColor(PercentTo255(red1), PercentTo255(green1), PercentTo255(blue1), PercentTo255(100.0 - trans1))
	SetCineFilterDuration(duration)
	DisplayCineFilter(true)
end
-- ***************************************************************************
-- 
-- *  Rescuable Unit Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================
--  Rescues a unit for a player.  This performs the default rescue behavior,
--  including a rescue sound, flashing selection circle, ownership change,
--  and optionally a unit color change.
-- 

---@param whichUnit unit
---@param rescuer player
---@param changeColor boolean
---@return nil
function RescueUnitBJ(whichUnit, rescuer, changeColor)
	if IsUnitDeadBJ(whichUnit) or (GetOwningPlayer(whichUnit) == rescuer) then
		return
	end
	
	StartSound(bj_rescueSound)
	SetUnitOwner(whichUnit, rescuer, changeColor)
	UnitAddIndicator(whichUnit, 0, 255, 0, 255)
	PingMinimapForPlayer(rescuer, GetUnitX(whichUnit), GetUnitY(whichUnit), bj_RESCUE_PING_TIME)
end
-- ===========================================================================
---@return nil
function TriggerActionUnitRescuedBJ()
	local theUnit = GetTriggerUnit()
	
	if IsUnitType(theUnit, UNIT_TYPE_STRUCTURE) then
		RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorBldg)
	else
		RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorUnit)
	end
end
-- ===========================================================================
--  Attempt to init triggers for default rescue behavior.  For performance
--  reasons, this should only be attempted if a player is set to Rescuable,
--  or if a specific unit is thus flagged.
-- 
---@return nil
function TryInitRescuableTriggersBJ()
	local index
	
	if (bj_rescueUnitBehavior == nil) then
		bj_rescueUnitBehavior = CreateTrigger()
		index                 = 0
		while true do
			TriggerRegisterPlayerUnitEvent(bj_rescueUnitBehavior, Player(index), EVENT_PLAYER_UNIT_RESCUED, nil)
			index = index + 1
			if index == bj_MAX_PLAYER_SLOTS then break end
		end
		TriggerAddAction(bj_rescueUnitBehavior, TriggerActionUnitRescuedBJ)
	end
end
-- ===========================================================================
--  Determines whether or not rescued units automatically change color upon
--  being rescued.
-- 

---@param changeColor boolean
---@return nil
function SetRescueUnitColorChangeBJ(changeColor)
	bj_rescueChangeColorUnit = changeColor
end
-- ===========================================================================
--  Determines whether or not rescued buildings automatically change color
--  upon being rescued.
-- 

---@param changeColor boolean
---@return nil
function SetRescueBuildingColorChangeBJ(changeColor)
	bj_rescueChangeColorBldg = changeColor
end
-- ===========================================================================
---@return nil
function MakeUnitRescuableToForceBJEnum()
	TryInitRescuableTriggersBJ()
	SetUnitRescuable(bj_makeUnitRescuableUnit, GetEnumPlayer(), bj_makeUnitRescuableFlag)
end
-- ===========================================================================

---@param whichUnit unit
---@param isRescuable boolean
---@param whichForce force
---@return nil
function MakeUnitRescuableToForceBJ(whichUnit, isRescuable, whichForce)
	--  Flag the unit as rescuable/unrescuable for the appropriate players.
	bj_makeUnitRescuableUnit = whichUnit
	bj_makeUnitRescuableFlag = isRescuable
	ForForce(whichForce, MakeUnitRescuableToForceBJEnum)
end
-- ===========================================================================
---@return nil
function InitRescuableBehaviorBJ()
	local index
	
	index = 0
	while true do
		--  If at least one player slot is "Rescuable"-controlled, init the
		--  rescue behavior triggers.
		if (GetPlayerController(Player(index)) == MAP_CONTROL_RESCUABLE) then
			TryInitRescuableTriggersBJ()
			return
		end
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
-- ***************************************************************************
-- 
-- *  Research and Upgrade Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param techid integer
---@param levels integer
---@param whichPlayer player
---@return nil
function SetPlayerTechResearchedSwap(techid, levels, whichPlayer)
	SetPlayerTechResearched(whichPlayer, techid, levels)
end
-- ===========================================================================

---@param techid integer
---@param maximum integer
---@param whichPlayer player
---@return nil
function SetPlayerTechMaxAllowedSwap(techid, maximum, whichPlayer)
	SetPlayerTechMaxAllowed(whichPlayer, techid, maximum)
end
-- ===========================================================================

---@param maximum integer
---@param whichPlayer player
---@return nil
function SetPlayerMaxHeroesAllowed(maximum, whichPlayer)
	SetPlayerTechMaxAllowed(whichPlayer, FourCC('HERO'), maximum)
end
-- ===========================================================================

---@param techid integer
---@param whichPlayer player
---@return integer
function GetPlayerTechCountSimple(techid, whichPlayer)
	return GetPlayerTechCount(whichPlayer, techid, true)
end
-- ===========================================================================

---@param techid integer
---@param whichPlayer player
---@return integer
function GetPlayerTechMaxAllowedSwap(techid, whichPlayer)
	return GetPlayerTechMaxAllowed(whichPlayer, techid)
end
-- ===========================================================================

---@param avail boolean
---@param abilid integer
---@param whichPlayer player
---@return nil
function SetPlayerAbilityAvailableBJ(avail, abilid, whichPlayer)
	SetPlayerAbilityAvailable(whichPlayer, abilid, avail)
end
-- ***************************************************************************
-- 
-- *  Campaign Utility Functions
-- 
-- ***************************************************************************

---@param campaignNumber integer
---@return nil
function SetCampaignMenuRaceBJ(campaignNumber)
	if (campaignNumber == bj_CAMPAIGN_INDEX_T) then
		SetCampaignMenuRace(RACE_OTHER)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_H) then
		SetCampaignMenuRace(RACE_HUMAN)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_U) then
		SetCampaignMenuRace(RACE_UNDEAD)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_O) then
		SetCampaignMenuRace(RACE_ORC)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_N) then
		SetCampaignMenuRace(RACE_NIGHTELF)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_XN) then
		SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XN)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_XH) then
		SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XH)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_XU) then
		SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XU)
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_XO) then
		SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XO)
	else
		--  Unrecognized campaign - ignore the request
	end
end
-- ===========================================================================
--  Converts a single campaign mission designation into campaign and mission
--  numbers.  The 1000's digit is considered the campaign index, and the 1's
--  digit is considered the mission index within that campaign.  This is done
--  so that the trigger for this can use a single drop-down to list all of
--  the campaign missions.
-- 

---@param available boolean
---@param missionIndex integer
---@return nil
function SetMissionAvailableBJ(available, missionIndex)
	local campaignNumber = missionIndex / 1000
	local missionNumber  = missionIndex - campaignNumber * 1000
	
	SetMissionAvailable(campaignNumber, missionNumber, available)
end
-- ===========================================================================

---@param available boolean
---@param campaignNumber integer
---@return nil
function SetCampaignAvailableBJ(available, campaignNumber)
	local campaignOffset
	
	if (campaignNumber == bj_CAMPAIGN_INDEX_H) then
		SetTutorialCleared(true)
	end
	
	if (campaignNumber == bj_CAMPAIGN_INDEX_XN) then
		campaignOffset = bj_CAMPAIGN_OFFSET_XN
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_XH) then
		campaignOffset = bj_CAMPAIGN_OFFSET_XH
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_XU) then
		campaignOffset = bj_CAMPAIGN_OFFSET_XU
	elseif (campaignNumber == bj_CAMPAIGN_INDEX_XO) then
		campaignOffset = bj_CAMPAIGN_OFFSET_XO
	else
		campaignOffset = campaignNumber
	end
	
	SetCampaignAvailable(campaignOffset, available)
	SetCampaignMenuRaceBJ(campaignNumber)
	ForceCampaignSelectScreen()
end
-- ===========================================================================

---@param available boolean
---@param cinematicIndex integer
---@return nil
function SetCinematicAvailableBJ(available, cinematicIndex)
	if (cinematicIndex == bj_CINEMATICINDEX_TOP) then
		SetOpCinematicAvailable(bj_CAMPAIGN_INDEX_T, available)
		PlayCinematic("TutorialOp")
	elseif (cinematicIndex == bj_CINEMATICINDEX_HOP) then
		SetOpCinematicAvailable(bj_CAMPAIGN_INDEX_H, available)
		PlayCinematic("HumanOp")
	elseif (cinematicIndex == bj_CINEMATICINDEX_HED) then
		SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_H, available)
		PlayCinematic("HumanEd")
	elseif (cinematicIndex == bj_CINEMATICINDEX_OOP) then
		SetOpCinematicAvailable(bj_CAMPAIGN_INDEX_O, available)
		PlayCinematic("OrcOp")
	elseif (cinematicIndex == bj_CINEMATICINDEX_OED) then
		SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_O, available)
		PlayCinematic("OrcEd")
	elseif (cinematicIndex == bj_CINEMATICINDEX_UOP) then
		SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_U, available)
		PlayCinematic("UndeadOp")
	elseif (cinematicIndex == bj_CINEMATICINDEX_UED) then
		SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_U, available)
		PlayCinematic("UndeadEd")
	elseif (cinematicIndex == bj_CINEMATICINDEX_NOP) then
		SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_N, available)
		PlayCinematic("NightElfOp")
	elseif (cinematicIndex == bj_CINEMATICINDEX_NED) then
		SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_N, available)
		PlayCinematic("NightElfEd")
	elseif (cinematicIndex == bj_CINEMATICINDEX_XOP) then
		SetOpCinematicAvailable(bj_CAMPAIGN_OFFSET_XN, available)
		--  call PlayCinematic( "IntroX" )
	elseif (cinematicIndex == bj_CINEMATICINDEX_XED) then
		SetEdCinematicAvailable(bj_CAMPAIGN_OFFSET_XU, available)
		PlayCinematic("OutroX")
	else
		--  Unrecognized cinematic - ignore the request.
	end
end
-- ===========================================================================

---@param campaignFile string
---@return gamecache
function InitGameCacheBJ(campaignFile)
	bj_lastCreatedGameCache = InitGameCache(campaignFile)
	return bj_lastCreatedGameCache
end
-- ===========================================================================

---@param cache gamecache
---@return boolean
function SaveGameCacheBJ(cache)
	return SaveGameCache(cache)
end
-- ===========================================================================
---@return gamecache
function GetLastCreatedGameCacheBJ()
	return bj_lastCreatedGameCache
end
-- ===========================================================================
---@return hashtable
function InitHashtableBJ()
	bj_lastCreatedHashtable = InitHashtable()
	return bj_lastCreatedHashtable
end
-- ===========================================================================
---@return hashtable
function GetLastCreatedHashtableBJ()
	return bj_lastCreatedHashtable
end
-- ===========================================================================

---@param value real
---@param key string
---@param missionKey string
---@param cache gamecache
---@return nil
function StoreRealBJ(value, key, missionKey, cache)
	StoreReal(cache, missionKey, key, value)
end
-- ===========================================================================

---@param value integer
---@param key string
---@param missionKey string
---@param cache gamecache
---@return nil
function StoreIntegerBJ(value, key, missionKey, cache)
	StoreInteger(cache, missionKey, key, value)
end
-- ===========================================================================

---@param value boolean
---@param key string
---@param missionKey string
---@param cache gamecache
---@return nil
function StoreBooleanBJ(value, key, missionKey, cache)
	StoreBoolean(cache, missionKey, key, value)
end
-- ===========================================================================

---@param value string
---@param key string
---@param missionKey string
---@param cache gamecache
---@return boolean
function StoreStringBJ(value, key, missionKey, cache)
	return StoreString(cache, missionKey, key, value)
end
-- ===========================================================================

---@param whichUnit unit
---@param key string
---@param missionKey string
---@param cache gamecache
---@return boolean
function StoreUnitBJ(whichUnit, key, missionKey, cache)
	return StoreUnit(cache, missionKey, key, whichUnit)
end
-- ===========================================================================

---@param value real
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return nil
function SaveRealBJ(value, key, missionKey, table)
	SaveReal(table, missionKey, key, value)
end
-- ===========================================================================

---@param value integer
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return nil
function SaveIntegerBJ(value, key, missionKey, table)
	SaveInteger(table, missionKey, key, value)
end
-- ===========================================================================

---@param value boolean
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return nil
function SaveBooleanBJ(value, key, missionKey, table)
	SaveBoolean(table, missionKey, key, value)
end
-- ===========================================================================

---@param value string
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveStringBJ(value, key, missionKey, table)
	return SaveStr(table, missionKey, key, value)
end
-- ===========================================================================

---@param whichPlayer player
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SavePlayerHandleBJ(whichPlayer, key, missionKey, table)
	return SavePlayerHandle(table, missionKey, key, whichPlayer)
end
-- ===========================================================================

---@param whichWidget widget
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveWidgetHandleBJ(whichWidget, key, missionKey, table)
	return SaveWidgetHandle(table, missionKey, key, whichWidget)
end
-- ===========================================================================

---@param whichDestructable destructable
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveDestructableHandleBJ(whichDestructable, key, missionKey, table)
	return SaveDestructableHandle(table, missionKey, key, whichDestructable)
end
-- ===========================================================================

---@param whichItem item
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveItemHandleBJ(whichItem, key, missionKey, table)
	return SaveItemHandle(table, missionKey, key, whichItem)
end
-- ===========================================================================

---@param whichUnit unit
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveUnitHandleBJ(whichUnit, key, missionKey, table)
	return SaveUnitHandle(table, missionKey, key, whichUnit)
end
-- ===========================================================================

---@param whichAbility ability
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveAbilityHandleBJ(whichAbility, key, missionKey, table)
	return SaveAbilityHandle(table, missionKey, key, whichAbility)
end
-- ===========================================================================

---@param whichTimer timer
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTimerHandleBJ(whichTimer, key, missionKey, table)
	return SaveTimerHandle(table, missionKey, key, whichTimer)
end
-- ===========================================================================

---@param whichTrigger trigger
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerHandleBJ(whichTrigger, key, missionKey, table)
	return SaveTriggerHandle(table, missionKey, key, whichTrigger)
end
-- ===========================================================================

---@param whichTriggercondition triggercondition
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerConditionHandleBJ(whichTriggercondition, key, missionKey, table)
	return SaveTriggerConditionHandle(table, missionKey, key, whichTriggercondition)
end
-- ===========================================================================

---@param whichTriggeraction triggeraction
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerActionHandleBJ(whichTriggeraction, key, missionKey, table)
	return SaveTriggerActionHandle(table, missionKey, key, whichTriggeraction)
end
-- ===========================================================================

---@param whichEvent event
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTriggerEventHandleBJ(whichEvent, key, missionKey, table)
	return SaveTriggerEventHandle(table, missionKey, key, whichEvent)
end
-- ===========================================================================

---@param whichForce force
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveForceHandleBJ(whichForce, key, missionKey, table)
	return SaveForceHandle(table, missionKey, key, whichForce)
end
-- ===========================================================================

---@param whichGroup group
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveGroupHandleBJ(whichGroup, key, missionKey, table)
	return SaveGroupHandle(table, missionKey, key, whichGroup)
end
-- ===========================================================================

---@param whichLocation location
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveLocationHandleBJ(whichLocation, key, missionKey, table)
	return SaveLocationHandle(table, missionKey, key, whichLocation)
end
-- ===========================================================================

---@param whichRect rect
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveRectHandleBJ(whichRect, key, missionKey, table)
	return SaveRectHandle(table, missionKey, key, whichRect)
end
-- ===========================================================================

---@param whichBoolexpr boolexpr
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveBooleanExprHandleBJ(whichBoolexpr, key, missionKey, table)
	return SaveBooleanExprHandle(table, missionKey, key, whichBoolexpr)
end
-- ===========================================================================

---@param whichSound sound
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveSoundHandleBJ(whichSound, key, missionKey, table)
	return SaveSoundHandle(table, missionKey, key, whichSound)
end
-- ===========================================================================

---@param whichEffect effect
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveEffectHandleBJ(whichEffect, key, missionKey, table)
	return SaveEffectHandle(table, missionKey, key, whichEffect)
end
-- ===========================================================================

---@param whichUnitpool unitpool
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveUnitPoolHandleBJ(whichUnitpool, key, missionKey, table)
	return SaveUnitPoolHandle(table, missionKey, key, whichUnitpool)
end
-- ===========================================================================

---@param whichItempool itempool
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveItemPoolHandleBJ(whichItempool, key, missionKey, table)
	return SaveItemPoolHandle(table, missionKey, key, whichItempool)
end
-- ===========================================================================

---@param whichQuest quest
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveQuestHandleBJ(whichQuest, key, missionKey, table)
	return SaveQuestHandle(table, missionKey, key, whichQuest)
end
-- ===========================================================================

---@param whichQuestitem questitem
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveQuestItemHandleBJ(whichQuestitem, key, missionKey, table)
	return SaveQuestItemHandle(table, missionKey, key, whichQuestitem)
end
-- ===========================================================================

---@param whichDefeatcondition defeatcondition
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveDefeatConditionHandleBJ(whichDefeatcondition, key, missionKey, table)
	return SaveDefeatConditionHandle(table, missionKey, key, whichDefeatcondition)
end
-- ===========================================================================

---@param whichTimerdialog timerdialog
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTimerDialogHandleBJ(whichTimerdialog, key, missionKey, table)
	return SaveTimerDialogHandle(table, missionKey, key, whichTimerdialog)
end
-- ===========================================================================

---@param whichLeaderboard leaderboard
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveLeaderboardHandleBJ(whichLeaderboard, key, missionKey, table)
	return SaveLeaderboardHandle(table, missionKey, key, whichLeaderboard)
end
-- ===========================================================================

---@param whichMultiboard multiboard
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveMultiboardHandleBJ(whichMultiboard, key, missionKey, table)
	return SaveMultiboardHandle(table, missionKey, key, whichMultiboard)
end
-- ===========================================================================

---@param whichMultiboarditem multiboarditem
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveMultiboardItemHandleBJ(whichMultiboarditem, key, missionKey, table)
	return SaveMultiboardItemHandle(table, missionKey, key, whichMultiboarditem)
end
-- ===========================================================================

---@param whichTrackable trackable
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTrackableHandleBJ(whichTrackable, key, missionKey, table)
	return SaveTrackableHandle(table, missionKey, key, whichTrackable)
end
-- ===========================================================================

---@param whichDialog dialog
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveDialogHandleBJ(whichDialog, key, missionKey, table)
	return SaveDialogHandle(table, missionKey, key, whichDialog)
end
-- ===========================================================================

---@param whichButton button
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveButtonHandleBJ(whichButton, key, missionKey, table)
	return SaveButtonHandle(table, missionKey, key, whichButton)
end
-- ===========================================================================

---@param whichTexttag texttag
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveTextTagHandleBJ(whichTexttag, key, missionKey, table)
	return SaveTextTagHandle(table, missionKey, key, whichTexttag)
end
-- ===========================================================================

---@param whichLightning lightning
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveLightningHandleBJ(whichLightning, key, missionKey, table)
	return SaveLightningHandle(table, missionKey, key, whichLightning)
end
-- ===========================================================================

---@param whichImage image
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveImageHandleBJ(whichImage, key, missionKey, table)
	return SaveImageHandle(table, missionKey, key, whichImage)
end
-- ===========================================================================

---@param whichUbersplat ubersplat
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveUbersplatHandleBJ(whichUbersplat, key, missionKey, table)
	return SaveUbersplatHandle(table, missionKey, key, whichUbersplat)
end
-- ===========================================================================

---@param whichRegion region
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveRegionHandleBJ(whichRegion, key, missionKey, table)
	return SaveRegionHandle(table, missionKey, key, whichRegion)
end
-- ===========================================================================

---@param whichFogState fogstate
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveFogStateHandleBJ(whichFogState, key, missionKey, table)
	return SaveFogStateHandle(table, missionKey, key, whichFogState)
end
-- ===========================================================================

---@param whichFogModifier fogmodifier
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveFogModifierHandleBJ(whichFogModifier, key, missionKey, table)
	return SaveFogModifierHandle(table, missionKey, key, whichFogModifier)
end
-- ===========================================================================

---@param whichAgent agent
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveAgentHandleBJ(whichAgent, key, missionKey, table)
	return SaveAgentHandle(table, missionKey, key, whichAgent)
end
-- ===========================================================================

---@param whichHashtable hashtable
---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function SaveHashtableHandleBJ(whichHashtable, key, missionKey, table)
	return SaveHashtableHandle(table, missionKey, key, whichHashtable)
end
-- ===========================================================================

---@param key string
---@param missionKey string
---@param cache gamecache
---@return real
function GetStoredRealBJ(key, missionKey, cache)
	-- call SyncStoredReal(cache, missionKey, key)
	return GetStoredReal(cache, missionKey, key)
end
-- ===========================================================================

---@param key string
---@param missionKey string
---@param cache gamecache
---@return integer
function GetStoredIntegerBJ(key, missionKey, cache)
	-- call SyncStoredInteger(cache, missionKey, key)
	return GetStoredInteger(cache, missionKey, key)
end
-- ===========================================================================

---@param key string
---@param missionKey string
---@param cache gamecache
---@return boolean
function GetStoredBooleanBJ(key, missionKey, cache)
	-- call SyncStoredBoolean(cache, missionKey, key)
	return GetStoredBoolean(cache, missionKey, key)
end
-- ===========================================================================

---@param key string
---@param missionKey string
---@param cache gamecache
---@return string
function GetStoredStringBJ(key, missionKey, cache)
	local s
	
	-- call SyncStoredString(cache, missionKey, key)
	s = GetStoredString(cache, missionKey, key)
	if (s == nil) then
		return ""
	else
		return s
	end
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return real
function LoadRealBJ(key, missionKey, table)
	-- call SyncStoredReal(table, missionKey, key)
	return LoadReal(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return integer
function LoadIntegerBJ(key, missionKey, table)
	-- call SyncStoredInteger(table, missionKey, key)
	return LoadInteger(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function LoadBooleanBJ(key, missionKey, table)
	-- call SyncStoredBoolean(table, missionKey, key)
	return LoadBoolean(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return string
function LoadStringBJ(key, missionKey, table)
	local s
	
	-- call SyncStoredString(table, missionKey, key)
	s = LoadStr(table, missionKey, key)
	if (s == nil) then
		return ""
	else
		return s
	end
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return player
function LoadPlayerHandleBJ(key, missionKey, table)
	return LoadPlayerHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return widget
function LoadWidgetHandleBJ(key, missionKey, table)
	return LoadWidgetHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return destructable
function LoadDestructableHandleBJ(key, missionKey, table)
	return LoadDestructableHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return item
function LoadItemHandleBJ(key, missionKey, table)
	return LoadItemHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return unit
function LoadUnitHandleBJ(key, missionKey, table)
	return LoadUnitHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return ability
function LoadAbilityHandleBJ(key, missionKey, table)
	return LoadAbilityHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return timer
function LoadTimerHandleBJ(key, missionKey, table)
	return LoadTimerHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return trigger
function LoadTriggerHandleBJ(key, missionKey, table)
	return LoadTriggerHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return triggercondition
function LoadTriggerConditionHandleBJ(key, missionKey, table)
	return LoadTriggerConditionHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return triggeraction
function LoadTriggerActionHandleBJ(key, missionKey, table)
	return LoadTriggerActionHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return event
function LoadTriggerEventHandleBJ(key, missionKey, table)
	return LoadTriggerEventHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return force
function LoadForceHandleBJ(key, missionKey, table)
	return LoadForceHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return group
function LoadGroupHandleBJ(key, missionKey, table)
	return LoadGroupHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return location
function LoadLocationHandleBJ(key, missionKey, table)
	return LoadLocationHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return rect
function LoadRectHandleBJ(key, missionKey, table)
	return LoadRectHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return boolexpr
function LoadBooleanExprHandleBJ(key, missionKey, table)
	return LoadBooleanExprHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return sound
function LoadSoundHandleBJ(key, missionKey, table)
	return LoadSoundHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return effect
function LoadEffectHandleBJ(key, missionKey, table)
	return LoadEffectHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return unitpool
function LoadUnitPoolHandleBJ(key, missionKey, table)
	return LoadUnitPoolHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return itempool
function LoadItemPoolHandleBJ(key, missionKey, table)
	return LoadItemPoolHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return quest
function LoadQuestHandleBJ(key, missionKey, table)
	return LoadQuestHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return questitem
function LoadQuestItemHandleBJ(key, missionKey, table)
	return LoadQuestItemHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return defeatcondition
function LoadDefeatConditionHandleBJ(key, missionKey, table)
	return LoadDefeatConditionHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return timerdialog
function LoadTimerDialogHandleBJ(key, missionKey, table)
	return LoadTimerDialogHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return leaderboard
function LoadLeaderboardHandleBJ(key, missionKey, table)
	return LoadLeaderboardHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return multiboard
function LoadMultiboardHandleBJ(key, missionKey, table)
	return LoadMultiboardHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return multiboarditem
function LoadMultiboardItemHandleBJ(key, missionKey, table)
	return LoadMultiboardItemHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return trackable
function LoadTrackableHandleBJ(key, missionKey, table)
	return LoadTrackableHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return dialog
function LoadDialogHandleBJ(key, missionKey, table)
	return LoadDialogHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return button
function LoadButtonHandleBJ(key, missionKey, table)
	return LoadButtonHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return texttag
function LoadTextTagHandleBJ(key, missionKey, table)
	return LoadTextTagHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return lightning
function LoadLightningHandleBJ(key, missionKey, table)
	return LoadLightningHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return image
function LoadImageHandleBJ(key, missionKey, table)
	return LoadImageHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return ubersplat
function LoadUbersplatHandleBJ(key, missionKey, table)
	return LoadUbersplatHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return region
function LoadRegionHandleBJ(key, missionKey, table)
	return LoadRegionHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return fogstate
function LoadFogStateHandleBJ(key, missionKey, table)
	return LoadFogStateHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return fogmodifier
function LoadFogModifierHandleBJ(key, missionKey, table)
	return LoadFogModifierHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key integer
---@param missionKey integer
---@param table hashtable
---@return hashtable
function LoadHashtableHandleBJ(key, missionKey, table)
	return LoadHashtableHandle(table, missionKey, key)
end
-- ===========================================================================

---@param key string
---@param missionKey string
---@param cache gamecache
---@param forWhichPlayer player
---@param loc location
---@param facing real
---@return unit
function RestoreUnitLocFacingAngleBJ(key, missionKey, cache, forWhichPlayer, loc, facing)
	-- call SyncStoredUnit(cache, missionKey, key)
	bj_lastLoadedUnit = RestoreUnit(cache, missionKey, key, forWhichPlayer, GetLocationX(loc), GetLocationY(loc), facing)
	return bj_lastLoadedUnit
end
-- ===========================================================================

---@param key string
---@param missionKey string
---@param cache gamecache
---@param forWhichPlayer player
---@param loc location
---@param lookAt location
---@return unit
function RestoreUnitLocFacingPointBJ(key, missionKey, cache, forWhichPlayer, loc, lookAt)
	-- call SyncStoredUnit(cache, missionKey, key)
	return RestoreUnitLocFacingAngleBJ(key, missionKey, cache, forWhichPlayer, loc, AngleBetweenPoints(loc, lookAt))
end
-- ===========================================================================
---@return unit
function GetLastRestoredUnitBJ()
	return bj_lastLoadedUnit
end
-- ===========================================================================

---@param cache gamecache
---@return nil
function FlushGameCacheBJ(cache)
	FlushGameCache(cache)
end
-- ===========================================================================

---@param missionKey string
---@param cache gamecache
---@return nil
function FlushStoredMissionBJ(missionKey, cache)
	FlushStoredMission(cache, missionKey)
end
-- ===========================================================================

---@param table hashtable
---@return nil
function FlushParentHashtableBJ(table)
	FlushParentHashtable(table)
end
-- ===========================================================================

---@param missionKey integer
---@param table hashtable
---@return nil
function FlushChildHashtableBJ(missionKey, table)
	FlushChildHashtable(table, missionKey)
end
-- ===========================================================================

---@param key string
---@param valueType integer
---@param missionKey string
---@param cache gamecache
---@return boolean
function HaveStoredValue(key, valueType, missionKey, cache)
	if (valueType == bj_GAMECACHE_BOOLEAN) then
		return HaveStoredBoolean(cache, missionKey, key)
	elseif (valueType == bj_GAMECACHE_INTEGER) then
		return HaveStoredInteger(cache, missionKey, key)
	elseif (valueType == bj_GAMECACHE_REAL) then
		return HaveStoredReal(cache, missionKey, key)
	elseif (valueType == bj_GAMECACHE_UNIT) then
		return HaveStoredUnit(cache, missionKey, key)
	elseif (valueType == bj_GAMECACHE_STRING) then
		return HaveStoredString(cache, missionKey, key)
	else
		--  Unrecognized value type - ignore the request.
		return false
	end
end
-- ===========================================================================

---@param key integer
---@param valueType integer
---@param missionKey integer
---@param table hashtable
---@return boolean
function HaveSavedValue(key, valueType, missionKey, table)
	if (valueType == bj_HASHTABLE_BOOLEAN) then
		return HaveSavedBoolean(table, missionKey, key)
	elseif (valueType == bj_HASHTABLE_INTEGER) then
		return HaveSavedInteger(table, missionKey, key)
	elseif (valueType == bj_HASHTABLE_REAL) then
		return HaveSavedReal(table, missionKey, key)
	elseif (valueType == bj_HASHTABLE_STRING) then
		return HaveSavedString(table, missionKey, key)
	elseif (valueType == bj_HASHTABLE_HANDLE) then
		return HaveSavedHandle(table, missionKey, key)
	else
		--  Unrecognized value type - ignore the request.
		return false
	end
end
-- ===========================================================================

---@param show boolean
---@param whichButton integer
---@return nil
function ShowCustomCampaignButton(show, whichButton)
	SetCustomCampaignButtonVisible(whichButton - 1, show)
end
-- ===========================================================================

---@param whichButton integer
---@return boolean
function IsCustomCampaignButtonVisibile(whichButton)
	return GetCustomCampaignButtonVisible(whichButton - 1)
end
-- ===========================================================================
--  Placeholder function for auto save feature
-- ===========================================================================

---@param mapSaveName string
---@param doCheckpointHint boolean
---@return nil
function SaveGameCheckPointBJ(mapSaveName, doCheckpointHint)
	SaveGameCheckpoint(mapSaveName, doCheckpointHint)
end
-- ===========================================================================

---@param loadFileName string
---@param doScoreScreen boolean
---@return nil
function LoadGameBJ(loadFileName, doScoreScreen)
	LoadGame(loadFileName, doScoreScreen)
end
-- ===========================================================================

---@param saveFileName string
---@param newLevel string
---@param doScoreScreen boolean
---@return nil
function SaveAndChangeLevelBJ(saveFileName, newLevel, doScoreScreen)
	SaveGame(saveFileName)
	ChangeLevel(newLevel, doScoreScreen)
end
-- ===========================================================================

---@param saveFileName string
---@param loadFileName string
---@param doScoreScreen boolean
---@return nil
function SaveAndLoadGameBJ(saveFileName, loadFileName, doScoreScreen)
	SaveGame(saveFileName)
	LoadGame(loadFileName, doScoreScreen)
end
-- ===========================================================================

---@param sourceDirName string
---@param destDirName string
---@return boolean
function RenameSaveDirectoryBJ(sourceDirName, destDirName)
	return RenameSaveDirectory(sourceDirName, destDirName)
end
-- ===========================================================================

---@param sourceDirName string
---@return boolean
function RemoveSaveDirectoryBJ(sourceDirName)
	return RemoveSaveDirectory(sourceDirName)
end
-- ===========================================================================

---@param sourceSaveName string
---@param destSaveName string
---@return boolean
function CopySaveGameBJ(sourceSaveName, destSaveName)
	return CopySaveGame(sourceSaveName, destSaveName)
end
-- ***************************************************************************
-- 
-- *  Miscellaneous Utility Functions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param whichPlayer player
---@return real
function GetPlayerStartLocationX(whichPlayer)
	return GetStartLocationX(GetPlayerStartLocation(whichPlayer))
end
-- ===========================================================================

---@param whichPlayer player
---@return real
function GetPlayerStartLocationY(whichPlayer)
	return GetStartLocationY(GetPlayerStartLocation(whichPlayer))
end
-- ===========================================================================

---@param whichPlayer player
---@return location
function GetPlayerStartLocationLoc(whichPlayer)
	return GetStartLocationLoc(GetPlayerStartLocation(whichPlayer))
end
-- ===========================================================================

---@param whichRect rect
---@return location
function GetRectCenter(whichRect)
	return Location(GetRectCenterX(whichRect), GetRectCenterY(whichRect))
end
-- ===========================================================================

---@param whichPlayer player
---@param whichState playerslotstate
---@return boolean
function IsPlayerSlotState(whichPlayer, whichState)
	return GetPlayerSlotState(whichPlayer) == whichState
end
-- ===========================================================================

---@param seconds real
---@return integer
function GetFadeFromSeconds(seconds)
	if (seconds ~= 0) then
		return 128 / R2I(seconds)
	end
	return 10000
end
-- ===========================================================================

---@param seconds real
---@return real
function GetFadeFromSecondsAsReal(seconds)
	if (seconds ~= 0) then
		return 128.00 / seconds
	end
	return 10000.00
end
-- ===========================================================================

---@param whichPlayer player
---@param whichPlayerState playerstate
---@param delta integer
---@return nil
function AdjustPlayerStateSimpleBJ(whichPlayer, whichPlayerState, delta)
	SetPlayerState(whichPlayer, whichPlayerState, GetPlayerState(whichPlayer, whichPlayerState) + delta)
end
-- ===========================================================================

---@param delta integer
---@param whichPlayer player
---@param whichPlayerState playerstate
---@return nil
function AdjustPlayerStateBJ(delta, whichPlayer, whichPlayerState)
	--  If the change was positive, apply the difference to the player's
	--  gathered resources property as well.
	if (delta > 0) then
		if (whichPlayerState == PLAYER_STATE_RESOURCE_GOLD) then
			AdjustPlayerStateSimpleBJ(whichPlayer, PLAYER_STATE_GOLD_GATHERED, delta)
		elseif (whichPlayerState == PLAYER_STATE_RESOURCE_LUMBER) then
			AdjustPlayerStateSimpleBJ(whichPlayer, PLAYER_STATE_LUMBER_GATHERED, delta)
		end
	end
	
	AdjustPlayerStateSimpleBJ(whichPlayer, whichPlayerState, delta)
end
-- ===========================================================================

---@param whichPlayer player
---@param whichPlayerState playerstate
---@param value integer
---@return nil
function SetPlayerStateBJ(whichPlayer, whichPlayerState, value)
	local oldValue = GetPlayerState(whichPlayer, whichPlayerState)
	AdjustPlayerStateBJ(value - oldValue, whichPlayer, whichPlayerState)
end
-- ===========================================================================

---@param whichPlayerFlag playerstate
---@param flag boolean
---@param whichPlayer player
---@return nil
function SetPlayerFlagBJ(whichPlayerFlag, flag, whichPlayer)
	SetPlayerState(whichPlayer, whichPlayerFlag, IntegerTertiaryOp(flag, 1, 0))
end
-- ===========================================================================

---@param rate integer
---@param whichResource playerstate
---@param sourcePlayer player
---@param otherPlayer player
---@return nil
function SetPlayerTaxRateBJ(rate, whichResource, sourcePlayer, otherPlayer)
	SetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource, rate)
end
-- ===========================================================================

---@param whichResource playerstate
---@param sourcePlayer player
---@param otherPlayer player
---@return integer
function GetPlayerTaxRateBJ(whichResource, sourcePlayer, otherPlayer)
	return GetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource)
end
-- ===========================================================================

---@param whichPlayerFlag playerstate
---@param whichPlayer player
---@return boolean
function IsPlayerFlagSetBJ(whichPlayerFlag, whichPlayer)
	return GetPlayerState(whichPlayer, whichPlayerFlag) == 1
end
-- ===========================================================================

---@param delta integer
---@param whichUnit unit
---@return nil
function AddResourceAmountBJ(delta, whichUnit)
	AddResourceAmount(whichUnit, delta)
end
-- ===========================================================================

---@param whichPlayer player
---@return integer
function GetConvertedPlayerId(whichPlayer)
	return GetPlayerId(whichPlayer) + 1
end
-- ===========================================================================

---@param convertedPlayerId integer
---@return player
function ConvertedPlayer(convertedPlayerId)
	return Player(convertedPlayerId - 1)
end
-- ===========================================================================

---@param r rect
---@return real
function GetRectWidthBJ(r)
	return GetRectMaxX(r) - GetRectMinX(r)
end
-- ===========================================================================

---@param r rect
---@return real
function GetRectHeightBJ(r)
	return GetRectMaxY(r) - GetRectMinY(r)
end
-- ===========================================================================
--  Replaces a gold mine with a blighted gold mine for the given player.
-- 

---@param goldMine unit
---@param whichPlayer player
---@return unit
function BlightGoldMineForPlayerBJ(goldMine, whichPlayer)
	local mineX
	local mineY
	local mineGold
	local newMine
	
	--  Make sure we're replacing a Gold Mine and not some other type of unit.
	if GetUnitTypeId(goldMine) ~= FourCC('ngol') then
		return nil
	end
	
	--  Save the Gold Mine's properties and remove it.
	mineX    = GetUnitX(goldMine)
	mineY    = GetUnitY(goldMine)
	mineGold = GetResourceAmount(goldMine)
	RemoveUnit(goldMine)
	
	--  Create a Haunted Gold Mine to replace the Gold Mine.
	newMine = CreateBlightedGoldmine(whichPlayer, mineX, mineY, bj_UNIT_FACING)
	SetResourceAmount(newMine, mineGold)
	return newMine
end
-- ===========================================================================

---@param goldMine unit
---@param whichPlayer player
---@return unit
function BlightGoldMineForPlayer(goldMine, whichPlayer)
	bj_lastHauntedGoldMine = BlightGoldMineForPlayerBJ(goldMine, whichPlayer)
	return bj_lastHauntedGoldMine
end
-- ===========================================================================
---@return unit
function GetLastHauntedGoldMine()
	return bj_lastHauntedGoldMine
end
-- ===========================================================================

---@param where location
---@return boolean
function IsPointBlightedBJ(where)
	return IsPointBlighted(GetLocationX(where), GetLocationY(where))
end
-- ===========================================================================
---@return nil
function SetPlayerColorBJEnum()
	SetUnitColor(GetEnumUnit(), bj_setPlayerTargetColor)
end
-- ===========================================================================

---@param whichPlayer player
---@param color playercolor
---@param changeExisting boolean
---@return nil
function SetPlayerColorBJ(whichPlayer, color, changeExisting)
	local g
	
	SetPlayerColor(whichPlayer, color)
	if changeExisting then
		bj_setPlayerTargetColor = color
		g                       = CreateGroup()
		GroupEnumUnitsOfPlayer(g, whichPlayer, nil)
		ForGroup(g, SetPlayerColorBJEnum)
		DestroyGroup(g)
	end
end
-- ===========================================================================

---@param unitId integer
---@param allowed boolean
---@param whichPlayer player
---@return nil
function SetPlayerUnitAvailableBJ(unitId, allowed, whichPlayer)
	if allowed then
		SetPlayerTechMaxAllowed(whichPlayer, unitId, -1)
	else
		SetPlayerTechMaxAllowed(whichPlayer, unitId, 0)
	end
end
-- ===========================================================================
---@return nil
function LockGameSpeedBJ()
	SetMapFlag(MAP_LOCK_SPEED, true)
end
-- ===========================================================================
---@return nil
function UnlockGameSpeedBJ()
	SetMapFlag(MAP_LOCK_SPEED, false)
end
-- ===========================================================================

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetOrderBJ(whichUnit, order, targetWidget)
	return IssueTargetOrder(whichUnit, order, targetWidget)
end
-- ===========================================================================

---@param whichUnit unit
---@param order string
---@param whichLocation location
---@return boolean
function IssuePointOrderLocBJ(whichUnit, order, whichLocation)
	return IssuePointOrderLoc(whichUnit, order, whichLocation)
end
-- ===========================================================================
--  Two distinct trigger actions can't share the same function name, so this
--  dummy function simply mimics the behavior of an existing call.
-- 

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetDestructableOrder(whichUnit, order, targetWidget)
	return IssueTargetOrder(whichUnit, order, targetWidget)
end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetItemOrder(whichUnit, order, targetWidget)
	return IssueTargetOrder(whichUnit, order, targetWidget)
end
-- ===========================================================================

---@param whichUnit unit
---@param order string
---@return boolean
function IssueImmediateOrderBJ(whichUnit, order)
	return IssueImmediateOrder(whichUnit, order)
end
-- ===========================================================================

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetOrderBJ(whichGroup, order, targetWidget)
	return GroupTargetOrder(whichGroup, order, targetWidget)
end
-- ===========================================================================

---@param whichGroup group
---@param order string
---@param whichLocation location
---@return boolean
function GroupPointOrderLocBJ(whichGroup, order, whichLocation)
	return GroupPointOrderLoc(whichGroup, order, whichLocation)
end
-- ===========================================================================

---@param whichGroup group
---@param order string
---@return boolean
function GroupImmediateOrderBJ(whichGroup, order)
	return GroupImmediateOrder(whichGroup, order)
end
-- ===========================================================================
--  Two distinct trigger actions can't share the same function name, so this
--  dummy function simply mimics the behavior of an existing call.
-- 

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetDestructableOrder(whichGroup, order, targetWidget)
	return GroupTargetOrder(whichGroup, order, targetWidget)
end

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetItemOrder(whichGroup, order, targetWidget)
	return GroupTargetOrder(whichGroup, order, targetWidget)
end
-- ===========================================================================
---@return destructable
function GetDyingDestructable()
	return GetTriggerDestructable()
end
-- ===========================================================================
--  Rally point setting
-- 

---@param whichUnit unit
---@param targPos location
---@return nil
function SetUnitRallyPoint(whichUnit, targPos)
	IssuePointOrderLocBJ(whichUnit, "setrally", targPos)
end
-- ===========================================================================

---@param whichUnit unit
---@param targUnit unit
---@return nil
function SetUnitRallyUnit(whichUnit, targUnit)
	IssueTargetOrder(whichUnit, "setrally", targUnit)
end
-- ===========================================================================

---@param whichUnit unit
---@param targDest destructable
---@return nil
function SetUnitRallyDestructable(whichUnit, targDest)
	IssueTargetOrder(whichUnit, "setrally", targDest)
end
-- ===========================================================================
--  Utility function for use by editor-generated item drop table triggers.
--  This function is added as an action to all destructable drop triggers,
--  so that a widget drop may be differentiated from a unit drop.
-- 
---@return nil
function SaveDyingWidget()
	bj_lastDyingWidget = GetTriggerWidget()
end
-- ===========================================================================

---@param addBlight boolean
---@param whichPlayer player
---@param r rect
---@return nil
function SetBlightRectBJ(addBlight, whichPlayer, r)
	SetBlightRect(whichPlayer, r, addBlight)
end
-- ===========================================================================

---@param addBlight boolean
---@param whichPlayer player
---@param loc location
---@param radius real
---@return nil
function SetBlightRadiusLocBJ(addBlight, whichPlayer, loc, radius)
	SetBlightLoc(whichPlayer, loc, radius, addBlight)
end
-- ===========================================================================

---@param abilcode integer
---@return string
function GetAbilityName(abilcode)
	return GetObjectName(abilcode)
end
-- ***************************************************************************
-- 
-- *  Melee Template Visibility Settings
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function MeleeStartingVisibility()
	--  Start by setting the ToD.
	SetFloatGameState(GAME_STATE_TIME_OF_DAY, bj_MELEE_STARTING_TOD)
	
	--  call FogMaskEnable(true)
	--  call FogEnable(true)
end
-- ***************************************************************************
-- 
-- *  Melee Template Starting Resources
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function MeleeStartingResources()
	local index
	local indexPlayer
	local v
	local startingGold
	local startingLumber
	
	v = VersionGet()
	if (v == VERSION_REIGN_OF_CHAOS) then
		startingGold   = bj_MELEE_STARTING_GOLD_V0
		startingLumber = bj_MELEE_STARTING_LUMBER_V0
	else
		startingGold   = bj_MELEE_STARTING_GOLD_V1
		startingLumber = bj_MELEE_STARTING_LUMBER_V1
	end
	
	--  Set each player's starting resources.
	index = 0
	while true do
		indexPlayer = Player(index)
		if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
			SetPlayerState(indexPlayer, PLAYER_STATE_RESOURCE_GOLD, startingGold)
			SetPlayerState(indexPlayer, PLAYER_STATE_RESOURCE_LUMBER, startingLumber)
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
-- ***************************************************************************
-- 
-- *  Melee Template Hero Limit
-- 
-- ***************************************************************************
-- ===========================================================================

---@param whichPlayer player
---@param techId integer
---@param limit integer
---@return nil
function ReducePlayerTechMaxAllowed(whichPlayer, techId, limit)
	local oldMax = GetPlayerTechMaxAllowed(whichPlayer, techId)
	
	--  A value of -1 is used to indicate no limit, so check for that as well.
	if (oldMax < 0 or oldMax > limit) then
		SetPlayerTechMaxAllowed(whichPlayer, techId, limit)
	end
end
-- ===========================================================================
---@return nil
function MeleeStartingHeroLimit()
	local index
	
	index = 0
	while true do
		--  max heroes per player
		SetPlayerMaxHeroesAllowed(bj_MELEE_HERO_LIMIT, Player(index))
		
		--  each player is restricted to a limit per hero type as well
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Hamg'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Hmkg'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Hpal'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Hblm'), bj_MELEE_HERO_TYPE_LIMIT)
		
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Obla'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Ofar'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Otch'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Oshd'), bj_MELEE_HERO_TYPE_LIMIT)
		
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Edem'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Ekee'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Emoo'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Ewar'), bj_MELEE_HERO_TYPE_LIMIT)
		
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Udea'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Udre'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Ulic'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Ucrl'), bj_MELEE_HERO_TYPE_LIMIT)
		
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Npbm'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Nbrn'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Nngs'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Nplh'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Nbst'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Nalc'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Ntin'), bj_MELEE_HERO_TYPE_LIMIT)
		ReducePlayerTechMaxAllowed(Player(index), FourCC('Nfir'), bj_MELEE_HERO_TYPE_LIMIT)
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
-- ***************************************************************************
-- 
-- *  Melee Template Granted Hero Items
-- 
-- ***************************************************************************
-- ===========================================================================
---@return boolean
function MeleeTrainedUnitIsHeroBJFilter()
	return IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO)
end
-- ===========================================================================
--  The first N heroes trained or hired for each player start off with a
--  standard set of items.  This is currently:
--    - 1x Scroll of Town Portal
-- 

---@param whichUnit unit
---@return nil
function MeleeGrantItemsToHero(whichUnit)
	local owner = GetPlayerId(GetOwningPlayer(whichUnit))
	
	--  If we haven't twinked N heroes for this player yet, twink away.
	if (bj_meleeTwinkedHeroes[owner] < bj_MELEE_MAX_TWINKED_HEROES) then
		UnitAddItemById(whichUnit, FourCC('stwp'))
		bj_meleeTwinkedHeroes[owner] = bj_meleeTwinkedHeroes[owner] + 1
	end
end
-- ===========================================================================
---@return nil
function MeleeGrantItemsToTrainedHero()
	MeleeGrantItemsToHero(GetTrainedUnit())
end
-- ===========================================================================
---@return nil
function MeleeGrantItemsToHiredHero()
	MeleeGrantItemsToHero(GetSoldUnit())
end
-- ===========================================================================
---@return nil
function MeleeGrantHeroItems()
	local index
	local trig
	
	--  Initialize the twinked hero counts.
	index = 0
	while true do
		bj_meleeTwinkedHeroes[index] = 0
		
		index                        = index + 1
		if index == bj_MAX_PLAYER_SLOTS then break end
	end
	
	--  Register for an event whenever a hero is trained, so that we can give
	--  him/her their starting items.
	index = 0
	while true do
		trig = CreateTrigger()
		TriggerRegisterPlayerUnitEvent(trig, Player(index), EVENT_PLAYER_UNIT_TRAIN_FINISH, filterMeleeTrainedUnitIsHeroBJ)
		TriggerAddAction(trig, MeleeGrantItemsToTrainedHero)
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
	
	--  Register for an event whenever a neutral hero is hired, so that we
	--  can give him/her their starting items.
	trig = CreateTrigger()
	TriggerRegisterPlayerUnitEvent(trig, Player(PLAYER_NEUTRAL_PASSIVE), EVENT_PLAYER_UNIT_SELL, filterMeleeTrainedUnitIsHeroBJ)
	TriggerAddAction(trig, MeleeGrantItemsToHiredHero)
	
	--  Flag that we are giving starting items to heroes, so that the melee
	--  starting units code can create them as necessary.
	bj_meleeGrantHeroItems = true
end
-- ***************************************************************************
-- 
-- *  Melee Template Clear Start Locations
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function MeleeClearExcessUnit()
	local theUnit = GetEnumUnit()
	local owner   = GetPlayerId(GetOwningPlayer(theUnit))
	
	if (owner == PLAYER_NEUTRAL_AGGRESSIVE) then
		--  Remove any Neutral Hostile units from the area.
		RemoveUnit(GetEnumUnit())
	elseif (owner == PLAYER_NEUTRAL_PASSIVE) then
		--  Remove non-structure Neutral Passive units from the area.
		if not IsUnitType(theUnit, UNIT_TYPE_STRUCTURE) then
			RemoveUnit(GetEnumUnit())
		end
	end
end
-- ===========================================================================

---@param x real
---@param y real
---@param range real
---@return nil
function MeleeClearNearbyUnits(x, y, range)
	local nearbyUnits
	
	nearbyUnits = CreateGroup()
	GroupEnumUnitsInRange(nearbyUnits, x, y, range, nil)
	ForGroup(nearbyUnits, MeleeClearExcessUnit)
	DestroyGroup(nearbyUnits)
end
-- ===========================================================================
---@return nil
function MeleeClearExcessUnits()
	local index
	local locX
	local locY
	local indexPlayer
	
	index = 0
	while true do
		indexPlayer = Player(index)
		
		--  If the player slot is being used, clear any nearby creeps.
		if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
			locX = GetStartLocationX(GetPlayerStartLocation(indexPlayer))
			locY = GetStartLocationY(GetPlayerStartLocation(indexPlayer))
			
			MeleeClearNearbyUnits(locX, locY, bj_MELEE_CLEAR_UNITS_RADIUS)
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
-- ***************************************************************************
-- 
-- *  Melee Template Starting Units
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function MeleeEnumFindNearestMine()
	local enumUnit = GetEnumUnit()
	local dist
	local unitLoc
	
	if (GetUnitTypeId(enumUnit) == FourCC('ngol')) then
		unitLoc = GetUnitLoc(enumUnit)
		dist    = DistanceBetweenPoints(unitLoc, bj_meleeNearestMineToLoc)
		RemoveLocation(unitLoc)
		
		--  If this is our first mine, or the closest thusfar, use it instead.
		if (bj_meleeNearestMineDist < 0) or (dist < bj_meleeNearestMineDist) then
			bj_meleeNearestMine     = enumUnit
			bj_meleeNearestMineDist = dist
		end
	end
end
-- ===========================================================================

---@param src location
---@param range real
---@return unit
function MeleeFindNearestMine(src, range)
	local nearbyMines
	
	bj_meleeNearestMine      = nil
	bj_meleeNearestMineDist  = -1
	bj_meleeNearestMineToLoc = src
	
	nearbyMines              = CreateGroup()
	GroupEnumUnitsInRangeOfLoc(nearbyMines, src, range, nil)
	ForGroup(nearbyMines, MeleeEnumFindNearestMine)
	DestroyGroup(nearbyMines)
	
	return bj_meleeNearestMine
end
-- ===========================================================================

---@param p player
---@param id1 integer
---@param id2 integer
---@param id3 integer
---@param id4 integer
---@param loc location
---@return unit
function MeleeRandomHeroLoc(p, id1, id2, id3, id4, loc)
	local hero = nil
	local roll
	local pick
	local v
	
	--  The selection of heroes is dependant on the game version.
	v          = VersionGet()
	if (v == VERSION_REIGN_OF_CHAOS) then
		roll = GetRandomInt(1, 3)
	else
		roll = GetRandomInt(1, 4)
	end
	
	--  Translate the roll into a unitid.
	if roll == 1 then
		pick = id1
	elseif roll == 2 then
		pick = id2
	elseif roll == 3 then
		pick = id3
	elseif roll == 4 then
		pick = id4
	else
		--  Unrecognized id index - pick the first hero in the list.
		pick = id1
	end
	
	--  Create the hero.
	hero = CreateUnitAtLoc(p, pick, loc, bj_UNIT_FACING)
	if bj_meleeGrantHeroItems then
		MeleeGrantItemsToHero(hero)
	end
	return hero
end
-- ===========================================================================
--  Returns a location which is (distance) away from (src) in the direction of (targ).
-- 

---@param src location
---@param targ location
---@param distance real
---@param deltaAngle real
---@return location
function MeleeGetProjectedLoc(src, targ, distance, deltaAngle)
	local srcX      = GetLocationX(src)
	local srcY      = GetLocationY(src)
	local direction = Atan2(GetLocationY(targ) - srcY, GetLocationX(targ) - srcX) + deltaAngle
	return Location(srcX + distance * Cos(direction), srcY + distance * Sin(direction))
end
-- ===========================================================================

---@param val real
---@param minVal real
---@param maxVal real
---@return real
function MeleeGetNearestValueWithin(val, minVal, maxVal)
	if (val < minVal) then
		return minVal
	elseif (val > maxVal) then
		return maxVal
	else
		return val
	end
end
-- ===========================================================================

---@param src location
---@param r rect
---@return location
function MeleeGetLocWithinRect(src, r)
	local withinX = MeleeGetNearestValueWithin(GetLocationX(src), GetRectMinX(r), GetRectMaxX(r))
	local withinY = MeleeGetNearestValueWithin(GetLocationY(src), GetRectMinY(r), GetRectMaxY(r))
	return Location(withinX, withinY)
end
-- ===========================================================================
--  Starting Units for Human Players
--    - 1 Town Hall, placed at start location
--    - 5 Peasants, placed between start location and nearest gold mine
-- 

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
---@return nil
function MeleeStartingUnitsHuman(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
	local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
	local unitSpacing   = 64.00
	local nearestMine
	local nearMineLoc
	local heroLoc
	local peonX
	local peonY
	local townHall      = nil
	
	if (doPreload) then
		Preloader("scripts\\HumanMelee.pld")
	end
	
	nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
	if (nearestMine ~= nil) then
		--  Spawn Town Hall at the start location.
		townHall    = CreateUnitAtLoc(whichPlayer, FourCC('htow'), startLoc, bj_UNIT_FACING)
		
		--  Spawn Peasants near the mine.
		nearMineLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
		peonX       = GetLocationX(nearMineLoc)
		peonY       = GetLocationY(nearMineLoc)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX + 0.00 * unitSpacing, peonY + 1.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX + 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX - 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX + 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX - 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Set random hero spawn point to be off to the side of the start location.
		heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
	else
		--  Spawn Town Hall at the start location.
		townHall = CreateUnitAtLoc(whichPlayer, FourCC('htow'), startLoc, bj_UNIT_FACING)
		
		--  Spawn Peasants directly south of the town hall.
		peonX    = GetLocationX(startLoc)
		peonY    = GetLocationY(startLoc) - 224.00
		CreateUnit(whichPlayer, FourCC('hpea'), peonX + 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX + 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX + 0.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX - 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('hpea'), peonX - 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Set random hero spawn point to be just south of the start location.
		heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
	end
	
	if (townHall ~= nil) then
		UnitAddAbilityBJ(FourCC('Amic'), townHall)
		UnitMakeAbilityPermanentBJ(true, FourCC('Amic'), townHall)
	end
	
	if (doHeroes) then
		--  If the "Random Hero" option is set, start the player with a random hero.
		--  Otherwise, give them a "free hero" token.
		if useRandomHero then
			MeleeRandomHeroLoc(whichPlayer, FourCC('Hamg'), FourCC('Hmkg'), FourCC('Hpal'), FourCC('Hblm'), heroLoc)
		else
			SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
		end
	end
	
	if (doCamera) then
		--  Center the camera on the initial Peasants.
		SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
		SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
	end
end
-- ===========================================================================
--  Starting Units for Orc Players
--    - 1 Great Hall, placed at start location
--    - 5 Peons, placed between start location and nearest gold mine
-- 

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
---@return nil
function MeleeStartingUnitsOrc(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
	local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
	local unitSpacing   = 64.00
	local nearestMine
	local nearMineLoc
	local heroLoc
	local peonX
	local peonY
	
	if (doPreload) then
		Preloader("scripts\\OrcMelee.pld")
	end
	
	nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
	if (nearestMine ~= nil) then
		--  Spawn Great Hall at the start location.
		CreateUnitAtLoc(whichPlayer, FourCC('ogre'), startLoc, bj_UNIT_FACING)
		
		--  Spawn Peons near the mine.
		nearMineLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
		peonX       = GetLocationX(nearMineLoc)
		peonY       = GetLocationY(nearMineLoc)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX + 0.00 * unitSpacing, peonY + 1.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX + 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX - 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX + 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX - 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Set random hero spawn point to be off to the side of the start location.
		heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
	else
		--  Spawn Great Hall at the start location.
		CreateUnitAtLoc(whichPlayer, FourCC('ogre'), startLoc, bj_UNIT_FACING)
		
		--  Spawn Peons directly south of the town hall.
		peonX = GetLocationX(startLoc)
		peonY = GetLocationY(startLoc) - 224.00
		CreateUnit(whichPlayer, FourCC('opeo'), peonX + 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX + 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX + 0.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX - 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('opeo'), peonX - 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Set random hero spawn point to be just south of the start location.
		heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
	end
	
	if (doHeroes) then
		--  If the "Random Hero" option is set, start the player with a random hero.
		--  Otherwise, give them a "free hero" token.
		if useRandomHero then
			MeleeRandomHeroLoc(whichPlayer, FourCC('Obla'), FourCC('Ofar'), FourCC('Otch'), FourCC('Oshd'), heroLoc)
		else
			SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
		end
	end
	
	if (doCamera) then
		--  Center the camera on the initial Peons.
		SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
		SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
	end
end
-- ===========================================================================
--  Starting Units for Undead Players
--    - 1 Necropolis, placed at start location
--    - 1 Haunted Gold Mine, placed on nearest gold mine
--    - 3 Acolytes, placed between start location and nearest gold mine
--    - 1 Ghoul, placed between start location and nearest gold mine
--    - Blight, centered on nearest gold mine, spread across a "large area"
-- 

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
---@return nil
function MeleeStartingUnitsUndead(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
	local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
	local unitSpacing   = 64.00
	local nearestMine
	local nearMineLoc
	local nearTownLoc
	local heroLoc
	local peonX
	local peonY
	local ghoulX
	local ghoulY
	
	if (doPreload) then
		Preloader("scripts\\UndeadMelee.pld")
	end
	
	nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
	if (nearestMine ~= nil) then
		--  Spawn Necropolis at the start location.
		CreateUnitAtLoc(whichPlayer, FourCC('unpl'), startLoc, bj_UNIT_FACING)
		
		--  Replace the nearest gold mine with a blighted version.
		nearestMine                        = BlightGoldMineForPlayerBJ(nearestMine, whichPlayer)
		
		--  Spawn Ghoul near the Necropolis.
		nearTownLoc                        = MeleeGetProjectedLoc(startLoc, GetUnitLoc(nearestMine), 288, 0)
		ghoulX                             = GetLocationX(nearTownLoc)
		ghoulY                             = GetLocationY(nearTownLoc)
		bj_ghoul[GetPlayerId(whichPlayer)] = CreateUnit(whichPlayer, FourCC('ugho'), ghoulX + 0.00 * unitSpacing, ghoulY + 0.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Spawn Acolytes near the mine.
		nearMineLoc                        = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
		peonX                              = GetLocationX(nearMineLoc)
		peonY                              = GetLocationY(nearMineLoc)
		CreateUnit(whichPlayer, FourCC('uaco'), peonX + 0.00 * unitSpacing, peonY + 0.50 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('uaco'), peonX + 0.65 * unitSpacing, peonY - 0.50 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('uaco'), peonX - 0.65 * unitSpacing, peonY - 0.50 * unitSpacing, bj_UNIT_FACING)
		
		--  Create a patch of blight around the gold mine.
		SetBlightLoc(whichPlayer, nearMineLoc, 768, true)
		
		--  Set random hero spawn point to be off to the side of the start location.
		heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
	else
		--  Spawn Necropolis at the start location.
		CreateUnitAtLoc(whichPlayer, FourCC('unpl'), startLoc, bj_UNIT_FACING)
		
		--  Spawn Acolytes and Ghoul directly south of the Necropolis.
		peonX = GetLocationX(startLoc)
		peonY = GetLocationY(startLoc) - 224.00
		CreateUnit(whichPlayer, FourCC('uaco'), peonX - 1.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('uaco'), peonX - 0.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('uaco'), peonX + 0.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ugho'), peonX + 1.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Create a patch of blight around the start location.
		SetBlightLoc(whichPlayer, startLoc, 768, true)
		
		--  Set random hero spawn point to be just south of the start location.
		heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
	end
	
	if (doHeroes) then
		--  If the "Random Hero" option is set, start the player with a random hero.
		--  Otherwise, give them a "free hero" token.
		if useRandomHero then
			MeleeRandomHeroLoc(whichPlayer, FourCC('Udea'), FourCC('Udre'), FourCC('Ulic'), FourCC('Ucrl'), heroLoc)
		else
			SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
		end
	end
	
	if (doCamera) then
		--  Center the camera on the initial Acolytes.
		SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
		SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
	end
end
-- ===========================================================================
--  Starting Units for Night Elf Players
--    - 1 Tree of Life, placed by nearest gold mine, already entangled
--    - 5 Wisps, placed between Tree of Life and nearest gold mine
-- 

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
---@return nil
function MeleeStartingUnitsNightElf(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
	local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
	local unitSpacing   = 64.00
	local minTreeDist   = 3.50 * bj_CELLWIDTH
	local minWispDist   = 1.75 * bj_CELLWIDTH
	local nearestMine
	local nearMineLoc
	local wispLoc
	local heroLoc
	local peonX
	local peonY
	local tree
	
	if (doPreload) then
		Preloader("scripts\\NightElfMelee.pld")
	end
	
	nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
	if (nearestMine ~= nil) then
		--  Spawn Tree of Life near the mine and have it entangle the mine.
		--  Project the Tree's coordinates from the gold mine, and then snap
		--  the X and Y values to within minTreeDist of the Gold Mine.
		nearMineLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 650, 0)
		nearMineLoc = MeleeGetLocWithinRect(nearMineLoc, GetRectFromCircleBJ(GetUnitLoc(nearestMine), minTreeDist))
		tree        = CreateUnitAtLoc(whichPlayer, FourCC('etol'), nearMineLoc, bj_UNIT_FACING)
		IssueTargetOrder(tree, "entangleinstant", nearestMine)
		
		--  Spawn Wisps at the start location.
		wispLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
		wispLoc = MeleeGetLocWithinRect(wispLoc, GetRectFromCircleBJ(GetUnitLoc(nearestMine), minWispDist))
		peonX   = GetLocationX(wispLoc)
		peonY   = GetLocationY(wispLoc)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX + 0.00 * unitSpacing, peonY + 1.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX + 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX - 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX + 0.58 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX - 0.58 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Set random hero spawn point to be off to the side of the start location.
		heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
	else
		--  Spawn Tree of Life at the start location.
		CreateUnitAtLoc(whichPlayer, FourCC('etol'), startLoc, bj_UNIT_FACING)
		
		--  Spawn Wisps directly south of the town hall.
		peonX = GetLocationX(startLoc)
		peonY = GetLocationY(startLoc) - 224.00
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX - 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX - 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX + 0.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX + 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		CreateUnit(whichPlayer, FourCC('ewsp'), peonX + 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
		
		--  Set random hero spawn point to be just south of the start location.
		heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
	end
	
	if (doHeroes) then
		--  If the "Random Hero" option is set, start the player with a random hero.
		--  Otherwise, give them a "free hero" token.
		if useRandomHero then
			MeleeRandomHeroLoc(whichPlayer, FourCC('Edem'), FourCC('Ekee'), FourCC('Emoo'), FourCC('Ewar'), heroLoc)
		else
			SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
		end
	end
	
	if (doCamera) then
		--  Center the camera on the initial Wisps.
		SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
		SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
	end
end
-- ===========================================================================
--  Starting Units for Players Whose Race is Unknown
--    - 12 Sheep, placed randomly around the start location
-- 

---@param whichPlayer player
---@param startLoc location
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
---@return nil
function MeleeStartingUnitsUnknownRace(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
	local index
	
	if (doPreload) then
	end
	
	index = 0
	while true do
		CreateUnit(whichPlayer, FourCC('nshe'), GetLocationX(startLoc) + GetRandomReal(-256, 256), GetLocationY(startLoc) + GetRandomReal(-256, 256), GetRandomReal(0, 360))
		index = index + 1
		if index == 12 then break end
	end
	
	if (doHeroes) then
		--  Give them a "free hero" token, out of pity.
		SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
	end
	
	if (doCamera) then
		--  Center the camera on the initial sheep.
		SetCameraPositionLocForPlayer(whichPlayer, startLoc)
		SetCameraQuickPositionLocForPlayer(whichPlayer, startLoc)
	end
end
-- ===========================================================================
---@return nil
function MeleeStartingUnits()
	local index
	local indexPlayer
	local indexStartLoc
	local indexRace
	
	Preloader("scripts\\SharedMelee.pld")
	
	index = 0
	while true do
		indexPlayer = Player(index)
		if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
			indexStartLoc = GetStartLocationLoc(GetPlayerStartLocation(indexPlayer))
			indexRace     = GetPlayerRace(indexPlayer)
			
			--  Create initial race-specific starting units
			if (indexRace == RACE_HUMAN) then
				MeleeStartingUnitsHuman(indexPlayer, indexStartLoc, true, true, true)
			elseif (indexRace == RACE_ORC) then
				MeleeStartingUnitsOrc(indexPlayer, indexStartLoc, true, true, true)
			elseif (indexRace == RACE_UNDEAD) then
				MeleeStartingUnitsUndead(indexPlayer, indexStartLoc, true, true, true)
			elseif (indexRace == RACE_NIGHTELF) then
				MeleeStartingUnitsNightElf(indexPlayer, indexStartLoc, true, true, true)
			else
				MeleeStartingUnitsUnknownRace(indexPlayer, indexStartLoc, true, true, true)
			end
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end

end
-- ===========================================================================

---@param whichRace race
---@param whichPlayer player
---@param loc location
---@param doHeroes boolean
---@return nil
function MeleeStartingUnitsForPlayer(whichRace, whichPlayer, loc, doHeroes)
	--  Create initial race-specific starting units
	if (whichRace == RACE_HUMAN) then
		MeleeStartingUnitsHuman(whichPlayer, loc, doHeroes, false, false)
	elseif (whichRace == RACE_ORC) then
		MeleeStartingUnitsOrc(whichPlayer, loc, doHeroes, false, false)
	elseif (whichRace == RACE_UNDEAD) then
		MeleeStartingUnitsUndead(whichPlayer, loc, doHeroes, false, false)
	elseif (whichRace == RACE_NIGHTELF) then
		MeleeStartingUnitsNightElf(whichPlayer, loc, doHeroes, false, false)
	else
		--  Unrecognized race - ignore the request.
	end
end
-- ***************************************************************************
-- 
-- *  Melee Template Starting AI Scripts
-- 
-- ***************************************************************************
-- ===========================================================================

---@param num player
---@param s1 string
---@param s2 string
---@param s3 string
---@return nil
function PickMeleeAI(num, s1, s2, s3)
	local pick
	
	--  easy difficulty never uses any custom AI scripts
	--  that are designed to be a bit more challenging
	if GetAIDifficulty(num) == AI_DIFFICULTY_NEWBIE then
		StartMeleeAI(num, s1)
		return
	end
	
	if s2 == nil then
		pick = 1
	elseif s3 == nil then
		pick = GetRandomInt(1, 2)
	else
		pick = GetRandomInt(1, 3)
	end
	
	if pick == 1 then
		StartMeleeAI(num, s1)
	elseif pick == 2 then
		StartMeleeAI(num, s2)
	else
		StartMeleeAI(num, s3)
	end
end
-- ===========================================================================
---@return nil
function MeleeStartingAI()
	local index
	local indexPlayer
	local indexRace
	
	index = 0
	while true do
		indexPlayer = Player(index)
		if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
			indexRace = GetPlayerRace(indexPlayer)
			if (GetPlayerController(indexPlayer) == MAP_CONTROL_COMPUTER) then
				--  Run a race-specific melee AI script.
				if (indexRace == RACE_HUMAN) then
					PickMeleeAI(indexPlayer, "human.ai", nil, nil)
				elseif (indexRace == RACE_ORC) then
					PickMeleeAI(indexPlayer, "orc.ai", nil, nil)
				elseif (indexRace == RACE_UNDEAD) then
					PickMeleeAI(indexPlayer, "undead.ai", nil, nil)
					RecycleGuardPosition(bj_ghoul[index])
				elseif (indexRace == RACE_NIGHTELF) then
					PickMeleeAI(indexPlayer, "elf.ai", nil, nil)
				else
					--  Unrecognized race.
				end
				ShareEverythingWithTeamAI(indexPlayer)
			end
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end

---@param targ unit
---@return nil
function LockGuardPosition(targ)
	SetUnitCreepGuard(targ, true)
end
-- ***************************************************************************
-- 
-- *  Melee Template Victory / Defeat Conditions
-- 
-- ***************************************************************************
-- ===========================================================================

---@param playerIndex integer
---@param opponentIndex integer
---@return boolean
function MeleePlayerIsOpponent(playerIndex, opponentIndex)
	local thePlayer   = Player(playerIndex)
	local theOpponent = Player(opponentIndex)
	
	--  The player himself is not an opponent.
	if (playerIndex == opponentIndex) then
		return false
	end
	
	--  Unused player slots are not opponents.
	if (GetPlayerSlotState(theOpponent) ~= PLAYER_SLOT_STATE_PLAYING) then
		return false
	end
	
	--  Players who are already defeated are not opponents.
	if (bj_meleeDefeated[opponentIndex]) then
		return false
	end
	
	--  Allied players with allied victory set are not opponents.
	if GetPlayerAlliance(thePlayer, theOpponent, ALLIANCE_PASSIVE) then
		if GetPlayerAlliance(theOpponent, thePlayer, ALLIANCE_PASSIVE) then
			if (GetPlayerState(thePlayer, PLAYER_STATE_ALLIED_VICTORY) == 1) then
				if (GetPlayerState(theOpponent, PLAYER_STATE_ALLIED_VICTORY) == 1) then
					return false
				end
			end
		end
	end
	
	return true
end
-- ===========================================================================
--  Count buildings currently owned by all allies, including the player themself.
-- 

---@param whichPlayer player
---@return integer
function MeleeGetAllyStructureCount(whichPlayer)
	local playerIndex
	local buildingCount
	local indexPlayer
	
	--  Count the number of buildings controlled by all not-yet-defeated co-allies.
	buildingCount = 0
	playerIndex   = 0
	while true do
		indexPlayer = Player(playerIndex)
		
		--  uncomment to cause defeat even if you have control of ally structures, but yours have been nixed
		-- if (PlayersAreCoAllied(whichPlayer, indexPlayer) and not bj_meleeDefeated[playerIndex]) then
		if (PlayersAreCoAllied(whichPlayer, indexPlayer)) then
			buildingCount = buildingCount + GetPlayerStructureCount(indexPlayer, true)
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	
	return buildingCount
end
-- ===========================================================================
--  Count allies, excluding dead players and the player themself.
-- 

---@param whichPlayer player
---@return integer
function MeleeGetAllyCount(whichPlayer)
	local playerIndex
	local playerCount
	local indexPlayer
	
	--  Count the number of not-yet-defeated co-allies.
	playerCount = 0
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		if PlayersAreCoAllied(whichPlayer, indexPlayer) and not bj_meleeDefeated[playerIndex] and (whichPlayer ~= indexPlayer) then
			playerCount = playerCount + 1
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	
	return playerCount
end
-- ===========================================================================
--  Counts key structures owned by a player and his or her allies, including
--  structures currently upgrading or under construction.
-- 
--  Key structures: Town Hall, Great Hall, Tree of Life, Necropolis
-- 

---@param whichPlayer player
---@return integer
function MeleeGetAllyKeyStructureCount(whichPlayer)
	local playerIndex
	local indexPlayer
	local keyStructs
	
	--  Count the number of buildings controlled by all not-yet-defeated co-allies.
	keyStructs  = 0
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		if (PlayersAreCoAllied(whichPlayer, indexPlayer)) then
			keyStructs = keyStructs + BlzGetPlayerTownHallCount(indexPlayer)
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	
	return keyStructs
end
-- ===========================================================================
--  Enum: Draw out a specific player.
-- 
---@return nil
function MeleeDoDrawEnum()
	local thePlayer = GetEnumPlayer()
	
	CachePlayerHeroData(thePlayer)
	RemovePlayerPreserveUnitsBJ(thePlayer, PLAYER_GAME_RESULT_TIE, false)
end
-- ===========================================================================
--  Enum: Victory out a specific player.
-- 
---@return nil
function MeleeDoVictoryEnum()
	local thePlayer   = GetEnumPlayer()
	local playerIndex = GetPlayerId(thePlayer)
	
	if (not bj_meleeVictoried[playerIndex]) then
		bj_meleeVictoried[playerIndex] = true
		CachePlayerHeroData(thePlayer)
		RemovePlayerPreserveUnitsBJ(thePlayer, PLAYER_GAME_RESULT_VICTORY, false)
	end
end
-- ===========================================================================
--  Defeat out a specific player.
-- 

---@param whichPlayer player
---@return nil
function MeleeDoDefeat(whichPlayer)
	bj_meleeDefeated[GetPlayerId(whichPlayer)] = true
	RemovePlayerPreserveUnitsBJ(whichPlayer, PLAYER_GAME_RESULT_DEFEAT, false)
end
-- ===========================================================================
--  Enum: Defeat out a specific player.
-- 
---@return nil
function MeleeDoDefeatEnum()
	local thePlayer = GetEnumPlayer()
	
	--  needs to happen before ownership change
	CachePlayerHeroData(thePlayer)
	MakeUnitsPassiveForTeam(thePlayer)
	MeleeDoDefeat(thePlayer)
end
-- ===========================================================================
--  A specific player left the game.
-- 

---@param whichPlayer player
---@return nil
function MeleeDoLeave(whichPlayer)
	if (GetIntegerGameState(GAME_STATE_DISCONNECTED) ~= 0) then
		GameOverDialogBJ(whichPlayer, true)
	else
		bj_meleeDefeated[GetPlayerId(whichPlayer)] = true
		RemovePlayerPreserveUnitsBJ(whichPlayer, PLAYER_GAME_RESULT_DEFEAT, true)
	end
end
-- ===========================================================================
--  Remove all observers
-- 
---@return nil
function MeleeRemoveObservers()
	local playerIndex
	local indexPlayer
	
	--  Give all observers the game over dialog
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		
		if (IsPlayerObserver(indexPlayer)) then
			RemovePlayerPreserveUnitsBJ(indexPlayer, PLAYER_GAME_RESULT_NEUTRAL, false)
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================
--  Test all players to determine if a team has won.  For a team to win, all
--  remaining (read: undefeated) players need to be co-allied with all other
--  remaining players.  If even one player is not allied towards another,
--  everyone must be denied victory.
-- 
---@return force
function MeleeCheckForVictors()
	local playerIndex
	local opponentIndex
	local opponentlessPlayers = CreateForce()
	local gameOver            = false
	
	--  Check to see if any players have opponents remaining.
	playerIndex               = 0
	while true do
		if (not bj_meleeDefeated[playerIndex]) then
			--  Determine whether or not this player has any remaining opponents.
			opponentIndex = 0
			while true do
				--  If anyone has an opponent, noone can be victorious yet.
				if MeleePlayerIsOpponent(playerIndex, opponentIndex) then
					return CreateForce()
				end
				
				opponentIndex = opponentIndex + 1
				if opponentIndex == bj_MAX_PLAYERS then break end
			end
			
			--  Keep track of each opponentless player so that we can give
			--  them a victory later.
			ForceAddPlayer(opponentlessPlayers, Player(playerIndex))
			gameOver = true
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	
	--  Set the game over global flag
	bj_meleeGameOver = gameOver
	
	return opponentlessPlayers
end
-- ===========================================================================
--  Test each player to determine if anyone has been defeated.
-- 
---@return nil
function MeleeCheckForLosersAndVictors()
	local playerIndex
	local indexPlayer
	local defeatedPlayers = CreateForce()
	local victoriousPlayers
	local gameOver        = false
	
	--  If the game is already over, do nothing
	if (bj_meleeGameOver) then
		return
	end
	
	--  If the game was disconnected then it is over, in this case we
	--  don't want to report results for anyone as they will most likely
	--  conflict with the actual game results
	if (GetIntegerGameState(GAME_STATE_DISCONNECTED) ~= 0) then
		bj_meleeGameOver = true
		return
	end
	
	--  Check each player to see if he or she has been defeated yet.
	playerIndex = 0
	while true do
		indexPlayer = Player(playerIndex)
		
		if (not bj_meleeDefeated[playerIndex] and not bj_meleeVictoried[playerIndex]) then
			-- call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 60, "Player"+I2S(playerIndex)+" has "+I2S(MeleeGetAllyStructureCount(indexPlayer))+" ally buildings.")
			if (MeleeGetAllyStructureCount(indexPlayer) <= 0) then
				
				--  Keep track of each defeated player so that we can give
				--  them a defeat later.
				ForceAddPlayer(defeatedPlayers, Player(playerIndex))
				
				--  Set their defeated flag now so MeleeCheckForVictors
				--  can detect victors.
				bj_meleeDefeated[playerIndex] = true
			end
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	
	--  Now that the defeated flags are set, check if there are any victors
	victoriousPlayers = MeleeCheckForVictors()
	
	--  Defeat all defeated players
	ForForce(defeatedPlayers, MeleeDoDefeatEnum)
	
	--  Give victory to all victorious players
	ForForce(victoriousPlayers, MeleeDoVictoryEnum)
	
	--  If the game is over we should remove all observers
	if (bj_meleeGameOver) then
		MeleeRemoveObservers()
	end
end
-- ===========================================================================
--  Returns a race-specific "build X or be revealed" message.
-- 

---@param whichPlayer player
---@return string
function MeleeGetCrippledWarningMessage(whichPlayer)
	local r = GetPlayerRace(whichPlayer)
	
	if (r == RACE_HUMAN) then
		return GetLocalizedString("CRIPPLE_WARNING_HUMAN")
	elseif (r == RACE_ORC) then
		return GetLocalizedString("CRIPPLE_WARNING_ORC")
	elseif (r == RACE_NIGHTELF) then
		return GetLocalizedString("CRIPPLE_WARNING_NIGHTELF")
	elseif (r == RACE_UNDEAD) then
		return GetLocalizedString("CRIPPLE_WARNING_UNDEAD")
	else
		--  Unrecognized Race
		return ""
	end
end
-- ===========================================================================
--  Returns a race-specific "build X" label for cripple timers.
-- 

---@param whichPlayer player
---@return string
function MeleeGetCrippledTimerMessage(whichPlayer)
	local r = GetPlayerRace(whichPlayer)
	
	if (r == RACE_HUMAN) then
		return GetLocalizedString("CRIPPLE_TIMER_HUMAN")
	elseif (r == RACE_ORC) then
		return GetLocalizedString("CRIPPLE_TIMER_ORC")
	elseif (r == RACE_NIGHTELF) then
		return GetLocalizedString("CRIPPLE_TIMER_NIGHTELF")
	elseif (r == RACE_UNDEAD) then
		return GetLocalizedString("CRIPPLE_TIMER_UNDEAD")
	else
		--  Unrecognized Race
		return ""
	end
end
-- ===========================================================================
--  Returns a race-specific "build X" label for cripple timers.
-- 

---@param whichPlayer player
---@return string
function MeleeGetCrippledRevealedMessage(whichPlayer)
	return GetLocalizedString("CRIPPLE_REVEALING_PREFIX") + GetPlayerName(whichPlayer) + GetLocalizedString("CRIPPLE_REVEALING_POSTFIX")
end
-- ===========================================================================

---@param whichPlayer player
---@param expose boolean
---@return nil
function MeleeExposePlayer(whichPlayer, expose)
	local playerIndex
	local indexPlayer
	local toExposeTo = CreateForce()
	
	CripplePlayer(whichPlayer, toExposeTo, false)
	
	bj_playerIsExposed[GetPlayerId(whichPlayer)] = expose
	playerIndex                                  = 0
	while true do
		indexPlayer = Player(playerIndex)
		if (not PlayersAreCoAllied(whichPlayer, indexPlayer)) then
			ForceAddPlayer(toExposeTo, indexPlayer)
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	
	CripplePlayer(whichPlayer, toExposeTo, expose)
	DestroyForce(toExposeTo)
end
-- ===========================================================================
---@return nil
function MeleeExposeAllPlayers()
	local playerIndex
	local indexPlayer
	local playerIndex2
	local indexPlayer2
	local toExposeTo = CreateForce()
	
	playerIndex      = 0
	while true do
		indexPlayer = Player(playerIndex)
		
		ForceClear(toExposeTo)
		CripplePlayer(indexPlayer, toExposeTo, false)
		
		playerIndex2 = 0
		while true do
			indexPlayer2 = Player(playerIndex2)
			
			if playerIndex ~= playerIndex2 then
				if (not PlayersAreCoAllied(indexPlayer, indexPlayer2)) then
					ForceAddPlayer(toExposeTo, indexPlayer2)
				end
			end
			
			playerIndex2 = playerIndex2 + 1
			if playerIndex2 == bj_MAX_PLAYERS then break end
		end
		
		CripplePlayer(indexPlayer, toExposeTo, true)
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	
	DestroyForce(toExposeTo)
end
-- ===========================================================================
---@return nil
function MeleeCrippledPlayerTimeout()
	local expiredTimer = GetExpiredTimer()
	local playerIndex
	local exposedPlayer
	
	--  Determine which player's timer expired.
	playerIndex        = 0
	while true do
		if (bj_crippledTimer[playerIndex] == expiredTimer) then
			if true then break end
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
	if (playerIndex == bj_MAX_PLAYERS) then
		return
	end
	exposedPlayer = Player(playerIndex)
	
	if (GetLocalPlayer() == exposedPlayer) then
		--  Use only local code (no net traffic) within this block to avoid desyncs.
		
		--  Hide the timer window for this player.
		TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], false)
	end
	
	--  Display a text message to all players, explaining the exposure.
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, MeleeGetCrippledRevealedMessage(exposedPlayer))
	
	--  Expose the player.
	MeleeExposePlayer(exposedPlayer, true)
end
-- ===========================================================================

---@param whichPlayer player
---@return boolean
function MeleePlayerIsCrippled(whichPlayer)
	local playerStructures    = GetPlayerStructureCount(whichPlayer, true)
	local playerKeyStructures = BlzGetPlayerTownHallCount(whichPlayer)
	
	--  Dead players are not considered to be crippled.
	return (playerStructures > 0) and (playerKeyStructures <= 0)
end
-- ===========================================================================
--  Test each player to determine if anyone has become crippled.
-- 
---@return nil
function MeleeCheckForCrippledPlayers()
	local playerIndex
	local indexPlayer
	local crippledPlayers = CreateForce()
	local isNowCrippled
	local indexRace
	
	--  The "finish soon" exposure of all players overrides any "crippled" exposure
	if bj_finishSoonAllExposed then
		return
	end
	
	--  Check each player to see if he or she has been crippled or uncrippled.
	playerIndex = 0
	while true do
		indexPlayer   = Player(playerIndex)
		isNowCrippled = MeleePlayerIsCrippled(indexPlayer)
		
		if (not bj_playerIsCrippled[playerIndex] and isNowCrippled) then
			
			--  Player became crippled; start their cripple timer.
			bj_playerIsCrippled[playerIndex] = true
			TimerStart(bj_crippledTimer[playerIndex], bj_MELEE_CRIPPLE_TIMEOUT, false, MeleeCrippledPlayerTimeout)
			
			if (GetLocalPlayer() == indexPlayer) then
				--  Use only local code (no net traffic) within this block to avoid desyncs.
				
				--  Show the timer window.
				TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], true)
				
				--  Display a warning message.
				DisplayTimedTextToPlayer(indexPlayer, 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, MeleeGetCrippledWarningMessage(indexPlayer))
			end
		
		elseif (bj_playerIsCrippled[playerIndex] and not isNowCrippled) then
			
			--  Player became uncrippled; stop their cripple timer.
			bj_playerIsCrippled[playerIndex] = false
			PauseTimer(bj_crippledTimer[playerIndex])
			
			if (GetLocalPlayer() == indexPlayer) then
				--  Use only local code (no net traffic) within this block to avoid desyncs.
				
				--  Hide the timer window for this player.
				TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], false)
				
				--  Display a confirmation message if the player's team is still alive.
				if (MeleeGetAllyStructureCount(indexPlayer) > 0) then
					if (bj_playerIsExposed[playerIndex]) then
						DisplayTimedTextToPlayer(indexPlayer, 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, GetLocalizedString("CRIPPLE_UNREVEALED"))
					else
						DisplayTimedTextToPlayer(indexPlayer, 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, GetLocalizedString("CRIPPLE_UNCRIPPLED"))
					end
				end
			end
			
			--  If the player granted shared vision, deny that vision now.
			MeleeExposePlayer(indexPlayer, false)
		
		end
		
		playerIndex = playerIndex + 1
		if playerIndex == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================
--  Determine if the lost unit should result in any defeats or victories.
-- 

---@param lostUnit unit
---@return nil
function MeleeCheckLostUnit(lostUnit)
	local lostUnitOwner = GetOwningPlayer(lostUnit)
	
	--  We only need to check for mortality if this was the last building.
	if (GetPlayerStructureCount(lostUnitOwner, true) <= 0) then
		MeleeCheckForLosersAndVictors()
	end
	
	--  Check if the lost unit has crippled or uncrippled the player.
	--  (A team with 0 units is dead, and thus considered uncrippled.)
	MeleeCheckForCrippledPlayers()
end
-- ===========================================================================
--  Determine if the gained unit should result in any defeats, victories,
--  or cripple-status changes.
-- 

---@param addedUnit unit
---@return nil
function MeleeCheckAddedUnit(addedUnit)
	local addedUnitOwner = GetOwningPlayer(addedUnit)
	
	--  If the player was crippled, this unit may have uncrippled him/her.
	if (bj_playerIsCrippled[GetPlayerId(addedUnitOwner)]) then
		MeleeCheckForCrippledPlayers()
	end
end
-- ===========================================================================
---@return nil
function MeleeTriggerActionConstructCancel()
	MeleeCheckLostUnit(GetCancelledStructure())
end
-- ===========================================================================
---@return nil
function MeleeTriggerActionUnitDeath()
	if (IsUnitType(GetDyingUnit(), UNIT_TYPE_STRUCTURE)) then
		MeleeCheckLostUnit(GetDyingUnit())
	end
end
-- ===========================================================================
---@return nil
function MeleeTriggerActionUnitConstructionStart()
	MeleeCheckAddedUnit(GetConstructingStructure())
end
-- ===========================================================================
---@return nil
function MeleeTriggerActionPlayerDefeated()
	local thePlayer = GetTriggerPlayer()
	CachePlayerHeroData(thePlayer)
	
	if (MeleeGetAllyCount(thePlayer) > 0) then
		--  If at least one ally is still alive and kicking, share units with
		--  them and proceed with death.
		ShareEverythingWithTeam(thePlayer)
		if (not bj_meleeDefeated[GetPlayerId(thePlayer)]) then
			MeleeDoDefeat(thePlayer)
		end
	else
		--  If no living allies remain, swap all units and buildings over to
		--  neutral_passive and proceed with death.
		MakeUnitsPassiveForTeam(thePlayer)
		if (not bj_meleeDefeated[GetPlayerId(thePlayer)]) then
			MeleeDoDefeat(thePlayer)
		end
	end
	MeleeCheckForLosersAndVictors()
end
-- ===========================================================================
---@return nil
function MeleeTriggerActionPlayerLeft()
	local thePlayer = GetTriggerPlayer()
	
	--  Just show game over for observers when they leave
	if (IsPlayerObserver(thePlayer)) then
		RemovePlayerPreserveUnitsBJ(thePlayer, PLAYER_GAME_RESULT_NEUTRAL, false)
		return
	end
	
	CachePlayerHeroData(thePlayer)
	
	--  This is the same as defeat except the player generates the message 
	--  "player left the game" as opposed to "player was defeated".
	
	if (MeleeGetAllyCount(thePlayer) > 0) then
		--  If at least one ally is still alive and kicking, share units with
		--  them and proceed with death.
		ShareEverythingWithTeam(thePlayer)
		MeleeDoLeave(thePlayer)
	else
		--  If no living allies remain, swap all units and buildings over to
		--  neutral_passive and proceed with death.
		MakeUnitsPassiveForTeam(thePlayer)
		MeleeDoLeave(thePlayer)
	end
	MeleeCheckForLosersAndVictors()
end
-- ===========================================================================
---@return nil
function MeleeTriggerActionAllianceChange()
	MeleeCheckForLosersAndVictors()
	MeleeCheckForCrippledPlayers()
end
-- ===========================================================================
---@return nil
function MeleeTriggerTournamentFinishSoon()
	--  Note: We may get this trigger multiple times
	local playerIndex
	local indexPlayer
	local timeRemaining = GetTournamentFinishSoonTimeRemaining()
	
	if not bj_finishSoonAllExposed then
		bj_finishSoonAllExposed = true
		
		--  Reset all crippled players and their timers, and hide the local crippled timer dialog
		playerIndex             = 0
		while true do
			indexPlayer = Player(playerIndex)
			if bj_playerIsCrippled[playerIndex] then
				--  Uncripple the player
				bj_playerIsCrippled[playerIndex] = false
				PauseTimer(bj_crippledTimer[playerIndex])
				
				if (GetLocalPlayer() == indexPlayer) then
					--  Use only local code (no net traffic) within this block to avoid desyncs.
					
					--  Hide the timer window.
					TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], false)
				end
			
			end
			playerIndex = playerIndex + 1
			if playerIndex == bj_MAX_PLAYERS then break end
		end
		
		--  Expose all players
		MeleeExposeAllPlayers()
	end
	
	--  Show the "finish soon" timer dialog and set the real time remaining
	TimerDialogDisplay(bj_finishSoonTimerDialog, true)
	TimerDialogSetRealTimeRemaining(bj_finishSoonTimerDialog, timeRemaining)
end
-- ===========================================================================

---@param whichPlayer player
---@return boolean
function MeleeWasUserPlayer(whichPlayer)
	local slotState
	
	if (GetPlayerController(whichPlayer) ~= MAP_CONTROL_USER) then
		return false
	end
	
	slotState = GetPlayerSlotState(whichPlayer)
	
	return (slotState == PLAYER_SLOT_STATE_PLAYING or slotState == PLAYER_SLOT_STATE_LEFT)
end
-- ===========================================================================

---@param multiplier integer
---@return nil
function MeleeTournamentFinishNowRuleA(multiplier)
	local playerScore = {}
	local teamScore   = {}
	local teamForce   = {}
	local teamCount
	local index
	local indexPlayer
	local index2
	local indexPlayer2
	local bestTeam
	local bestScore
	local draw
	
	--  Compute individual player scores
	index             = 0
	while true do
		indexPlayer = Player(index)
		if MeleeWasUserPlayer(indexPlayer) then
			playerScore[index] = GetTournamentScore(indexPlayer)
			if playerScore[index] <= 0 then
				playerScore[index] = 1
			end
		else
			playerScore[index] = 0
		end
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
	
	--  Compute team scores and team forces
	teamCount = 0
	index     = 0
	while true do
		if playerScore[index] ~= 0 then
			indexPlayer          = Player(index)
			
			teamScore[teamCount] = 0
			teamForce[teamCount] = CreateForce()
			
			index2               = index
			while true do
				if playerScore[index2] ~= 0 then
					indexPlayer2 = Player(index2)
					
					if PlayersAreCoAllied(indexPlayer, indexPlayer2) then
						teamScore[teamCount] = teamScore[teamCount] + playerScore[index2]
						ForceAddPlayer(teamForce[teamCount], indexPlayer2)
						playerScore[index2] = 0
					end
				end
				
				index2 = index2 + 1
				if index2 == bj_MAX_PLAYERS then break end
			end
			
			teamCount = teamCount + 1
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
	
	--  The game is now over
	bj_meleeGameOver = true
	
	--  There should always be at least one team, but continue to work if not
	if teamCount ~= 0 then
		
		--  Find best team score
		bestTeam  = -1
		bestScore = -1
		index     = 0
		while true do
			if teamScore[index] > bestScore then
				bestTeam  = index
				bestScore = teamScore[index]
			end
			
			index = index + 1
			if index == teamCount then break end
		end
		
		--  Check whether the best team's score is 'multiplier' times better than
		--  every other team. In the case of multiplier == 1 and exactly equal team
		--  scores, the first team (which was randomly chosen by the server) will win.
		draw  = false
		index = 0
		while true do
			if index ~= bestTeam then
				if bestScore < (multiplier * teamScore[index]) then
					draw = true
				end
			end
			
			index = index + 1
			if index == teamCount then break end
		end
		
		if draw then
			--  Give draw to all players on all teams
			index = 0
			while true do
				ForForce(teamForce[index], MeleeDoDrawEnum)
				
				index = index + 1
				if index == teamCount then break end
			end
		else
			--  Give defeat to all players on teams other than the best team
			index = 0
			while true do
				if index ~= bestTeam then
					ForForce(teamForce[index], MeleeDoDefeatEnum)
				end
				
				index = index + 1
				if index == teamCount then break end
			end
			
			--  Give victory to all players on the best team
			ForForce(teamForce[bestTeam], MeleeDoVictoryEnum)
		end
	end

end
-- ===========================================================================
---@return nil
function MeleeTriggerTournamentFinishNow()
	local rule = GetTournamentFinishNowRule()
	
	--  If the game is already over, do nothing
	if bj_meleeGameOver then
		return
	end
	
	if (rule == 1) then
		--  Finals games
		MeleeTournamentFinishNowRuleA(1)
	else
		--  Preliminary games
		MeleeTournamentFinishNowRuleA(3)
	end
	
	--  Since the game is over we should remove all observers
	MeleeRemoveObservers()

end
-- ===========================================================================
---@return nil
function MeleeInitVictoryDefeat()
	local trig
	local index
	local indexPlayer
	
	--  Create a timer window for the "finish soon" timeout period, it has no timer
	--  because it is driven by real time (outside of the game state to avoid desyncs)
	bj_finishSoonTimerDialog = CreateTimerDialog(nil)
	
	--  Set a trigger to fire when we receive a "finish soon" game event
	trig                     = CreateTrigger()
	TriggerRegisterGameEvent(trig, EVENT_GAME_TOURNAMENT_FINISH_SOON)
	TriggerAddAction(trig, MeleeTriggerTournamentFinishSoon)
	
	--  Set a trigger to fire when we receive a "finish now" game event
	trig = CreateTrigger()
	TriggerRegisterGameEvent(trig, EVENT_GAME_TOURNAMENT_FINISH_NOW)
	TriggerAddAction(trig, MeleeTriggerTournamentFinishNow)
	
	--  Set up each player's mortality code.
	index = 0
	while true do
		indexPlayer = Player(index)
		
		--  Make sure this player slot is playing.
		if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
			bj_meleeDefeated[index]        = false
			bj_meleeVictoried[index]       = false
			
			--  Create a timer and timer window in case the player is crippled.
			bj_playerIsCrippled[index]     = false
			bj_playerIsExposed[index]      = false
			bj_crippledTimer[index]        = CreateTimer()
			bj_crippledTimerWindows[index] = CreateTimerDialog(bj_crippledTimer[index])
			TimerDialogSetTitle(bj_crippledTimerWindows[index], MeleeGetCrippledTimerMessage(indexPlayer))
			
			--  Set a trigger to fire whenever a building is cancelled for this player.
			trig = CreateTrigger()
			TriggerRegisterPlayerUnitEvent(trig, indexPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, nil)
			TriggerAddAction(trig, MeleeTriggerActionConstructCancel)
			
			--  Set a trigger to fire whenever a unit dies for this player.
			trig = CreateTrigger()
			TriggerRegisterPlayerUnitEvent(trig, indexPlayer, EVENT_PLAYER_UNIT_DEATH, nil)
			TriggerAddAction(trig, MeleeTriggerActionUnitDeath)
			
			--  Set a trigger to fire whenever a unit begins construction for this player
			trig = CreateTrigger()
			TriggerRegisterPlayerUnitEvent(trig, indexPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_START, nil)
			TriggerAddAction(trig, MeleeTriggerActionUnitConstructionStart)
			
			--  Set a trigger to fire whenever this player defeats-out
			trig = CreateTrigger()
			TriggerRegisterPlayerEvent(trig, indexPlayer, EVENT_PLAYER_DEFEAT)
			TriggerAddAction(trig, MeleeTriggerActionPlayerDefeated)
			
			--  Set a trigger to fire whenever this player leaves
			trig = CreateTrigger()
			TriggerRegisterPlayerEvent(trig, indexPlayer, EVENT_PLAYER_LEAVE)
			TriggerAddAction(trig, MeleeTriggerActionPlayerLeft)
			
			--  Set a trigger to fire whenever this player changes his/her alliances.
			trig = CreateTrigger()
			TriggerRegisterPlayerAllianceChange(trig, indexPlayer, ALLIANCE_PASSIVE)
			TriggerRegisterPlayerStateEvent(trig, indexPlayer, PLAYER_STATE_ALLIED_VICTORY, EQUAL, 1)
			TriggerAddAction(trig, MeleeTriggerActionAllianceChange)
		else
			bj_meleeDefeated[index]  = true
			bj_meleeVictoried[index] = false
			
			--  Handle leave events for observers
			if (IsPlayerObserver(indexPlayer)) then
				--  Set a trigger to fire whenever this player leaves
				trig = CreateTrigger()
				TriggerRegisterPlayerEvent(trig, indexPlayer, EVENT_PLAYER_LEAVE)
				TriggerAddAction(trig, MeleeTriggerActionPlayerLeft)
			end
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
	
	--  Test for victory / defeat at startup, in case the user has already won / lost.
	--  Allow for a short time to pass first, so that the map can finish loading.
	TimerStart(CreateTimer(), 2.0, false, MeleeTriggerActionAllianceChange)
end
-- ***************************************************************************
-- 
-- *  Player Slot Availability
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function CheckInitPlayerSlotAvailability()
	local index
	
	if (not bj_slotControlReady) then
		index = 0
		while true do
			bj_slotControlUsed[index] = false
			bj_slotControl[index]     = MAP_CONTROL_USER
			index                     = index + 1
			if index == bj_MAX_PLAYERS then break end
		end
		bj_slotControlReady = true
	end
end
-- ===========================================================================

---@param whichPlayer player
---@param control mapcontrol
---@return nil
function SetPlayerSlotAvailable(whichPlayer, control)
	local playerIndex = GetPlayerId(whichPlayer)
	
	CheckInitPlayerSlotAvailability()
	bj_slotControlUsed[playerIndex] = true
	bj_slotControl[playerIndex]     = control
end
-- ***************************************************************************
-- 
-- *  Generic Template Player-slot Initialization
-- 
-- ***************************************************************************
-- ===========================================================================

---@param teamCount integer
---@return nil
function TeamInitPlayerSlots(teamCount)
	local index
	local indexPlayer
	local team
	
	SetTeams(teamCount)
	
	CheckInitPlayerSlotAvailability()
	index = 0
	team  = 0
	while true do
		if (bj_slotControlUsed[index]) then
			indexPlayer = Player(index)
			SetPlayerTeam(indexPlayer, team)
			team = team + 1
			if (team >= teamCount) then
				team = 0
			end
		end
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================
---@return nil
function MeleeInitPlayerSlots()
	TeamInitPlayerSlots(bj_MAX_PLAYERS)
end
-- ===========================================================================
---@return nil
function FFAInitPlayerSlots()
	TeamInitPlayerSlots(bj_MAX_PLAYERS)
end
-- ===========================================================================
---@return nil
function OneOnOneInitPlayerSlots()
	--  Limit the game to 2 players.
	SetTeams(2)
	SetPlayers(2)
	TeamInitPlayerSlots(2)
end
-- ===========================================================================
---@return nil
function InitGenericPlayerSlots()
	local gType = GetGameTypeSelected()
	
	if (gType == GAME_TYPE_MELEE) then
		MeleeInitPlayerSlots()
	elseif (gType == GAME_TYPE_FFA) then
		FFAInitPlayerSlots()
	elseif (gType == GAME_TYPE_USE_MAP_SETTINGS) then
		--  Do nothing; the map-specific script handles this.
	elseif (gType == GAME_TYPE_ONE_ON_ONE) then
		OneOnOneInitPlayerSlots()
	elseif (gType == GAME_TYPE_TWO_TEAM_PLAY) then
		TeamInitPlayerSlots(2)
	elseif (gType == GAME_TYPE_THREE_TEAM_PLAY) then
		TeamInitPlayerSlots(3)
	elseif (gType == GAME_TYPE_FOUR_TEAM_PLAY) then
		TeamInitPlayerSlots(4)
	else
		--  Unrecognized Game Type
	end
end
-- ***************************************************************************
-- 
-- *  Blizzard.j Initialization
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function SetDNCSoundsDawn()
	if bj_useDawnDuskSounds then
		StartSound(bj_dawnSound)
	end
end
-- ===========================================================================
---@return nil
function SetDNCSoundsDusk()
	if bj_useDawnDuskSounds then
		StartSound(bj_duskSound)
	end
end
-- ===========================================================================
---@return nil
function SetDNCSoundsDay()
	local ToD = GetTimeOfDay()
	
	if (ToD >= bj_TOD_DAWN and ToD < bj_TOD_DUSK) and not bj_dncIsDaytime then
		bj_dncIsDaytime = true
		
		--  change ambient sounds
		StopSound(bj_nightAmbientSound, false, true)
		StartSound(bj_dayAmbientSound)
	end
end
-- ===========================================================================
---@return nil
function SetDNCSoundsNight()
	local ToD = GetTimeOfDay()
	
	if (ToD < bj_TOD_DAWN or ToD >= bj_TOD_DUSK) and bj_dncIsDaytime then
		bj_dncIsDaytime = false
		
		--  change ambient sounds
		StopSound(bj_dayAmbientSound, false, true)
		StartSound(bj_nightAmbientSound)
	end
end
-- ===========================================================================
---@return nil
function InitDNCSounds()
	--  Create sounds to be played at dawn and dusk.
	bj_dawnSound     = CreateSoundFromLabel("RoosterSound", false, false, false, 10000, 10000)
	bj_duskSound     = CreateSoundFromLabel("WolfSound", false, false, false, 10000, 10000)
	
	--  Set up triggers to respond to dawn and dusk.
	bj_dncSoundsDawn = CreateTrigger()
	TriggerRegisterGameStateEvent(bj_dncSoundsDawn, GAME_STATE_TIME_OF_DAY, EQUAL, bj_TOD_DAWN)
	TriggerAddAction(bj_dncSoundsDawn, SetDNCSoundsDawn)
	
	bj_dncSoundsDusk = CreateTrigger()
	TriggerRegisterGameStateEvent(bj_dncSoundsDusk, GAME_STATE_TIME_OF_DAY, EQUAL, bj_TOD_DUSK)
	TriggerAddAction(bj_dncSoundsDusk, SetDNCSoundsDusk)
	
	--  Set up triggers to respond to changes from day to night or vice-versa.
	bj_dncSoundsDay = CreateTrigger()
	TriggerRegisterGameStateEvent(bj_dncSoundsDay, GAME_STATE_TIME_OF_DAY, GREATER_THAN_OR_EQUAL, bj_TOD_DAWN)
	TriggerRegisterGameStateEvent(bj_dncSoundsDay, GAME_STATE_TIME_OF_DAY, LESS_THAN, bj_TOD_DUSK)
	TriggerAddAction(bj_dncSoundsDay, SetDNCSoundsDay)
	
	bj_dncSoundsNight = CreateTrigger()
	TriggerRegisterGameStateEvent(bj_dncSoundsNight, GAME_STATE_TIME_OF_DAY, LESS_THAN, bj_TOD_DAWN)
	TriggerRegisterGameStateEvent(bj_dncSoundsNight, GAME_STATE_TIME_OF_DAY, GREATER_THAN_OR_EQUAL, bj_TOD_DUSK)
	TriggerAddAction(bj_dncSoundsNight, SetDNCSoundsNight)
end
-- ===========================================================================
---@return nil
function InitBlizzardGlobals()
	local index
	local userControlledPlayers
	local v
	
	--  Init filter function vars
	filterIssueHauntOrderAtLocBJ      = Filter(IssueHauntOrderAtLocBJFilter)
	filterEnumDestructablesInCircleBJ = Filter(EnumDestructablesInCircleBJFilter)
	filterGetUnitsInRectOfPlayer      = Filter(GetUnitsInRectOfPlayerFilter)
	filterGetUnitsOfTypeIdAll         = Filter(GetUnitsOfTypeIdAllFilter)
	filterGetUnitsOfPlayerAndTypeId   = Filter(GetUnitsOfPlayerAndTypeIdFilter)
	filterMeleeTrainedUnitIsHeroBJ    = Filter(MeleeTrainedUnitIsHeroBJFilter)
	filterLivingPlayerUnitsOfTypeId   = Filter(LivingPlayerUnitsOfTypeIdFilter)
	
	--  Init force presets
	index                             = 0
	while true do
		if index == bj_MAX_PLAYER_SLOTS then break end
		bj_FORCE_PLAYER[index] = CreateForce()
		ForceAddPlayer(bj_FORCE_PLAYER[index], Player(index))
		index = index + 1
	end
	
	bj_FORCE_ALL_PLAYERS = CreateForce()
	ForceEnumPlayers(bj_FORCE_ALL_PLAYERS, nil)
	
	--  Init Cinematic Mode history
	bj_cineModePriorSpeed       = GetGameSpeed()
	bj_cineModePriorFogSetting  = IsFogEnabled()
	bj_cineModePriorMaskSetting = IsFogMaskEnabled()
	
	--  Init Trigger Queue
	index                       = 0
	while true do
		if index >= bj_MAX_QUEUED_TRIGGERS then break end
		bj_queuedExecTriggers[index] = nil
		bj_queuedExecUseConds[index] = false
		index                        = index + 1
	end
	
	--  Init singleplayer check
	bj_isSinglePlayer     = false
	userControlledPlayers = 0
	index                 = 0
	while true do
		if index >= bj_MAX_PLAYERS then break end
		if (GetPlayerController(Player(index)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(index)) == PLAYER_SLOT_STATE_PLAYING) then
			userControlledPlayers = userControlledPlayers + 1
		end
		index = index + 1
	end
	bj_isSinglePlayer         = (userControlledPlayers == 1)
	
	--  Init sounds
	-- set bj_pingMinimapSound = CreateSoundFromLabel("AutoCastButtonClick", false, false, false, 10000, 10000)
	bj_rescueSound            = CreateSoundFromLabel("Rescue", false, false, false, 10000, 10000)
	bj_questDiscoveredSound   = CreateSoundFromLabel("QuestNew", false, false, false, 10000, 10000)
	bj_questUpdatedSound      = CreateSoundFromLabel("QuestUpdate", false, false, false, 10000, 10000)
	bj_questCompletedSound    = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
	bj_questFailedSound       = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
	bj_questHintSound         = CreateSoundFromLabel("Hint", false, false, false, 10000, 10000)
	bj_questSecretSound       = CreateSoundFromLabel("SecretFound", false, false, false, 10000, 10000)
	bj_questItemAcquiredSound = CreateSoundFromLabel("ItemReward", false, false, false, 10000, 10000)
	bj_questWarningSound      = CreateSoundFromLabel("Warning", false, false, false, 10000, 10000)
	bj_victoryDialogSound     = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
	bj_defeatDialogSound      = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
	
	--  Init corpse creation triggers.
	DelayedSuspendDecayCreate()
	
	--  Init version-specific data
	v = VersionGet()
	if (v == VERSION_REIGN_OF_CHAOS) then
		bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V0
	else
		bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V1
	end
end
-- ===========================================================================
---@return nil
function InitQueuedTriggers()
	bj_queuedExecTimeout = CreateTrigger()
	TriggerRegisterTimerExpireEvent(bj_queuedExecTimeout, bj_queuedExecTimeoutTimer)
	TriggerAddAction(bj_queuedExecTimeout, QueuedTriggerDoneBJ)
end
-- ===========================================================================
---@return nil
function InitMapRects()
	bj_mapInitialPlayableArea = Rect(GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT), GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM), GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT), GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP))
	bj_mapInitialCameraBounds = GetCurrentCameraBoundsMapRectBJ()
end
-- ===========================================================================
---@return nil
function InitSummonableCaps()
	local index
	
	index = 0
	while true do
		--  upgraded units
		--  Note: Only do this if the corresponding upgrade is not yet researched
		--  Barrage - Siege Engines
		if (not GetPlayerTechResearched(Player(index), FourCC('Rhrt'), true)) then
			SetPlayerTechMaxAllowed(Player(index), FourCC('hrtt'), 0)
		end
		
		--  Berserker Upgrade - Troll Berserkers
		if (not GetPlayerTechResearched(Player(index), FourCC('Robk'), true)) then
			SetPlayerTechMaxAllowed(Player(index), FourCC('otbk'), 0)
		end
		
		--  max skeletons per player
		SetPlayerTechMaxAllowed(Player(index), FourCC('uske'), bj_MAX_SKELETONS)
		
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
-- ===========================================================================
--  Update the per-class stock limits.
-- 

---@param whichItem item
---@return nil
function UpdateStockAvailability(whichItem)
	local iType  = GetItemType(whichItem)
	local iLevel = GetItemLevel(whichItem)
	
	--  Update allowed type/level combinations.
	if (iType == ITEM_TYPE_PERMANENT) then
		bj_stockAllowedPermanent[iLevel] = true
	elseif (iType == ITEM_TYPE_CHARGED) then
		bj_stockAllowedCharged[iLevel] = true
	elseif (iType == ITEM_TYPE_ARTIFACT) then
		bj_stockAllowedArtifact[iLevel] = true
	else
		--  Not interested in this item type - ignore the item.
	end
end
-- ===========================================================================
--  Find a sellable item of the given type and level, and then add it.
-- 
---@return nil
function UpdateEachStockBuildingEnum()
	local iteration = 0
	local pickedItemId
	
	while true do
		pickedItemId = ChooseRandomItemEx(bj_stockPickedItemType, bj_stockPickedItemLevel)
		if IsItemIdSellable(pickedItemId) then break end
		
		--  If we get hung up on an entire class/level combo of unsellable
		--  items, or a very unlucky series of random numbers, give up.
		iteration = iteration + 1
		if (iteration > bj_STOCK_MAX_ITERATIONS) then
			return
		end
	end
	AddItemToStock(GetEnumUnit(), pickedItemId, 1, 1)
end
-- ===========================================================================

---@param iType itemtype
---@param iLevel integer
---@return nil
function UpdateEachStockBuilding(iType, iLevel)
	local g
	
	bj_stockPickedItemType  = iType
	bj_stockPickedItemLevel = iLevel
	
	g                       = CreateGroup()
	GroupEnumUnitsOfType(g, "marketplace", nil)
	ForGroup(g, UpdateEachStockBuildingEnum)
	DestroyGroup(g)
end
-- ===========================================================================
--  Update stock inventory.
-- 
---@return nil
function PerformStockUpdates()
	local pickedItemId
	local pickedItemType
	local pickedItemLevel     = 0
	local allowedCombinations = 0
	local iLevel
	
	--  Give each type/level combination a chance of being picked.
	iLevel                    = 1
	while true do
		if (bj_stockAllowedPermanent[iLevel]) then
			allowedCombinations = allowedCombinations + 1
			if (GetRandomInt(1, allowedCombinations) == 1) then
				pickedItemType  = ITEM_TYPE_PERMANENT
				pickedItemLevel = iLevel
			end
		end
		if (bj_stockAllowedCharged[iLevel]) then
			allowedCombinations = allowedCombinations + 1
			if (GetRandomInt(1, allowedCombinations) == 1) then
				pickedItemType  = ITEM_TYPE_CHARGED
				pickedItemLevel = iLevel
			end
		end
		if (bj_stockAllowedArtifact[iLevel]) then
			allowedCombinations = allowedCombinations + 1
			if (GetRandomInt(1, allowedCombinations) == 1) then
				pickedItemType  = ITEM_TYPE_ARTIFACT
				pickedItemLevel = iLevel
			end
		end
		
		iLevel = iLevel + 1
		if iLevel > bj_MAX_ITEM_LEVEL then break end
	end
	
	--  Make sure we found a valid item type to add.
	if (allowedCombinations == 0) then
		return
	end
	
	UpdateEachStockBuilding(pickedItemType, pickedItemLevel)
end
-- ===========================================================================
--  Perform the first update, and then arrange future updates.
-- 
---@return nil
function StartStockUpdates()
	PerformStockUpdates()
	TimerStart(bj_stockUpdateTimer, bj_STOCK_RESTOCK_INTERVAL, true, PerformStockUpdates)
end
-- ===========================================================================
---@return nil
function RemovePurchasedItem()
	RemoveItemFromStock(GetSellingUnit(), GetItemTypeId(GetSoldItem()))
end
-- ===========================================================================
---@return nil
function InitNeutralBuildings()
	local iLevel
	
	--  Chart of allowed stock items.
	iLevel = 0
	while true do
		bj_stockAllowedPermanent[iLevel] = false
		bj_stockAllowedCharged[iLevel]   = false
		bj_stockAllowedArtifact[iLevel]  = false
		iLevel                           = iLevel + 1
		if iLevel > bj_MAX_ITEM_LEVEL then break end
	end
	
	--  Limit stock inventory slots.
	SetAllItemTypeSlots(bj_MAX_STOCK_ITEM_SLOTS)
	SetAllUnitTypeSlots(bj_MAX_STOCK_UNIT_SLOTS)
	
	--  Arrange the first update.
	bj_stockUpdateTimer = CreateTimer()
	TimerStart(bj_stockUpdateTimer, bj_STOCK_RESTOCK_INITIAL_DELAY, false, StartStockUpdates)
	
	--  Set up a trigger to fire whenever an item is sold.
	bj_stockItemPurchased = CreateTrigger()
	TriggerRegisterPlayerUnitEvent(bj_stockItemPurchased, Player(PLAYER_NEUTRAL_PASSIVE), EVENT_PLAYER_UNIT_SELL_ITEM, nil)
	TriggerAddAction(bj_stockItemPurchased, RemovePurchasedItem)
end
-- ===========================================================================
---@return nil
function MarkGameStarted()
	bj_gameStarted = true
	DestroyTimer(bj_gameStartedTimer)
end
-- ===========================================================================
---@return nil
function DetectGameStarted()
	bj_gameStartedTimer = CreateTimer()
	TimerStart(bj_gameStartedTimer, bj_GAME_STARTED_THRESHOLD, false, MarkGameStarted)
end
-- ===========================================================================
---@return nil
function InitBlizzard()
	--  Set up the Neutral Victim player slot, to torture the abandoned units
	--  of defeated players.  Since some triggers expect this player slot to
	--  exist, this is performed for all maps.
	ConfigureNeutralVictim()
	
	InitBlizzardGlobals()
	InitQueuedTriggers()
	InitRescuableBehaviorBJ()
	InitDNCSounds()
	InitMapRects()
	InitSummonableCaps()
	InitNeutralBuildings()
	DetectGameStarted()
end
-- ***************************************************************************
-- 
-- *  Random distribution
-- 
-- *  Used to select a random object from a given distribution of chances
-- 
-- *  - RandomDistReset clears the distribution list
-- 
-- *  - RandomDistAddItem adds a new object to the distribution list
-- *    with a given identifier and an integer chance to be chosen
-- 
-- *  - RandomDistChoose will use the current distribution list to choose
-- *    one of the objects randomly based on the chance distribution
-- *  
-- *  Note that the chances are effectively normalized by their sum,
-- *  so only the relative values of each chance are important
-- 
-- ***************************************************************************
-- ===========================================================================
---@return nil
function RandomDistReset()
	bj_randDistCount = 0
end
-- ===========================================================================

---@param inID integer
---@param inChance integer
---@return nil
function RandomDistAddItem(inID, inChance)
	bj_randDistID[bj_randDistCount]     = inID
	bj_randDistChance[bj_randDistCount] = inChance
	bj_randDistCount                    = bj_randDistCount + 1
end
-- ===========================================================================
---@return integer
function RandomDistChoose()
	local sum     = 0
	local chance  = 0
	local index
	local foundID = -1
	local done
	
	--  No items?
	if (bj_randDistCount == 0) then
		return -1
	end
	
	--  Find sum of all chances
	index = 0
	while true do
		sum   = sum + bj_randDistChance[index]
		
		index = index + 1
		if index == bj_randDistCount then break end
	end
	
	--  Choose random number within the total range
	chance = GetRandomInt(1, sum)
	
	--  Find ID which corresponds to this chance
	index  = 0
	sum    = 0
	done   = false
	while true do
		sum = sum + bj_randDistChance[index]
		
		if (chance <= sum) then
			foundID = bj_randDistID[index]
			done    = true
		end
		
		index = index + 1
		if (index == bj_randDistCount) then
			done = true
		end
		
		if done == true then break end
	end
	
	return foundID
end
-- ***************************************************************************
-- 
-- *  Drop item
-- 
-- *  Makes the given unit drop the given item
-- 
-- *  Note: This could potentially cause problems if the unit is standing
-- *        right on the edge of an unpathable area and happens to drop the
-- *        item into the unpathable area where nobody can get it...
-- 
-- ***************************************************************************

---@param inUnit unit
---@param inItemID integer
---@return item
function UnitDropItem(inUnit, inItemID)
	local x
	local y
	local radius = 32
	local unitX
	local unitY
	local droppedItem
	
	if (inItemID == -1) then
		return nil
	end
	
	unitX       = GetUnitX(inUnit)
	unitY       = GetUnitY(inUnit)
	
	x           = GetRandomReal(unitX - radius, unitX + radius)
	y           = GetRandomReal(unitY - radius, unitY + radius)
	
	droppedItem = CreateItem(inItemID, x, y)
	
	SetItemDropID(droppedItem, GetUnitTypeId(inUnit))
	UpdateStockAvailability(droppedItem)
	
	return droppedItem
end
-- ===========================================================================

---@param inWidget widget
---@param inItemID integer
---@return item
function WidgetDropItem(inWidget, inItemID)
	local x
	local y
	local radius = 32
	local widgetX
	local widgetY
	
	if (inItemID == -1) then
		return nil
	end
	
	widgetX = GetWidgetX(inWidget)
	widgetY = GetWidgetY(inWidget)
	
	x       = GetRandomReal(widgetX - radius, widgetX + radius)
	y       = GetRandomReal(widgetY - radius, widgetY + radius)
	
	return CreateItem(inItemID, x, y)
end
-- ***************************************************************************
-- 
-- *  Instanced Object Operation Functions
-- 
-- *  Get/Set specific fields for single unit/item/ability instance
-- 
-- ***************************************************************************
-- ===========================================================================
---@return boolean
function BlzIsLastInstanceObjectFunctionSuccessful()
	return bj_lastInstObjFuncSuccessful
end
--  Ability
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitybooleanfield
---@param value boolean
---@return nil
function BlzSetAbilityBooleanFieldBJ(whichAbility, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityBooleanField(whichAbility, whichField, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityintegerfield
---@param value integer
---@return nil
function BlzSetAbilityIntegerFieldBJ(whichAbility, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityIntegerField(whichAbility, whichField, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityrealfield
---@param value real
---@return nil
function BlzSetAbilityRealFieldBJ(whichAbility, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityRealField(whichAbility, whichField, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitystringfield
---@param value string
---@return nil
function BlzSetAbilityStringFieldBJ(whichAbility, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityStringField(whichAbility, whichField, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@param value boolean
---@return nil
function BlzSetAbilityBooleanLevelFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityBooleanLevelField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@param value integer
---@return nil
function BlzSetAbilityIntegerLevelFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityIntegerLevelField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@param value real
---@return nil
function BlzSetAbilityRealLevelFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityRealLevelField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@param value string
---@return nil
function BlzSetAbilityStringLevelFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityStringLevelField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@param value boolean
---@return nil
function BlzSetAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@param value integer
---@return nil
function BlzSetAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@param value real
---@return nil
function BlzSetAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityRealLevelArrayField(whichAbility, whichField, level, index, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@param value string
---@return nil
function BlzSetAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetAbilityStringLevelArrayField(whichAbility, whichField, level, index, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return nil
function BlzAddAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzAddAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return nil
function BlzAddAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzAddAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return nil
function BlzAddAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzAddAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return nil
function BlzAddAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzAddAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return nil
function BlzRemoveAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzRemoveAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return nil
function BlzRemoveAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzRemoveAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return nil
function BlzRemoveAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzRemoveAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end
-- ===========================================================================

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return nil
function BlzRemoveAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, value)
	bj_lastInstObjFuncSuccessful = BlzRemoveAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end
--  Item 
-- =============================================================

---@param whichItem item
---@param abilCode integer
---@return nil
function BlzItemAddAbilityBJ(whichItem, abilCode)
	bj_lastInstObjFuncSuccessful = BlzItemAddAbility(whichItem, abilCode)
end
-- ===========================================================================

---@param whichItem item
---@param abilCode integer
---@return nil
function BlzItemRemoveAbilityBJ(whichItem, abilCode)
	bj_lastInstObjFuncSuccessful = BlzItemRemoveAbility(whichItem, abilCode)
end
-- ===========================================================================

---@param whichItem item
---@param whichField itembooleanfield
---@param value boolean
---@return nil
function BlzSetItemBooleanFieldBJ(whichItem, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetItemBooleanField(whichItem, whichField, value)
end
-- ===========================================================================

---@param whichItem item
---@param whichField itemintegerfield
---@param value integer
---@return nil
function BlzSetItemIntegerFieldBJ(whichItem, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetItemIntegerField(whichItem, whichField, value)
end
-- ===========================================================================

---@param whichItem item
---@param whichField itemrealfield
---@param value real
---@return nil
function BlzSetItemRealFieldBJ(whichItem, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetItemRealField(whichItem, whichField, value)
end
-- ===========================================================================

---@param whichItem item
---@param whichField itemstringfield
---@param value string
---@return nil
function BlzSetItemStringFieldBJ(whichItem, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetItemStringField(whichItem, whichField, value)
end
--  Unit 
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitbooleanfield
---@param value boolean
---@return nil
function BlzSetUnitBooleanFieldBJ(whichUnit, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitBooleanField(whichUnit, whichField, value)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitintegerfield
---@param value integer
---@return nil
function BlzSetUnitIntegerFieldBJ(whichUnit, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitIntegerField(whichUnit, whichField, value)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitrealfield
---@param value real
---@return nil
function BlzSetUnitRealFieldBJ(whichUnit, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitRealField(whichUnit, whichField, value)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitstringfield
---@param value string
---@return nil
function BlzSetUnitStringFieldBJ(whichUnit, whichField, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitStringField(whichUnit, whichField, value)
end
--  Unit Weapon
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitweaponbooleanfield
---@param index integer
---@param value boolean
---@return nil
function BlzSetUnitWeaponBooleanFieldBJ(whichUnit, whichField, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitWeaponBooleanField(whichUnit, whichField, index, value)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitweaponintegerfield
---@param index integer
---@param value integer
---@return nil
function BlzSetUnitWeaponIntegerFieldBJ(whichUnit, whichField, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitWeaponIntegerField(whichUnit, whichField, index, value)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitweaponrealfield
---@param index integer
---@param value real
---@return nil
function BlzSetUnitWeaponRealFieldBJ(whichUnit, whichField, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitWeaponRealField(whichUnit, whichField, index, value)
end
-- ===========================================================================

---@param whichUnit unit
---@param whichField unitweaponstringfield
---@param index integer
---@param value string
---@return nil
function BlzSetUnitWeaponStringFieldBJ(whichUnit, whichField, index, value)
	bj_lastInstObjFuncSuccessful = BlzSetUnitWeaponStringField(whichUnit, whichField, index, value)
end

-----------------------------------
--
--  Armor Storage
--
-----------------------------------
require("scripts/globals/keyitems");

-- Initialize StorageArray
-- {SetId,SetGroup,SetMask,SetCount,Head,Body,Hands,Legs,Feet,StorageCost,KeyItem}
StorageArray =    {0x01,0x04,0x000001,0x05,0x30DF,0x315E,0x3689,0x3786,0x3709,0x1F4,FIGHTERS_ARMOR_CLAIM_SLIP,
        0x02,0x04,0x000002,0x05,0x30E0,0x315F,0x368A,0x3787,0x370A,0x1F4,TEMPLE_ATTIRE_CLAIM_SLIP,
        0x03,0x04,0x000004,0x05,0x361F,0x3160,0x368B,0x3788,0x370B,0x1F4,HEALERS_ATTIRE_CLAIM_SLIP,
        0x04,0x04,0x000008,0x05,0x3620,0x3161,0x368C,0x3789,0x370C,0x1F4,WIZARDS_ATTIRE_CLAIM_SLIP,
        0x05,0x04,0x000010,0x05,0x30E1,0x3162,0x368D,0x378A,0x370D,0x1F4,WARLOCKS_ARMOR_CLAIM_SLIP,
        0x06,0x04,0x000020,0x05,0x30E2,0x3163,0x368E,0x378B,0x370E,0x1F4,ROGUES_ATTIRE_CLAIM_SLIP,
        0x07,0x04,0x000040,0x05,0x30E3,0x3164,0x368F,0x378C,0x370F,0x1F4,GALLANT_ARMOR_CLAIM_SLIP,
        0x08,0x04,0x000080,0x05,0x30E4,0x3165,0x3690,0x378D,0x3710,0x1F4,CHAOS_ARMOR_CLAIM_SLIP,
        0x09,0x04,0x000100,0x05,0x30E5,0x3166,0x3691,0x378E,0x3711,0x1F4,BEAST_ARMOR_CLAIM_SLIP,
        0x0A,0x04,0x000200,0x05,0x3621,0x3167,0x3692,0x378F,0x3712,0x1F4,CHORAL_ATTIRE_CLAIM_SLIP,
        0x0B,0x04,0x000400,0x05,0x30E6,0x3168,0x3693,0x3790,0x3713,0x1F4,HUNTERS_ATTIRE_CLAIM_SLIP,
        0x0C,0x04,0x000800,0x05,0x362C,0x35D5,0x3694,0x3791,0x3714,0x1F4,MYOCHIN_ARMOR_CLAIM_SLIP,
        0x0D,0x04,0x001000,0x05,0x362D,0x35D6,0x3695,0x3792,0x3715,0x1F4,NINJAS_GARB_CLAIM_SLIP,
        0x0E,0x04,0x002000,0x05,0x30E7,0x3169,0x3696,0x3793,0x3716,0x1F4,DRACHEN_ARMOR_CLAIM_SLIP,
        0x0F,0x04,0x004000,0x05,0x30E8,0x316A,0x3697,0x3794,0x3717,0x1F4,EVOKERS_ATTIRE_CLAIM_SLIP,
        0x10,0x01,0x000001,0x05,0x362F,0x35D7,0x36B1,0x37A3,0x3726,0x258,IRON_SCALE_ARMOR_CLAIM_SLIP,
        0x11,0x01,0x000002,0x05,0x3B3D,0x385A,0x3A0A,0x37F7,0x3BD3,0x12C,SHADE_HARNESS_CLAIM_SLIP,
        0x12,0x01,0x000004,0x05,0x3091,0x3111,0x3191,0x3211,0x3291,0x190,BRASS_SCALE_MAIL_CLAIM_SLIP,
        0x13,0x01,0x000008,0x05,0x30BA,0x313A,0x31BA,0x323A,0x32BA,0x190,WOOL_ROBE_CLAIM_SLIP,
        0x14,0x01,0x000010,0x05,0x3B3F,0x385F,0x3A0C,0x37F9,0x3BD5,0x0C8,EISENPLATTE_ARMOR_CLAIM_SLIP,
        0x15,0x01,0x000020,0x05,0x30AA,0x312A,0x31AA,0x322A,0x32AA,0x190,SOIL_GI_CLAIM_SLIP,
        0x16,0x01,0x000040,0x05,0x3B3B,0x3858,0x3A08,0x37F5,0x3BD1,0x0C8,SEERS_TUNIC_CLAIM_SLIP,
        0x17,0x01,0x000080,0x05,0x309A,0x311A,0x319A,0x321A,0x329A,0x190,STUDDED_ARMOR_CLAIM_SLIP,
        0x18,0x01,0x000100,0x05,0x3096,0x3116,0x3196,0x3216,0x3296,0x0C8,CENTURION_SCALE_MAIL_CLAIM_SLIP,
        0x19,0x01,0x000200,0x05,0x30B6,0x3136,0x31B6,0x3236,0x32B6,0x0C8,MRCCPT_DOUBLET_CLAIM_SLIP,
        0x1A,0x01,0x000400,0x05,0x3B3C,0x3859,0x3A09,0x37F6,0x3BD2,0x190,GARISH_TUNIC_CLAIM_SLIP,
        0x1B,0x01,0x000800,0x05,0x3B39,0x3856,0x3A06,0x37F3,0x3BCF,0x0C8,NOCT_DOUBLET_CLAIM_SLIP,
        0x1C,0x02,0x000001,0x04,0x0000,0x316E,0x31D9,0x3247,0x32D7,0x0FA,CUSTOM_ARMOR_MALE_CLAIM_SLIP,
        0x1D,0x02,0x000002,0x04,0x0000,0x316F,0x31DA,0x3248,0x32D8,0x0FA,CUSTOM_ARMOR_FEMALE_CLAIM_SLIP,
        0x1E,0x02,0x000004,0x04,0x0000,0x3170,0x31DB,0x3249,0x32D9,0x0FA,MAGNA_ARMOR_MALE_CLAIM_SLIP,
        0x1F,0x02,0x000008,0x04,0x0000,0x3171,0x31DC,0x324A,0x32DA,0x0FA,MAGNA_ARMOR_FEMALE_CLAIM_SLIP,
        0x20,0x02,0x000010,0x04,0x0000,0x3172,0x31DD,0x324B,0x32DB,0x0FA,WONDER_ARMOR_CLAIM_SLIP,
        0x21,0x02,0x000020,0x04,0x0000,0x3173,0x31DE,0x324C,0x32DC,0x0FA,SAVAGE_ARMOR_CLAIM_SLIP,
        0x22,0x02,0x000040,0x04,0x0000,0x3174,0x31DF,0x324D,0x32DD,0x0FA,ELDER_ARMOR_CLAIM_SLIP,
        0x23,0x02,0x000080,0x04,0x0000,0x3142,0x31C2,0x3242,0x32C2,0x1F4,LINEN_CLOAK_CLAIM_SLIP,
        0x24,0x02,0x000100,0x05,0x30A2,0x3122,0x31A2,0x3224,0x32A2,0x1F4,PADDED_ARMOR_CLAIM_SLIP,
        0x25,0x02,0x000200,0x05,0x3089,0x3109,0x3189,0x3209,0x3289,0x1F4,SILVER_CHAINMAIL_CLAIM_SLIP,
        0x26,0x02,0x000400,0x05,0x30B2,0x3132,0x31B2,0x3232,0x32B2,0x258,GAMBISON_CLAIM_SLIP,
        0x27,0x02,0x000800,0x05,0x3088,0x3108,0x3188,0x3208,0x3288,0x096,IRON_CHAINMAIL_CLAIM_SLIP,
        0x28,0x02,0x001000,0x05,0x309B,0x311B,0x319B,0x321B,0x329B,0x258,CUIR_ARMOR_CLAIM_SLIP,
        0x29,0x02,0x002000,0x05,0x30BB,0x313B,0x31BB,0x323B,0x32BB,0x258,VELVET_ROBE_CLAIM_SLIP,
        0x2A,0x02,0x004000,0x04,0x366B,0x3830,0x0000,0x37A9,0x3724,0x258,OPALINE_DRESS_CLAIM_SLIP,
        0x2B,0x02,0x008000,0x05,0x308F,0x310F,0x318F,0x320F,0x328F,0x12C,RYLSQR_CHAINMAIL_CLAIM_SLIP,
        0x2C,0x02,0x010000,0x05,0x3080,0x3100,0x3180,0x3200,0x3280,0x258,PLATE_ARMOR_CLAIM_SLIP,
        0x2D,0x02,0x020000,0x04,0x0000,0x3146,0x31C7,0x3246,0x32C6,0x258,COMBAT_CASTERS_CLOAK_CLAIM_SLIP,
        0x2E,0x03,0x000001,0x05,0x3B65,0x386C,0x36E3,0x3C2A,0x3BED,0x2BC,ALUMINE_HAUBERT_CLAIM_SLIP,
        0x2F,0x03,0x000002,0x05,0x358F,0x3590,0x3591,0x3225,0x3593,0x2BC,CARAPACE_HARNESS_CLAIM_SLIP,
        0x30,0x03,0x000004,0x05,0x308A,0x310A,0x318A,0x320A,0x328A,0x320,BANDED_MAIL_CLAIM_SLIP,
        0x31,0x03,0x000008,0x05,0x30AB,0x312B,0x31AB,0x322B,0x32AE,0x320,HARA_ATE_CLAIM_SLIP,
        0x32,0x03,0x000010,0x05,0x309C,0x311C,0x319C,0x321C,0x329C,0x320,RAPTOR_ARMOR_CLAIM_SLIP,
        0x33,0x03,0x000020,0x05,0x3631,0x35D9,0x36B3,0x37A5,0x3728,0x320,STEEL_SCALE_CLAIM_SLIP,
        0x34,0x03,0x000040,0x05,0x30B3,0x3133,0x31B3,0x3233,0x32B3,0x320,WOOL_GAMBISON_CLAIM_SLIP,
        0x35,0x03,0x000080,0x05,0x30AC,0x312C,0x31AC,0x322C,0x32AC,0x320,SHINOBI_GI_CLAIM_SLIP,
        0x36,0x03,0x000200,0x05,0x3086,0x3106,0x3186,0x3206,0x3286,0x320,IRNMSK_CUIRASS_CLAIM_SLIP,
        0x37,0x03,0x000400,0x05,0x30BE,0x313E,0x31BE,0x323E,0x32BE,0x320,TCTMGC_CLOAK_CLAIM_SLIP,
        0x38,0x03,0x000800,0x04,0x0000,0x3143,0x31C3,0x3243,0x32C3,0x320,WHITE_CLOAK_CLAIM_SLIP,
        0x39,0x03,0x001000,0x05,0x3673,0x35F6,0x39EA,0x37E6,0x376D,0x320,AUSTERE_ROBE_CLAIM_SLIP,
        0x3A,0x03,0x000100,0x05,0x3081,0x3101,0x3181,0x3201,0x3281,0x320,MYTHRIL_PLATE_ARMOR_CLAIM_SLIP,
        0x3B,0x03,0x002000,0x05,0x3B8A,0x38A2,0x3A3B,0x3CDA,0x3D2F,0x320,CROW_JUPON_CLAIM_SLIP,
        0x3C,0x04,0x008000,0x05,0x3BA1,0x38B9,0x3A50,0x3CF0,0x3D44,0x1F4,MAGUS_ATTIRE_CLAIM_SLIP,
        0x3D,0x04,0x010000,0x05,0x3BA2,0x38BA,0x3A51,0x3CF1,0x3D45,0x1F4,CORSAIRS_ATTIRE_CLAIM_SLIP,
        0x3E,0x04,0x020000,0x05,0x3BA3,0x38BB,0x3A52,0x3CF2,0x3D46,0x1F4,PUPPETRY_ATTIRE_CLAIM_SLIP,
        0x3F,0x06,0x000001,0x05,0x3AE0,0x3AEF,0x3AFE,0x3B0D,0x3B1C,0x3E8,WARRIORS_ARMOR_CLAIM_SLIP,
        0x40,0x06,0x000002,0x05,0x3AE1,0x3AF0,0x3AFF,0x3B0E,0x3B1D,0x3E8,MELEE_ATTIRE_CLAIM_SLIP,
        0x41,0x06,0x000004,0x05,0x3AE2,0x3AF1,0x3B00,0x3B0F,0x3B1E,0x3E8,CLERICS_ATTIRE_CLAIM_SLIP,
        0x42,0x06,0x000008,0x05,0x3AE3,0x3AF2,0x3B01,0x3B10,0x3B1F,0x3E8,SORCERERS_ATTIRE_CLAIM_SLIP,
        0x43,0x06,0x000010,0x05,0x3AE4,0x3AF3,0x3B02,0x3B11,0x3B20,0x3E8,DUELISTS_ARMOR_CLAIM_SLIP,
        0x44,0x06,0x000020,0x05,0x3AE5,0x3AF4,0x3B03,0x3B12,0x3B21,0x3E8,ASSASSINS_ATTIRE_CLAIM_SLIP,
        0x45,0x06,0x000040,0x05,0x3AE6,0x3AF5,0x3B04,0x3B13,0x3B22,0x3E8,VALOR_ARMOR_CLAIM_SLIP,
        0x46,0x06,0x000080,0x05,0x3AE7,0x3AF6,0x3B05,0x3B14,0x3B23,0x3E8,ABYSS_ARMOR_CLAIM_SLIP,
        0x47,0x06,0x000100,0x05,0x3AE8,0x3AF7,0x3B06,0x3B15,0x3B24,0x3E8,MONSTER_ARMOR_CLAIM_SLIP,
        0x48,0x06,0x000200,0x05,0x3AE9,0x3AF8,0x3B07,0x3B16,0x3B25,0x3E8,BARDS_ATTIRE_CLAIM_SLIP,
        0x49,0x06,0x000400,0x05,0x3AEA,0x3AF9,0x3B08,0x3B17,0x3B26,0x3E8,SCOUTS_ATTIRE_CLAIM_SLIP,
        0x4A,0x06,0x000800,0x05,0x3AEB,0x3AFA,0x3B09,0x3B18,0x3B27,0x3E8,SAOTOME_ARMOR_CLAIM_SLIP,
        0x4B,0x06,0x001000,0x05,0x3AEC,0x3AFB,0x3B0A,0x3B19,0x3B28,0x3E8,KOGA_GARB_CLAIM_SLIP,
        0x4C,0x06,0x002000,0x05,0x3AED,0x3AFC,0x3B0B,0x3B1A,0x3B29,0x3E8,WYRM_ARMOR_CLAIM_SLIP,
        0x4D,0x06,0x004000,0x05,0x3AEE,0x3AFD,0x3B0C,0x3B1B,0x3B2A,0x3E8,SUMMONERS_ATTIRE_CLAIM_SLIP,
        0x4E,0x04,0x040000,0x05,0x3F0A,0x38F2,0x3A9A,0x3D2B,0x3D82,0x1F4,DANCERS_ATTIRE_CLAIM_SLIP,
        0x4F,0x04,0x080000,0x05,0x3F0B,0x38F3,0x3A9B,0x3D2C,0x3D83,0x1F4,DANCERS_ATTIRE_CLAIM_SLIP,
        0x50,0x04,0x100000,0x05,0x3F0C,0x38F4,0x3A9C,0x3FB7,0x3D84,0x1F4,SCHOLARS_ATTIRE_CLAIM_SLIP,
        0x51,0x04,0x200000,0x05,0x3EBE,0x38BD,0x3A55,0x3CF4,0x3D48,0x3E8,AMIR_ARMOR_CLAIM_SLIP,
        0x52,0x04,0x400000,0x05,0x3EC5,0x38C2,0x3A5C,0x3CF9,0x3D4F,0x3E8,PAHLUWAN_ARMOR_CLAIM_SLIP,
        0x53,0x04,0x800000,0x05,0x3EC0,0x38BF,0x3A57,0x3CF6,0x3D4A,0x3E8,YIGIT_ARMOR_CLAIM_SLIP,
        0x54,0x06,0x008000,0x05,0x2CC9,0x2C1C,0x3AB1,0x3FDA,0x2C76,0x3E8,MIRAGE_ATTIRE_CLAIM_SLIP,
        0x55,0x06,0x010000,0x05,0x2CCC,0x2C1F,0x3AB4,0x3FDD,0x2C79,0x3E8,COMMODORE_ATTIRE_CLAIM_SLIP,
        0x56,0x06,0x020000,0x05,0x2CCF,0x2C22,0x3AB7,0x3FE0,0x2C7C,0x3E8,PANTIN_ATTIRE_CLAIM_SLIP,
        0x57,0x06,0x040000,0x05,0x2CD6,0x2C29,0x3ABE,0x3FE8,0x2C84,0x3E8,ETOILE_ATTIRE_CLAIM_SLIP,
        0x58,0x06,0x080000,0x05,0x2CD8,0x2C2B,0x3AC0,0x3FEA,0x2C86,0x3E8,ARGUTE_ATTIRE_CLAIM_SLIP,
        0x59,0x02,0x040000,0x02,0x0000,0x2C2E,0x0000,0x3FED,0x0000,0x258,ARGENT_ATTIRE_CLAIM_SLIP};
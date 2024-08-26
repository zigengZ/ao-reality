--#region Model

RealityInfo = {
  Dimensions = 2,
  Name = 'ExampleReality',
  ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
  ['2D-Tile-0'] = {
    Version = 0,
    Spawn = { 5, 7 },
    -- This is a tileset themed to Llama Land main island
    Tileset = {
      Type = 'Fixed',
      Format = 'PNG',
      TxId = 'CsrjNjjW64pNV4SsNGU_pD9sAOw-vuKMNZU25wTETow', -- TxId of the tileset in PNG format
    },
    -- This is a tilemap of sample small island
    Tilemap = {
      Type = 'Fixed',
      Format = 'TMJ',
      TxId = 'V_2CQtcV9MCKhSMNmRYAExf_fAieXTvHEWYNCQqqnrM', -- TxId of the tilemap in TMJ format
      -- Since we are already setting the spawn in the middle, we don't need this
      -- Offset = { -10, -10 },
    },
  },
}

RealityEntitiesStatic = {
  ['34Cz323LM-DiSSQuS1I3427ijVzIr7lPUbOTumOI600'] = {
    Position = { 9, 8 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Oracle Llama',
      SpriteTxId = 'DI69VXAV5an_lsP3p8IpjYjhIw6ca0UpFG6OkoE7p1c',
      Interaction = {
        Type = 'SchemaExternalForm',
        Id = 'AskOracleLlama'
       },
    },
  },

  -- ['Rp5lau6idhHLubV6g9OpZgy8Av0w4jZfBqSDCcHSObU'] = {
  --   Position = { 4, 8 },
  --   Type = 'Avatar',
  --   Metadata = {
  --     DisplayName = 'Llama Joker',
  --     SkinNumber = 8,
  --     Interaction = {
  --       Type = 'SchemaExternalForm',
  --       Id = 'MakeJoke'
  --     },
  --   },
  -- },

  ['v3rSUIk3iGYVclXshyLlLZ9qhqdPljr68m0FDX7O0MM'] = {
    Position = { 15, 15 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Fantasy Llama',
      SkinNumber = 9,
      Interaction = {
        Type = 'Default',
      },
    },
  },

  ['zXYVgUHOn3caqEZuHj1ExSFQS0Y50S0prwP8U605rbo'] = {
    Position = { 11, 17 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Hodl Harry',
      SkinNumber = 1,
      Interaction = {
        Type = 'Default',
      },
    },
  },

  ['UcxESMLntdZ0qnIMZVvyXUoOTeYBumBpGonpYAAzm1c'] = {
    Position = { 6, 18 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Quantum Flunk',
      SkinNumber = 3,
      Interaction = {
        Type = 'Default',
      },
    },
  },

  ['kYPI76-D0A_ecwywReGvHjJHP62sChQcgnZd0dEbpMw'] = {
    Position = { 4, 15 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Existen-shell Dread',
      SkinNumber = 2,
      Interaction = {
        Type = 'Default',
      },
    },
  },

  ['q-hWcV7BjLkx8gmPKUBi0hezd2MDShMXMBZbeLE9EVQ'] = {
    Position = { 5, 12 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Meme-o Fired',
      SkinNumber = 0,
      Interaction = {
        Type = 'Default',
      },
    },
  },

  ['K6pMsPD56VL1Iw7p2tZ8v1GK3Z_PqZtOuVezr-9rLgA'] = {
    Position = { 3, 8 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Camel-not Crushed',
      SkinNumber = 4,
      Interaction = {
        Type = 'Default',
      },
    },
  },

  ['0f3fglGtRcMbNWOvSJwT2iMEWoSrXkEumFE0-xvM5NM'] = {
    Position = { 14, 7 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Gratitude Llamastery',
      SkinNumber = 5,
      Interaction = {
        Type = 'Default',
      },
    },
  },

}




--#endregion

return print("Loaded Reality Template")

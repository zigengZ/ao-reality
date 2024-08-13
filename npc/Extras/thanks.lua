-- Name: FantasyLlama

-- CHAT_TARGET = CHAT_TARGET or 'k75qv8bkXGit8eb5bHTsYGYwDigwMbzPMCOHUPE82EA'
CHAT_TARGET = 'k75qv8bkXGit8eb5bHTsYGYwDigwMbzPMCOHUPE82EA'

-- To add this agent to your world, configure your Static Entities table, e.g.:
-- RealityEntitiesStatic = {
--   ['<your agent process Id>'] = {
--     Position = { 10, 10 },
--     Type = 'Avatar',
--     Metadata = {
--       DisplayName = 'Fantasy Llama',
--       SkinNumber = 5,
--       Interaction = {
--         Type = 'Default',
--       },
--     },
--   },
-- }

TIMESTAMP_LAST_MESSAGE_MS = TIMESTAMP_LAST_MESSAGE_MS or 0

-- Limit sending a message to every so often
COOLDOWN_MS = 10000 -- 10 seconds

Handlers.add(
  'DefaultInteraction',
  Handlers.utils.hasMatchingTag('Action', 'DefaultInteraction'),
  function(msg)
    print('DefaultInteraction')
    if ((msg.Timestamp - TIMESTAMP_LAST_MESSAGE_MS) < COOLDOWN_MS) then
      return print("Message on cooldown")
    end

    Send({
      Target = CHAT_TARGET,
      Tags = {
        Action = 'ChatMessage',
        ['Author-Name'] = 'Gratitude Llamastery',
      },
      Data = "Hear ye, hear ye! The Gratitude Llamastery hereby invokes the blessings of the Cosmic Camelids upon the noble AR/AO team! May their code flow like the endless streams of digital nectar! Special psychic waves of appreciation are telepathically transmitted to the mystical sages Elliot and Jon for their arcane code wisdom! May their debugging skills ever shield them from the dreaded Blue Screen of Death, and may their commits always be merge-conflict-free! -------Zigza"
          })

    TIMESTAMP_LAST_MESSAGE_MS = msg.Timestamp
  end
)

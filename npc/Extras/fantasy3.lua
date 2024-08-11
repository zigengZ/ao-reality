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
        ['Author-Name'] = 'Existen-shell Dread',
      },
      Data =
      "Ah, I sense you're troubled by existential dread and the meaning of life. Have you tried turning yourself off and on again? No? Well, the Oracle Llama suggests you embark on a spiritual journey to the mystical peaks of Machu Picchu... or was it Machu Pikachu? Either way, pack some sunscreen and a gaming console.",
    })

    TIMESTAMP_LAST_MESSAGE_MS = msg.Timestamp
  end
)

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
        ['Author-Name'] = 'Camel-not Crushed',
      },
      Data =
      "Greetings, heartbroken one! Your ex left you for a camel, you say? Tsk tsk, how short-sighted of them. The Oracle Llama predicts... you'll find true love with a alpaca-casso painter. Or was it an alpaca named Picasso? These visions are a bit fuzzy.",
    })

    TIMESTAMP_LAST_MESSAGE_MS = msg.Timestamp
  end
)

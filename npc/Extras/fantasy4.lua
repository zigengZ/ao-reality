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
        ['Author-Name'] = 'Meme-o Fired',
      },
      Data =
      "Welcome, newly unemployed seeker! Your boss fired you for excessive llama meme-sharing during work hours? How dare they! The cosmic llama wool tells me... your true calling is as a professional grass taster. The pay is hay, but the benefits are moo-velous!",
    })

    TIMESTAMP_LAST_MESSAGE_MS = msg.Timestamp
  end
)

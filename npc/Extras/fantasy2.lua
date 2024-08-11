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
        ['Author-Name'] = 'Quantum Flunk',
      },
      Data =
      "Behold, a student seeking wisdom! You failed your quantum physics exam and now you're questioning the nature of reality itself? Classic! The Oracle Llama divines that in a parallel universe, you're a genius... selling llama-shaped quantum fluctuation detectors. Maybe try importing some of that success to this reality?",
    })

    TIMESTAMP_LAST_MESSAGE_MS = msg.Timestamp
  end
)

# Let's play some trivia!
class Robut::Plugin::Trivia
  include Robut::Plugin

  # Returns a description of how to use this plugin
  def usage
    [
        "#{at_nick} trivia - asks a trivia question",
        "#{at_nick} <answer> - answer the trivia question"
    ]
  end

  def handle(time, sender_nick, message)
    words = words(message)

    i = words.index("trivia")
    # ignore messages that don't have "trivia" in them
    return if i.nil?
    end
end
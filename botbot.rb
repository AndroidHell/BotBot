require 'cinch'

bot = Cinch::Bot.new do
  
  configure do |c|
    c.nick  = "Mr_Botbot"
    c.username = "Mr_Botbot"
    c.realname = "Mr_Roboto"
    c.server = "irc.freenode.org"
    c.channels = ["#empeopled"]
  end

  # main function of the bot. 
  on :message, /\b+(robot|bot)(s\b|\b)+/i   do |m|
    m.reply "Everyone is a bot except you."
  end
  
  # who doesn't like a bit of snark?
  on :message, /\b+meh\b+/i  do |m|
    m.reply "...just freaking meh."
  end
  
  # personal meta-joke for me. Bad spellers untie!
  on :message, /\b+jsut\b+/i  do |m|
    m.reply "It's spelled 'just' you idiot!"
  end
  
  on :message, /\b+liek\b+/i  do |m|
    m.reply "Hey #{m.user.nick}, it's spelled 'like'."
  end
  
  # playing dirty
  on :message, /\b*(_ó|_ø|_0|_o|_ö|_O|_​0|_​o)\b*/i  do |m|
    # .bang actually works so don't use it
    # m.reply ".bang"
    m.reply ".pewpew. Just kidding."
  end
  
end

bot.start
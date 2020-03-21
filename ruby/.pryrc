# When pry-byebug gem is installed then pry get byebug debugging capabilities.
# Enable shortcut aliases familiar from byebug. By default they aren't.
if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end
# Hit Enter to repeat last command like in byebug.
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end

#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/eval_history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:USE_COLORIZE] = false
IRB.conf[:ECHO] = true
IRB.conf[:ECHO_ON_ASSIGNMENT] = true
IRB.conf[:INSPECT_MODE] = :inspect
IRB.conf[:USE_AUTOCOMPLETE] = false

class Object
  # list methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end

# ANSI escape sequences for changing cursor style
line_cursor = "\e[6 q"   # Line (beam) cursor
block_cursor = "\e[2 q"  # Block cursor (default)

# Change to line cursor when IRB starts
print line_cursor

# Restore default cursor when IRB exits
at_exit { print block_cursor }

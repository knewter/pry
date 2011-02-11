class Pry

  # The default prompt; includes the target and nesting level
  DEFAULT_PROMPT = [
                    proc do |target_self, nest_level|
                      if nest_level == 0
                        "pry(#{Pry.view(target_self)})> "
                      else
                        "pry(#{Pry.view(target_self)}):#{Pry.view(nest_level)}> "
                      end
                    end,
                    
                    proc do |target_self, nest_level|
                      if nest_level == 0
                        "pry(#{Pry.view(target_self)})* "
                      else
                        "pry(#{Pry.view(target_self)}):#{Pry.view(nest_level)}* "
                      end
                    end
                   ]

  # A simple prompt - doesn't display target or nesting level
  SIMPLE_PROMPT = [proc { "pry> " }, proc { "pry* " }]
end
local fwatch = require "fwatch"
fwatch.watch("a_file", {
  on_event = function()
    print "a_file changed"
  end,
})

local limit = 10

fwatch.watch("a_dir", {
  on_event = function(filename, events, unwatch)
    limit = limit - 1
    if limit <= 0 then
      -- *immediately* stop.
      -- without return, the callback would continue executing,
      -- but not be run on the next change.
      print "10 changes, very sleepy."
      return unwatch()
    end

    print("a_dir/" .. filename .. " was changed")
  end,
  on_error = function(error, unwatch)
    -- disable watcher
    unwatch()
    -- note, print still occurs even though we unwatched *future* events
    print("An error occured: " .. error)
  end,
})

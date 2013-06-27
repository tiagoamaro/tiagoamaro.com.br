RAILS_ROOT = "/root/curriculum_v2/current"

God.watch do |w|
  w.name = "curriculum_v2"

  w.start = "cd #{RAILS_ROOT} && rails s -e production -d"
  w.restart = w.start
  w.stop = "pkill ruby"
  w.pid_file = File.join(RAILS_ROOT, "tmp/pids/server.pid")

  w.start_if do |start|
    start.condition(:process_running) do |c|
      c.interval = 5.seconds
      c.running = false
    end
  end
end
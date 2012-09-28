# Change this file to be a wrapper around your daemon code.

# Do your post daemonization configuration here
# At minimum you need just the first line (without the block), or a lot
# of strange things might start happening...
DaemonKit::Application.running! do |config|
  # Trap signals with blocks or procs
  config.trap( 'INT' ) do
    puts "last_reboot interrupted"
    # do something clever
  end
  config.trap( 'TERM', Proc.new { puts 'Going down' } )
end

DaemonKit::Application.running! do |config|
  config.trap( 'INT' ) do
    DaemonKit.logger.info "\nINT #{Process.ppid} > #{Process.pid} GOING DOWN. WORKERS: #{WORKERS.keys.inspect}"
    WORKERS.each_pair do |pid, foff|
      DaemonKit.logger.info "\nNotifying child process #{pid} it's time to go."
      kill_worker(:QUIT, pid)
    end
    Process.waitall
  end
end

def kill_worker(signal, wpid)
  begin
    Process.kill(signal, wpid)
  rescue Errno::ESRCH
    worker = WORKERS.delete(wpid) rescue nil
  end
end

def fork_and_trap(wrkr)
  fork do
    trap(:QUIT) do
      wrkr.stopit!
      wrkr.log "aawwwright, time for a break. Hang on, lemme finish up..."
    end

    wrkr.run
  end
end

WORKERS = {}

(0...DaemonKit.arguments.options[:worker_count]).each do
  foff = Foff.new
  WORKERS[ fork_and_trap(foff) ] = foff
end

DaemonKit.logger.info "PIDs: #{WORKERS.keys.inspect}"
Process.waitall

#DaemonKit::XMPP.run do
#  when_ready { DaemonKit.logger.info "Connected as #{jid}" }
#  
#  @last_reboot = LastReboot.new
#
#  # Auto approve subscription requests
#  subscription :request? do |s|
#    write_to_stream s.approve!
#  end
#
#  # Echo back what was said
#  message :chat?, :body do |m|
#    #write_to_stream m.reply
#    write_to_stream @last_reboot.time_since
#  end
#  
#end

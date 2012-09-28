class LastReboot

  attr_accessor :start_time

  def initialize
    @start_time = Time.now 
  end

  def log(msg)
    (@logger ||= DaemonKit.logger).info "#{Process.ppid} > #{Process.pid} #{msg}"
  end

  def time_since
    puts "It has been #{Time.now - @start_time} since the last reboot"
  end

  def run
    loop do
      log "START @ #{Time.now}"
      puts time_since
      sleep 10
    end
  end

end

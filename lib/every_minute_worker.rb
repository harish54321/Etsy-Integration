class EveryMinuteWorker

  def self.start_up
    new.renew_shops
  end

  def renew_for_all_matching_shops
    # enqueue next run
    self.delay(:run_at => 1.minute.from_now).renew_for_all_matching_shops

    do_work
  end

  private

  def do_work
    shops_with_active_renewal.each do |shop|
      if minute_of_day % shop.renew_every_x_minutes == 0
        finder = RenewFinder.new shop.token, shop.secret
        finder.renew_oldest_listing
      end
    end
  end

  def shops_with_active_renewal
    AccessToken.where( :enable_auto_renew => true )
  end

  def minute_of_day
    @minute_of_day = @minute_of_day || Time.min + ( Time.hour * 60 )
  end
end

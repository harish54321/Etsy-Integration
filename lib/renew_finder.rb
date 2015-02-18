class RenewFinder
  attr_reader :access_token,
    :access_secret

  def initialize access_token, access_secret
    @access_token = access_token
    @access_secret = access_secret
  end

  def renew_oldest_listing
    listing = find_oldest_listing
    if listing && listing_old_enough_to_renew(listing)
      Etsy::Listing.update( listing, {
        :renew => true,
        :access_token => access_token,
        :access_secret => access_secret
      })
    end
  end

protected

  def find_oldest_listing
    ordered_listings = shop_listings.sort do |l1, l2|
      l1.created_at <=> l2.created_at
    end

    ordered_listings.first
  end

  def listing_old_enough_to_renew listing
    listing.created_at < 3.days.ago
  end

  def user
    if @user.nil?
      @user = Etsy.myself access_token, access_secret
    end
    @user
  end

  def shop_listings
    user.shop.listings
  end

end

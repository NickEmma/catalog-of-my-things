require './item'
class Game < Item
  def initialize(multiplayer, last_played_at_date, publish_date)
    super(publish_date)

    @multiplayer = multiplayer
    @last_played_at_date = last_played_at_date
  end

  def can_be_archived?
    true if super && (Date.today.to_time.year - last_played_at_date.year) > 2
  end
end

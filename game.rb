class Game
  def initialize()
    @players = create_players
    @deck = Deck.new
    @score = [0, 0]
  end

  def create_players
    players = []
    counter = 1
    while counter <= 4
      players << Player.new(counter)
    end
    players
  end

  def start_game
    @players[0].dealer = true
    deck.shuffle

  end

  def find_right_of_dealer
    index_of_player =
    @players.each_with_index do |player, ind|
      if player.dealer == true
        if ind == 4
          return 1
        else
          return ind + 1
        end
      end
    end
  end

  def deal_cards
    @deck.each_with_index do |card|
      if card
      @players[find_right_of_dealer].hand << card
    end
  end

end

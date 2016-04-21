class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  respond_to :html

  # GET /players
  # GET /players.json
  def index
    @players = Player.all.order('Name ASC')

    unless current_user.nil?

      @player_image_urls = Hash.new
      @graph = Koala::Facebook::API.new(current_user.oauth_token)
      offset = 0;
      finished = false
      @pictures = Array.new

      while finished == false do
        
        temp_pictures = @graph.batch do | batch_api |
          players_batch = @players.limit(50).offset(offset)
          players_batch.each do | player |
            if player.facebook_id.present?
              batch_api.get_picture(player.facebook_id)
            end

            offset += 1
          end

          finished = players_batch.size != 50
        end

        @pictures.concat temp_pictures
      end  

      i = 0

      @players.each do | player |
        if player.facebook_id.present?
          @player_image_urls[player.id] = @pictures[i]
          i+=1
        end  
      end

      Rails.logger.debug(@player_image_urls)
    end

    respond_with(@players)
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @graph = Koala::Facebook::API.new(current_user.oauth_token)

    if @player.facebook_id.present?
        @profile_picture = @graph.get_picture(@player.facebook_id, { 'type' => 'large' })   
    end

    respond_with(@player)
  end

  # GET /players/new
  def new
    @player = Player.new
    respond_with(@player)
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to player_path(@player)
    else
      respond_with @player
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :is_goalie, :facebook_id)
    end
end

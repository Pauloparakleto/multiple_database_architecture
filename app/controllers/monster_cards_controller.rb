class MonsterCardsController < ApplicationController
  before_action :set_monster_card, only: %i[ show edit update destroy ]

  # GET /monster_cards or /monster_cards.json
  def index
    @monster_cards = MonsterCard.all
  end

  # GET /monster_cards/1 or /monster_cards/1.json
  def show
  end

  # GET /monster_cards/new
  def new
    @monster_card = MonsterCard.new
  end

  # GET /monster_cards/1/edit
  def edit
  end

  # POST /monster_cards or /monster_cards.json
  def create
    @monster_card = MonsterCard.new(monster_card_params)

    respond_to do |format|
      if @monster_card.save
        format.html { redirect_to monster_card_url(@monster_card), notice: "Monster card was successfully created." }
        format.json { render :show, status: :created, location: @monster_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monster_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monster_cards/1 or /monster_cards/1.json
  def update
    respond_to do |format|
      if @monster_card.update(monster_card_params)
        format.html { redirect_to monster_card_url(@monster_card), notice: "Monster card was successfully updated." }
        format.json { render :show, status: :ok, location: @monster_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monster_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monster_cards/1 or /monster_cards/1.json
  def destroy
    @monster_card.destroy!

    respond_to do |format|
      format.html { redirect_to monster_cards_url, notice: "Monster card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster_card
      @monster_card = MonsterCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monster_card_params
      params.require(:monster_card).permit(:name, :kind, :attack, :defense)
    end
end

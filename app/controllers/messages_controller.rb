class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy ]

  # GET /messages or /messages.json
  def index
    if params[:q]
      redirect_to root_path(q: params[:q])
    else
    @messages = Message.all
    end
  end

  # GET /messages/1 or /messages/1.json
  def show
    if params[:q]
      redirect_to root_path(q: params[:q])
    end
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages or /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to message_url(@message), notice: "Message was successfully created." }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1 or /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to conversation_path(@message.conversation_id), notice: "Message was successfully updated." }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1 or /messages/1.json
  def destroy
    @message.destroy!

    respond_to do |format|
      format.html { redirect_to conversation_path(@message.conversation_id), notice: "Message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def send_a_message
    conn = params[:conn]
    usrid = current_user.id
    sporocilo = params[:message_content]

    @message = Message.new(text:sporocilo, user_id: usrid, conversation_id:conn)

    if @message.save  
      redirect_to conversation_path(conn)
    else
      puts("ne dela")
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:text, :read, :timeSent)
    end
end

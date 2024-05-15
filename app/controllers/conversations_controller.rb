class ConversationsController < ApplicationController
  before_action :set_conversation, only: %i[ show edit update destroy ]

  # GET /conversations or /conversations.json
  def index
    if params[:q]
      redirect_to root_path(q: params[:q])
    else
    @conversations = Conversation.all
    end
  end

  # GET /conversations/1 or /conversations/1.json
  def show
    if @conversation.receiver_id == current_user.id || @conversation.user_id == current_user.id
      if params[:q]
        redirect_to root_path(q: params[:q])
      else
      @messages = @conversation.messages
      @messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)
      end
    else
      redirect_to root_path, notice:"mrs"
    end
  end

  # GET /conversations/new
  def new
    @conversation = Conversation.new
  end

  # GET /conversations/1/edit
  def edit
  end

  # POST /conversations or /conversations.json
  def create
    @conversation = Conversation.new(conversation_params)

    respond_to do |format|
      if @conversation.save
        format.html { redirect_to conversation_url(@conversation), notice: "Conversation was successfully created." }
        format.json { render :show, status: :created, location: @conversation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conversations/1 or /conversations/1.json
  def update
    respond_to do |format|
      if @conversation.update(conversation_params)
        format.html { redirect_to conversation_url(@conversation), notice: "Conversation was successfully updated." }
        format.json { render :show, status: :ok, location: @conversation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conversations/1 or /conversations/1.json
  def destroy
    @conversation.destroy!

    respond_to do |format|
      format.html { redirect_to conversations_url, notice: "Conversation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def create_with_user
    user_id = current_user.id
    post_user_id = params[:post_user_id]

    existing_conversation = Conversation.find_by(user_id: user_id, receiver_id: post_user_id) || Conversation.find_by(user_id: post_user_id, receiver_id: user_id)
    existing_conversationv2 = Conversation.find_by(user_id:user_id, receiver_id:user_id)
    p(user_id, post_user_id, "wow!")
    if   user_id === Integer(post_user_id) || existing_conversation || existing_conversationv2
      redirect_to root_path, notice:"Error creating conversation"
    else  
      @conversation = Conversation.new(user_id: user_id, receiver_id: post_user_id)
      
      if @conversation.save
        redirect_to root_path, notice: "Conversation was successfully created."
      else
        puts "Conversation could not be saved."
        # You can also print out the errors for debugging
        puts @conversation.errors.full_messages
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation
      @conversation = Conversation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conversation_params
      params.fetch(:conversation, {})
    end
    
    
end

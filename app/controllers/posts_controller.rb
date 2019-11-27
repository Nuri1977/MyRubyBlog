class PostsController < ApplicationController
    def index
        @blogs=Post.all
    end

    def show
        @publikacija=Post.find(params[:id])
        @id_kategorija=@publikacija.category_id
        @categories=Category.all
        @categories.each do |c|
            if c.id == @id_kategorija
            @ime_kategorija=c.name
            end
        end

 

    end

    def new
        @risi = Post.new
        @kategorija = Category.all
    end


    def create
        @risi = Post.new(risi_params)
        if @risi.save
            redirect_to posts_path, :notice => "Your post has been saved"
        else
            render "new"
        end
     end
  




    def edit
        @ndroe=Post.find(params[:id])
    end

    def update
        @ndroe=Post.find(params[:id])
        @ndroe.update(ndroe_params)
        redirect_to posts_path, :notice => "Your post has been saved"
    end

    def destroy

    end

    private
  
    def ndroe_params
       params.require(:post).permit(:title, :body, :category_id)
    end



    private
  
    def risi_params
       params.require(:post).permit(:title, :body, :category_id)
    end
    
end

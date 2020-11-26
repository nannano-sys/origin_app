class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  has_many :comments

   # ====================自分がフォローしているユーザーとの関連 ===================================
   #フォローする側からみて、フォローされる側のユーザー情報を取得する
  has_many :active_relationships, class_name: "Relationship", foreign_key: "following_id", dependent: :destroy
  has_many :followings, through: :active_relationships, source: :follower
  
 # ========================================================================================

  


  # ====================自分がフォローされているユーザーとの関連 ===================================
  #フォローされる側のユーザから見て、フォローしている側のユーザー情報を取得する
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :following
  
  # =======================================================================================

  #上記のアソシエーションで、followeingsにはフォローされる側、つまり、自分がフォローしているユーザー情報が入る
  #上記のアソシエーションで、followersにはフォローする側、つまり、自分をフォローしているユーザー情報が入る

  def followed_by?(user)
    # 今自分(引数のuser)がフォローしようとしているユーザー(レシーバー)の「フォローされているユーザー(つまりpassive)」の中に、引数に渡されたユーザー(自分)がいるかどうかを調べる
    # すなわち、すでにフォローしているユーザーかそうでないかを調べるインスタンスメソッド
    passive_relationships.find_by(following_id: user.id).present?
  end
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

 

end


  
class PostComment < ApplicationRecord

  belongs_to :user
  belongs_to :post_image

  #UserモデルとPostImageモデルはここでは「1対N」の関係における
  #「１」に当たるので、単数形で記述する。

end

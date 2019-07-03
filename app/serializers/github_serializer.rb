class GithubSerializer < ActiveModel::Serializer
  attributes :id, :repo_url_front, :repo_url_back, :demo_url, :name, :img_url, :summary, :contribution, :user_id, :order_id
end

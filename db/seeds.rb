# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create sample articles
Article.find_or_create_by!(title: "最初の記事") do |article|
  article.content = "これは最初の記事です。\n\nMVCパターンを使って記事を表示しています。"
end

Article.find_or_create_by!(title: "Ruby on Railsについて") do |article|
  article.content = "Ruby on RailsはWebアプリケーションフレームワークです。\n\nActiveRecordを使ってデータベースとやり取りできます。"
end

Article.find_or_create_by!(title: "ActiveRecordの基本") do |article|
  article.content = "ActiveRecordはRailsのORM（Object-Relational Mapping）です。\n\nデータベースのテーブルをRubyのクラスとして扱うことができます。"
end

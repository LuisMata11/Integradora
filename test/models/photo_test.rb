require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  
 
  test "photo attributes must not be empty" do
    photo = Photo.new
    assert photo.invalid?
    assert photo.errors[:name].any?
    assert photo.errors[:description].any?
    assert photo.errors[:price].any?
    assert photo.errors[:image].any?
  end


  test "image" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    
    ok.each do |name|
      assert new_photo(name).valid?, "#{name} shouldn't be invalid"
    end
 
    bad.each do |name|
      assert new_photo(name).invalid?, "#{name} shouldn't be valid"
    end
  end

end

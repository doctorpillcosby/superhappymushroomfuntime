class MushroomSerializer < ActiveModel::Serializer
  attributes  :id, :latin_name, :common_name, :habitat, :region, :fairy_rings, :characteristics, :img_url, :confused_with






  def confused_with
    JSON.parse(object.confused_with)
  end



  def region

    JSON.parse(object.region)

  end



  def characteristics



    eval(object.characteristics)


  end





end

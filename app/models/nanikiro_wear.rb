class NanikiroWear < ApplicationRecord
  belongs_to :nanikiro_closet
  has_one_attached :photo
  enum season: [:summer, :spring, :winter, :fall]
  enum color: [:white,:black,:grey,:yellow,:red,:blue,:green,:brown,:pink,:orange,:purple]
  enum wear_type: [
    :bloomers,:blouse,:bodysuit,:bra,:bustier,:caftan,
    :cardigan,:cloak,:coat,:corset,:dress,:dungarees,
    :jacket,:jeans,:jumper,:jumpsuit,:kilt,:kimono,
    :knickerbockers,:leggings,:legwarmers,:leotard,
    :panties,:pants,:trousers,:petticoat,:playsuit,
    :poncho,:pyjamas,:sarong,:shawl,:shirt,:shorts,
    :skirt,:skort,:sock,:sweater,:swimsuit,:teddy,
    :tie,:tights,:tops,:tracksuit,:waistcoat,
    :shoes,:hills,:tshirt
  ]
end

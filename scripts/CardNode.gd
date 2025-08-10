extends Button
class_name CardNode

var card_model: CardModel
signal card_clicked(card)

func set_card(card):
    card_model = card
    _update_display()

func _update_display():
    if card_model == null:
        text = ""
        return
    text = "%s\nCost:%d" % [card_model.name, card_model.cost]
    if card_model is MonsterCardModel:
        text += "\nATK:%d DEF:%d" % [card_model.atk, card_model.def]

func _pressed():
    emit_signal("card_clicked", card_model)

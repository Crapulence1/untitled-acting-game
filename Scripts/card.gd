extends Node2D

@export var CardName: String = "Card Name"
@export var CardCost: int = 1
@export var CardDesc: String = "Card Desc"
@export var CardImage: Node2D 

@onready var NameLabel: Label = $CardName/NameLabel
@onready var DescLabel: Label = $DescLabel
@onready var CostLabel: Label = $CardCost/CostLabel

func _ready():
	setCardValues(CardCost, CardName, CardDesc)
	visible = false

func setCardValues(cost: int, name:String, desc:String):
	CardName = name
	CardCost = cost
	CardDesc = desc
	
	CostLabel.set_text(str(CardCost))
	NameLabel.set_text(CardName)#cock
	DescLabel.set_text(CardDesc)
	
func _process(delta):
	pass

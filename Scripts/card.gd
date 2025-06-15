extends Node2D

@export var CardName: String = "Card Name"
@export var CardCost: int = 1
@export var CardDesc: String = "Card Desc"
@export var CardImage: Node2D 

@onready var NameLabel: = $CardName/NameLabel
@onready var DescLabel: = $DescLabel
@onready var CostLabel: = $CardCost/CostLabel

func _ready():
	setCardValues(CardCost, CardName, CardDesc)
	add_to_group("Cards")

func setCardValues(cost: int, name:String, desc:String):
	CardName = name
	CardCost = cost
	CardDesc = desc
	loadValues()
	
func loadValues():
	CostLabel.set_text(str(CardCost))
	NameLabel.set_text(CardName)#cock
	DescLabel.set_text(CardDesc)

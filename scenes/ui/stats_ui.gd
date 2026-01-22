class_name StatsUI
extends HBoxContainer

@onready var block: HBoxContainer = $Block
@onready var thorns: HBoxContainer = $Thorns
@onready var health: HBoxContainer = $Health
@onready var block_label: Label = %BlockLabel
@onready var health_label: Label = %HealthLabel
@onready var thorns_label: Label = %ThornsLabel

func update_stats(stats: CombatStats) -> void:
	block_label.text = str(stats.block)
	health_label.text = str(stats.health)

	block.visible = stats.block > 0
	health.visible = stats.health > 0
	thorns.visible = stats.thorns > 0

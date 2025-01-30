@tool extends EditorPlugin

const AUTOLOAD_NAME = "DisplayScaling"
const AUTOLOAD_FILE = "display_scaling.gd"

# ------------------------------------------------------------------------------
# Build-in methods
# ------------------------------------------------------------------------------

func _enter_tree() -> void:
	self.add_autoload_singleton(AUTOLOAD_NAME, AUTOLOAD_FILE)

func _exit_tree() -> void:
	self.remove_autoload_singleton(AUTOLOAD_NAME)

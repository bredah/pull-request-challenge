inspect-pre:
	pre-commit autoupdate

inspect: inspect-pre
	pre-commit

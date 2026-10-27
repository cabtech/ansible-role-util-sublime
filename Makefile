lint:
	uv run yamllint --config-file=.config/yamllint .
	# ansible-lint --config-file=.config/ansible-lint.yml

# --------------------------------

init-uv:
	uv python install 3.14
	uv init
	uv python pin python3.14
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null

update-uv:
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null

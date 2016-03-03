rubotest:
	rubocop -D -c rubocop.yml

rubofix:
	rubocop -D -a -c rubocop.yml

kitchenconverge:
	kitchen converge

test: rubotest kitchenconverge

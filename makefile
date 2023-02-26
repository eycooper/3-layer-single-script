default:
	@cat makefile

view:
	python db_viewer.py

init:
	python initialize_database.py

test:
	pytest -vvx db_viewer.py

clean:
	rm aquarium.db

clean_view: clean init view

test_smoke:
	pytest -vvx -m smoke db_viewer.py

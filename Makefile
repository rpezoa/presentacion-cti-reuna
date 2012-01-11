SRC=presentacionReuna

all:
	@rubber --pdf $(SRC)
	@mkdir -p bin
	@mv $(SRC).pdf bin/

x:
	okular bin/$(SRC).pdf &> /dev/null &

clean:
	@echo "limpiando..."
	@rubber --clean $(SRC)

distclean: clean
	@ echo "borrando PDF..."
	@rubber --clean --pdf $(SRC)
	@rm -rf bin/

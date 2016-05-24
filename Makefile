SRC := $(wildcard *.xml)
OBJ := $(SRC:.xml=.txt)

all: $(OBJ)

clean:
	rm -f $(OBJ)

%.txt: %.xml
	xml2rfc $^

.PHONY: all

SRC := $(wildcard *.xml)
OBJ := $(SRC:.xml=.txt)  $(SRC:.xml=.html)

all: $(OBJ)

clean:
	rm -f $(OBJ)

%.txt: %.xml
	xml2rfc --text $^

%.html: %.xml
	xml2rfc --html $^

.PHONY: all

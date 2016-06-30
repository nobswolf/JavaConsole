# zu erzeugendes Programm
MAIN = ConsoleTest.jar

# alle .java sind Source-Dateien
SRC = $(wildcard *.java)

# .class zu den vorhandenen .java
CLASSES = $(SRC:.java=.class)

# Name des eigenen Verzeichnis
MYPATH := $(shell basename $(shell pwd ) )

# .class aus .java erzeugen
%.java %.class:
	javac $*.java

# .jar-Programm aus .class erzeugen und ausführbar machen
$(MAIN): $(CLASSES)
	jar cfm $(MAIN) META-INF/MANIFEST.MF $(CLASSES)
	chmod a+x $(MAIN)

# Vorgabe: Programm erzeugen
default: $(MAIN)

# aufräumen
clean:
	$(RM) *.class *.jar *~ *.tar.gz

# ZIP-Archiv erstellen
pack: clean
	tar cpzvf ../$(MYPATH).tar.gz ../$(MYPATH)
	mv ../$(MYPATH).tar.gz .

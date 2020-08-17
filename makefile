all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Peer-graded Assignment:Bash, Make, Git and Github">README.md
	date >> README.md
	echo "    \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md
clean:
	rm README.md

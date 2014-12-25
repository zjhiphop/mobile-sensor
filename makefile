
all: copy push clean

copy: build 
	cp -r output/ ./; 

push: 
	git checkout gh-pages; 
	git add -A; 
	git commit -m "[`date`] Generate new HTML"; 
	git push origin;
	git checkout master;

build:
	cd slides; 
	nodeppt generate mobile-sensor.md -a -o ../output

clean:
	rm -rf output/ css/ fonts/ img/ js/


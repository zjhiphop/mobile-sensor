
all: deploy

deploy: build 
	cd ..; git checkout gh-pages; cp -r output/ .;

commit: 
	git add -A; git commit -m "[`date`] Generate new HTML"; git push origin

build:
	cd slides; nodeppt generate mobile-sensor.md -a -o ../output

clean:
	rm -rf output/

all: deploy

deploy: build 
	cd ..; git checkout gh-pages; cp -r output/ .;

build:
	cd slides; nodeppt generate mobile-sensor.md -a -o ../output

clean:
	rm -rf output/
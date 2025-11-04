.PHONY: website clean

clean:
	cd website && jekyll clean

website:
	cd website && jekyll build

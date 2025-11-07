.PHONY: website clean

clean:
	cd website && bundle exec jekyll clean

website:
	cd website && bundle exec jekyll build

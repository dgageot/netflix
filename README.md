# Build

	docker build -t dgageot/netflix .

# Run

	docker run -p 80:3128 -e USER=yourname -e PASSWORD=thepassword -d dgageot/netflix

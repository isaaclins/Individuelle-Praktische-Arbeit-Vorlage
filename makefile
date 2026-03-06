run:
	hugo serve --disableFastRender --port 1313

clean:
	rm -rf ./public

help:
	@echo "Usage:"
	@echo "  make run      # Start hugo server with --disableFastRender"
	@echo "  make clean    # Remove ./public directory"
	@echo "  make help     # Show this help message"
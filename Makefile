
lint:
	pylint --rcfile=.pylintrc report-topk-partion-sizes; \
	    echo "pylint returned exit code $$?"; \
	    if [ "$$(($$? & 1))" != 0 ] || [ "$$(($$? & 2))" != 0 ]; then \
	        false; \
	    else \
	        true; \
	    fi


ifdef SOURCE
	source_document =$(SOURCE)
endif

ifdef TARGET
	html5_file =$(TARGET)
endif

html5-fragment:
	#
	#
	# Building HTML5 fragment straight from the AsciiDoc sources.
	#
	#
	mkdir -p "$(html5_dir)/images"
	if [ -d "$(build_image_dir)/" ]; then \
		rsync -ru "$(build_image_dir)/"* "$(html5_dir)/images";\
	fi
	"$(asciidoc)" $(asciidoc_flags) --conf-file="$(build_config_dir)/asciidoc.conf" --conf-file="$(build_config_dir)/asciidoc.local.conf" --conf-file="$(build_config_dir)/html5-fragment.conf" --backend html5 --doctype article --out-file "$(html5_file)" "$(source_document)"
	if [ -d "$(build_image_dir)/" ]; then \
		rsync -ru "$(build_image_dir)/"* "$(html5_dir)/images";\
	fi



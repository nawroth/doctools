include $(make_dir)/base.make

.PHONY: init cleanup initialize install-extensions copy-images html5-fragment

html5-fragment: copy-images html5-fragment

init: initialize install-extensions

include $(make_dir)/cleanup.make
include $(make_dir)/initialize.make
include $(make_dir)/install-extensions.make

include $(make_dir)/copy-images.make
include $(make_dir)/html5-fragment.make

.PHONY: draw2d all

all:
	make draw2d

draw2d:
	rm -rf draw2d && \
	git clone https://github.com/llgcode/draw2d draw2d && \
	rm -rf draw2d/.git && \
	rm -rf draw2d/.github && \
	rm -rf draw2d/*_test.go && \
	rm -rf draw2d/output && \
	rm -rf draw2d/samples && \
	rm -rf draw2d/draw2dpdf && \
	rm -rf draw2d/draw2dgl && \
	rm -rf draw2d/resource && \
	rm -rf draw2d/draw2dsvg/*_test.go && \
	rm -rf draw2d/draw2dimg/*_test.go && \
	rm -rf draw2d/draw2dkit/*_test.go && \
	rm -rf draw2d/draw2dbase/*_test.go && \
	rm -rf draw2d/go.* && \ 
	sed -i '' 's/github.com\/llgcode\/draw2d/github.com\/opentoys\/x\/draw2d/' draw2d/draw2dsvg/*.go
	sed -i '' 's/github.com\/llgcode\/draw2d/github.com\/opentoys\/x\/draw2d/' draw2d/draw2dimg/*.go
	sed -i '' 's/github.com\/llgcode\/draw2d/github.com\/opentoys\/x\/draw2d/' draw2d/draw2dkit/*.go
	sed -i '' 's/github.com\/llgcode\/draw2d/github.com\/opentoys\/x\/draw2d/' draw2d/draw2dbase/*.go



version = 3.2.2.4
filename= 360jiagubao-$(version).tar.gz

dist: bin/360jiagubao zsh-completion/_360jiagubao
	@tar zvcf $(filename) $^ && \
	command -v openssl > /dev/null && \
    openssl sha256 $(filename) && exit 0; \
    command -v sha256sum > /dev/null && \
    ha256sum $(filename)

clean:
	rm $(filename)

.PHONY: clean

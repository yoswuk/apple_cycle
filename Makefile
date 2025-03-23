CC =gcc
CFLAGS += -Wall -Wextra -Wpedantic -Wmissing-prototypes -Wredundant-decls \
  -Wshadow -Wpointer-arith -O3 -fomit-frame-pointer -Wno-unused-result
RM = /bin/rm

SOURCES= main.c
HEADERS= apple_cycles.h

.PHONY: all

all: \
	main

main: $(HEADERS) $(SOURCES)
	$(CC) $(NISTFLAGS) -o $@ $(SOURCES) $(LDFLAGS)
	sudo ./main

clean:
	-$(RM) main

BUILD ?= ./build
SRC ?= ./src

SOURCES := $(shell find $(SRC) -name '*.c')
OBJECTS := $(SOURCES:$(SRC)/%.c=$(BUILD)/%.o)
LIBOBJECTS := $(filter $(BUILD)/lib/%,$(OBJECTS))
INCLUDES := $(shell find $(SRC) -type d)

## preprocessor flags
CPPFLAGS += -include stdcountof.h -include stddef.h -include stddefer.h \
            -include stdint.h -include stdlib.h -include string.h
CPPFLAGS += $(addprefix -I,$(INCLUDES)) -MMD -MP

## c compiler flags
CFLAGS += -std=c23 -fdefer-ts -Werror -Wall -Wextra -Wpedantic -Wundef -Wshadow \
          -Wconversion -Wdouble-promotion -Wformat=2 -Wno-c2y-extensions

## optimization & debug info
CFLAGS += -O3
ifdef DEBUG
CFLAGS += -g -fsanitize=address -fsanitize=undefined
endif

## targets
default: $(LIBOBJECTS)

.PHONY: clean
clean:
	$(RM) -r $(BUILD)

## objects from c source
$(BUILD)/%.o: $(SRC)/%.c
	mkdir -p $(dir $@)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

## linking lib objects + src/*.c
.PRECIOUS: $(BUILD)/%
$(BUILD)/%: $(SRC)/%.c $(LIBOBJECTS)
	mkdir -p $(dir $@)
	$(CC) $(CPPFLAGS) $(CFLAGS) $< $(LIBOBJECTS) -o $@ $(LDFLAGS)

## catch-all: make thing -> build/thing
%: build/% ;

## ensure files are recompiled when headers are modified
-include $(OBJECTS:.o=.d)

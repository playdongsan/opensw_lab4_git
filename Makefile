PROJ_DIR=$(shell pwd)
SRC_DIR=$(PROJ_DIR)/src
OBJ_DIR=$(PROJ_DIR)/obj
BIN_DIR=$(PROJ_DIR)/bin
INC_DIR=$(PROJ_DIR)/include


$(BIN_DIR)/myapp: $(OBJ_DIR)/main.o $(OBJ_DIR)/func1.o $(OBJ_DIR)/func2.o
	gcc -o $@ $^


$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	gcc -c -o $@ $< -I$(INC_DIR)


clean:
	rm -f $(BIN_DIR)/myapp $(OBJ_DIR)/*.o
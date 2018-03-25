
# 工具链
CROSS_COMPLE=
CC = $(CROSS_COMPLE)gcc
AR = $(CROSS_COMPLE)ar


#------------------头文件---------------
HEADS += -I./include
#----------------------------------------

#------------------库文件---------------
LIB_DIRS += -L./libs
LIBS      += 
#----------------------------------------





#----------------------编译和链接选项--------------
CFLAGS = -g
CPPFLAGS =
LDFLAGS = -lm
#-------------------------------------------------


#-----------------------目标文件------------------
TARGET = testTool
LDFLAGS += $(LIB_DIRS) $(LIBS)
CFLAGS	+= $(HEADS)
#-------------------------------------------------


# 源码文件
SOURCES :=
-include ./src/SOURCES
-include ./src/cpp_src/SOURCES
-include ./src/c_src/SOURCES


SRCS = $(filter %.c,$(SOURCES))
CPP_SRCS = $(filter %.cpp,$(SOURCES))

OBJS = $(SRCS:%.c=%.o)
CPP_OBJS = $(CPP_SRCS:%.cpp=%.o)

$(TARGET) :$(OBJS) $(CPP_OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(CPPFLAGS) $(CPP_OBJS) -o $(TARGET) $(LDFLAGS)

#	$(AR) r $(TARGET).a $(OBJS)

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@ $(LDFLAGS)
%.o:%.cpp
	$(CC) $(CPPFLAGS) -c $< -o $@ $(LDFLAGS)
	
.PRONY:clean install
clean:
	@rm $(TARGET) $(OBJS) $(CPP_OBJS)
install:
	echo "install"

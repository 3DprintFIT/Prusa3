TARGETS = \
belt-guide.stl \
fan-holder.stl \
gregs-wade-v3.stl \
minitronic-holder.stl \
rambo-holder.stl \
wade-big-gear.stl \
wade-small-gear.stl \
x-carriage.stl \
x-end-idler.stl \
x-end-motor.stl \
y-belt-holder.stl \
y-corners.stl \
y-idler.stl \
y-motor.stl \
z-axis-bottom.stl \
z-axis-top.stl

STL_DIR=distribution/
SRC_DIR=src/

all: default

calibration:
	openscad -m make -o calibration.stl $(SRC_DIR)calibration.scad

default: $(addprefix $(STL_DIR),$(TARGETS))

$(addprefix $(STL_DIR),$(TARGETS)):
	openscad -m make -o $@ $(patsubst %.stl,%.scad,$(SRC_DIR)$(subst $(STL_DIR),,$@))
	
clean:
	rm -f $(STL_DIR)*.stl
	
	
	
	

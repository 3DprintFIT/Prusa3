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

ARRANGE_TARGETS = \
-n distribution/belt-guide.stl+4 \
-n distribution/fan-holder.stl+1 \
-n distribution/gregs-wade-v3.stl+1 \
-n distribution/minitronic-holder.stl+1 \
-n distribution/rambo-holder.stl+1 \
-n distribution/wade-big-gear.stl+1 \
-n distribution/wade-small-gear.stl+1 \
-n distribution/x-carriage.stl+1 \
-n distribution/x-end-idler.stl+1 \
-n distribution/x-end-motor.stl+1 \
-n distribution/y-belt-holder.stl+1 \
-n distribution/y-corners.stl+4 \
-n distribution/y-idler.stl+1 \
-n distribution/y-motor.stl+1 \
-n distribution/z-axis-bottom.stl+1 \
-n distribution/z-axis-top.stl+1

STL_DIR=distribution/
SRC_DIR=src/
PLATE_DIMMENSIONS=120
SIMARRANGE=/usr/local/bin/simarrange

all: default arrange

calibration:
	openscad -m make -o calibration.stl $(SRC_DIR)calibration.scad

default: $(addprefix $(STL_DIR),$(TARGETS))

$(addprefix $(STL_DIR),$(TARGETS)):
	openscad -m make -o $@ $(patsubst %.stl,%.scad,$(SRC_DIR)$(subst $(STL_DIR),,$@))

arrange: default
	 $(SIMARRANGE) -x $(PLATE_DIMMENSIONS) -y $(PLATE_DIMMENSIONS) $(ARRANGE_TARGETS)
	 
clean:
	rm -f $(STL_DIR)*.stl
	
	
	
	

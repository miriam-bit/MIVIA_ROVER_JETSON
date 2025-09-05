# MIVIA_ROVER_JETSON

Progetto ROS 2 per il rover **MIVIA** basato su piattaforma NVIDIA Jetson.  
Questa repository contiene:
- I nodi ROS 2 sviluppati per il rover
- File di avvio (`launch/`)
- Submodule Git per pacchetti ROS 2 esterni necessari al progetto (es. `ros2_socketcan`)

---

## Installazione

Clona la repository con tutti i submodule inclusi:

git clone --recurse-submodules git@github.com:miriam-bit/MIVIA_ROVER_JETSON.git

## Avvio
colcon build --merge-install
source install/setup.bash
ros2 launch mivia_rover_jetson rover_bringup.launch.py





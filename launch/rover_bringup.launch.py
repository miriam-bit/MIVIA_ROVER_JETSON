from launch import LaunchDescription
from launch_ros.actions import Node
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import AnyLaunchDescriptionSource
from ament_index_python.packages import get_package_share_directory
import os

def generate_launch_description():
    # Percorso al file socket_can_bridge.launch.xml
    socket_can_bridge_launch = os.path.join(
        get_package_share_directory('ros2_socketcan'),
        'launch',
        'socket_can_bridge.launch.xml'
    )

    return LaunchDescription([
        # Nodo reference_node
        Node(
            package='reference_node',
            executable='reference_node',  # lascialo così se si chiama proprio così
            name='reference_node',
            output='screen'
        ),

        # Include file XML usando AnyLaunchDescriptionSource
        IncludeLaunchDescription(
            AnyLaunchDescriptionSource(socket_can_bridge_launch)
        ),

        # Nodo pix_rover_driver_control_command_node
        Node(
            package='pix_rover_driver',
            executable='pix_rover_driver_control_command_node',
            name='pix_rover_driver_control_command_node',
            output='screen'
        ),
    ])


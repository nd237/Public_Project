#!/usr/bin/env python
# license removed for brevity
import rospy
from robot_pkg.msg import robot_msg #import the custum message
    
def talker():
	pub = rospy.Publisher('chatter', robot_msg, queue_size=10) #'chatter' is the name of the topic (where i publish the message)
        rospy.init_node('talker', anonymous=True) # define 'talker' as the node
        rate = rospy.Rate(10) # 10hz
	while not rospy.is_shutdown():
		#hello_str = "hello world %s" % rospy.get_time()
		#rospy.loginfo(hello_str)
                message = robot_msg()
                message.text = "hello"
		message.x = 12
		rospy.loginfo(message) #fondamentale
                pub.publish(message) #publisch the message
                rate.sleep()
   
if __name__ == '__main__':
       try:
           talker()
       except rospy.ROSInterruptException:
           pass


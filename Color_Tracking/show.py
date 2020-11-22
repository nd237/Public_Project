import cv2
import numpy as np
cap = cv2.VideoCapture(0)
while(1):
    _, frame = cap.read()
    hsv = cv2.cvtColor(frame,cv2.COLOR_BGR2HSV) #convert to hsv format
    # define range of blue color in HSV
    lower_blue = np.array([110, 100, 100])
    upper_blue = np.array([130, 255, 255])
    #lower_blue = np.array([9, 100, 100])
    #upper_blue = np.array([29, 255, 255])
    # Threshold the HSV image to get only blue colors
    mask = cv2.inRange(hsv, lower_blue, upper_blue)
    # Bitwise-AND mask and original image
    res = cv2.bitwise_and(frame, frame, mask=mask)
    cv2.imshow("frame",res)
    cv2.waitKey(1)
cv2.destroyAllWindows()
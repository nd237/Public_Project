import cv2 as cv
import numpy as np

#capture the webcam
cap = cv.VideoCapture(0)

fourcc = cv.VideoWriter_fourcc(*'XVID') #XVID,MP4V,X264
writer = cv.VideoWriter('video.avi',fourcc,20,(640,480))

#read every frame
while True:
    ret,frame = cap.read()
    #from BGR to HSV H=hue (color) ,s=saturation ,V= intensity of the color
    hsv = cv.cvtColor(frame,cv.COLOR_BGR2HSV)
    lower_Range = np.array([60, 90, 50])#[60 90 0]
    upper_Range = np.array([180,200,255]) #[180 200 255]

    #mask the order color
    mask = cv.inRange(hsv,lower_Range,upper_Range)
    final_imag = cv.bitwise_and(frame, frame, mask=mask)
    writer.write(final_imag)
    if ret:
        cv.imshow('True',frame)
        cv.imshow('Only Orange', final_imag)
        if cv.waitKey(1)==ord('q'):
            break

cap.release()
writer.release()
cv.destroyAllWindows()

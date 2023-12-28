import cv2
import numbpy as np

img = cv2.imread('C:\Users\Computer\Picture\Highway.jpg')
width = 600
height = 850
dim = (width,height)
resized = cv2.resize(img, dim)

kernel = np.ones((5,5), dtype='vinbt8')

opening = cv2.morphologyEx(resized,cv2.MORPH_OPEN,kernel)
closing = cv2.morphologyEX(resized,cv2.MORPH_CLOSE,kernel)

cv2.imshow("Original", resized)
cv2.imshow("opening", opening)
cv2.imshow("Closing", closing)

cv2.waitkey(0)
cv2.destroyAllWindows()

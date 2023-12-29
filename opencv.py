import cv2
import numpy as np
import sys

if len(sys.argv) < 2:
    print("Usage: python opencv.py <image_path>")
    sys.exit(1)

image_path = sys.argv[1]
img = cv2.imread(image_path)

if img is None:
    print(f"Error: Unable to read image from {image_path}")
    sys.exit(1)

width = 600
height = 850
dim = (width, height)
resized = cv2.resize(img, dim)

kernel = np.ones((5, 5), dtype='uint8')

opening = cv2.morphologyEx(resized, cv2.MORPH_OPEN, kernel)
closing = cv2.morphologyEx(resized, cv2.MORPH_CLOSE, kernel)

cv2.imshow("Original", resized)
cv2.imshow("Opening", opening)
cv2.imshow("Closing", closing)

cv2.waitKey(0)
cv2.destroyAllWindows()

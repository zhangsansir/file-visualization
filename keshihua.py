import matplotlib.pyplot as plt
import numpy as np
from scipy import misc
import os
from PIL import Image
import cv2


file_dir = "C:/Users/32050/Desktop/axial/0656.npy"  # npy文件路径
dest_dir = "C:/Users/32050/Desktop/axial/"  # 文件存储的路径

# file_dir = "C:/Users/32050/Desktop/coronal/0000.npy"  # npy文件路径
# dest_dir = "C:/Users/32050/Desktop/coronal/"  # 文件存储的路径

# file_dir = "C:/Users/32050/Desktop/sagittal/0000.npy"  # npy文件路径
# dest_dir = "C:/Users/32050/Desktop/sagittal/"  # 文件存储的路径


def npy_png(file_dir, dest_dir):
    file = file_dir  # .npy文件名
    con_arr = np.load(file)
    count = 0
    for con in con_arr:
        arr=con
        arr=arr *255
        cv2.imwrite(dest_dir+ "_" + '{}'.format(count) + ".png",arr)
        count = count + 1

if __name__ == "__main__":
    npy_png(file_dir, dest_dir)



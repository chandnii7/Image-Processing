import numpy as np
cimport numpy as np
np.import_array()

cpdef apply_convolution(np.ndarray in_img, np.ndarray filter_2d):
    cdef np.ndarray out_img = np.zeros((in_img.shape[0],in_img.shape[1]), dtype=np.uint8)
    cdef int x_img, y_img, x_filter, y_filter, img_x, img_y, x_fit, y_fit
    cdef int pixel = 0
    for x_img in range(0, in_img.shape[0], 1):
        for y_img in range(0, in_img.shape[1], 1):
            pixel = 0
            for x_filter in range(-(filter_2d.shape[0]//2), (filter_2d.shape[0]//2)+1, 1):
                for y_filter in range(-(filter_2d.shape[1]//2), (filter_2d.shape[1]//2)+1, 1):
                    img_x = x_img + x_filter
                    img_y = y_img + y_filter
                    x_fit = x_filter + (filter_2d.shape[0]//2)
                    y_fit = y_filter + (filter_2d.shape[1]//2)
                    if img_x < 0 or img_y < 0 or img_x >= in_img.shape[0] or img_y >= in_img.shape[1]:
                        continue
                    pixel += (filter_2d[x_fit][y_fit] * in_img[img_x][img_y])
            out_img[x_img][y_img] = pixel
    return out_img

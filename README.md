# ImageProcessing

It is a program to perform simple image manipulation using OpenCV with following requirements:
* Load an image by reading it from a file or capturing it directly.
* Image should be read as a 3 channel color image.
* Program should work on any size of image.
* On pressing a support key, apply corresponding function on the original image.
* When implementing convolution, use Cython to speed up execution.

List of Support Keys:
* i - Reload the original image (cancel any previous processing).
* w - Save the current image into the file 'out.jpg'.
* g - Convert the image to grayscale using the openCV conversion function.
* G - Convert the image to grayscale using implemented conversion function.
* c - Cycle through the color channels of the image showing a different channel every time the key is pressed.
* s - Convert the image to grayscale and smooth it using the openCV function. Use track bar to control the amount of smoothing.
* S - Convert the image to grayscale and smooth it using implemented function which should perform convolution with a suitable filter. Use track bar to control the amount of smoothing. Convolution function is implemented from scratch using Cython.
* d - Downsample the image by a factor of 2 without smoothing.
* D - Downsample the image by a factor of 2 with smoothing.
* x - Convert the image to grayscale and perform convolution with an x derivative filter. Normalize the obtained values to the range [0,255].
* y - Convert the image to grayscale and perform convolution with a y derivative filter. Normalize the obtained values to the range [0,255].
* m - Show the magnitude of the gradient normalized to the range [0,255]. The gradient is computed based on the x and y derivative of the image.
* p - Convert the image to grayscale and plot the gradient vectors of the image every N pixels. Length of vector is a fixed value K. Use track bar to control N.
* r - Convert the image to grayscale and rotate it using an angle of theta degrees. Use track bar to control theta. 
* h - Display support keys

Refer the report for further implementation details and instructions to run the code:
<a href="">View the Report</a>

1. Grayscale image with OpenCV and conversion function:
<table>
<tr>
<td>
<img src="" height="300" width="300"/>
</td>
<td>
<img src="" height="300" width="300"/>
</td>
</tr>
<tr>
<td>
OpenCV
</td>
<td>
Conversion Filter
</td>
</tr>
</table>

2. Cycle through color channels of the image:
3. Smoothing image with OpenCV and convolution function:
4. Downsampling with and without smoothing:
5. X & Y derivative and Magnitude of gradient:
7. Plot gradient vectors of image every N pixels:
8. Roatation of image:

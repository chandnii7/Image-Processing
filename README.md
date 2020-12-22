# ImageProcessing

It is a program to perform simple image manipulation using OpenCV with following requirements:
* Load an image by reading it from a file or capturing it directly.
* Image should be read as a 3 channel color image.
* Program should work on any size of image.
* On pressing a support key, apply corresponding function on the original image.
* When implementing convolution, use Cython to speed up execution.
<br/>
Refer the report for further implementation details and instructions to run the code:
<a href="https://github.com/chandnii7/ImageProcessing/blob/main/doc/Report_A1_Chandni_Patel.pdf">View Report</a>
<br/>

### List of Support Keys:
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
<br/>

### Results
1. Grayscale image with OpenCV and conversion function:
<table>
<tr>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out1.jpg" height="200" width="200"/>
</td>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out2.jpg" height="200" width="200"/>
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
<br />

2. Cycle through color channels of the image:
<table>
<tr>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out3.jpg" height="200" width="200"/>
</td>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out4.jpg" height="200" width="200"/>
</td>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out5.jpg" height="200" width="200"/>
</td>
</tr>
<tr>
<td>
Red Channel
</td>
<td>
Green Channel
</td>
<td>
Blue Channel
</td>
</tr>
</table>
<br />

3. Smoothing image with OpenCV and convolution function:
<table>
<tr>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out6.jpg" height="200" width="200"/>
</td>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out7.jpg" height="200" width="200"/>
</td>
</tr>
<tr>
<td>
OpenCV
</td>
<td>
Cython Function
</td>
</tr>
</table>
<br />

4. Downsampling with and without smoothing:
<table>
<tr>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out8.jpg" height="100" width="100"/>
</td>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out9.jpg" height="100" width="100"/>
</td>
</tr>
<tr>
<td>
Downsampling without smoothing
</td>
<td>
Downsampling with smoothing
</td>
</tr>
</table>
<br />

5. X & Y derivative and Magnitude of gradient:
<table>
<tr>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out10.jpg" height="200" width="200"/>
</td>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out11.jpg" height="200" width="200"/>
</td>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out12.jpg" height="200" width="200"/>
</td>
</tr>
<tr>
<td>
X derivative
</td>
<td>
Y derivative 
</td>
<td>
Magnitude of gradient
</td>
</tr>
</table>
<br />

7. Plot gradient vectors of image every N pixels:
<table>
<tr>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out13.jpg" height="300" width="300"/>
</td>
</tr>
<tr>
<td>
Plotted gradient vectors at every 50 pixels
</td>
</tr>
</table>
<br />

8. Roatation of image:
<table>
<tr>
<td>
<img src="https://github.com/chandnii7/ImageProcessing/blob/main/data/out14.jpg" height="300" width="300"/>
</td>
</tr>
<tr>
<td>
Rotated image at 45 degrees
</td>
</tr>
</table>
<br />

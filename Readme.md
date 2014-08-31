Linear Separability Test in MATLAB
==================================
This MATLAB code tests if given set of points are linearly separable using Linear Perceptron. Linear Perceptron is guaranteed to find a solution if one exists.
This approach is not efficient for large dimensions. Computationally the most effective way to decide whether two sets of points are linearly separable is by applying linear programming.

Other solutions:
- Find the convex hull for both the X points and the O points separately and check whether any segments of the hulls intersected or whether either hull was enclosed by the other. If the two hulls were found to be totally disjoint the two data-sets would be geometrically separable.
- Using Linear Programming
Explained very well in http://www.joyofdata.de/blog/testing-linear-separability-linear-programming-r-glpk/


Author
------
Rishi Dua <rishirdua@gmail.com>


Using the code
--------------
- The example uses libsvm format. If you need to use it for some other format, replace the variables Xtrain and Ytrain. Ytrain must be a (m x 1) matrix consisting of -1 and +1. Xtrain must be an (m x n) matrix. libsvm format is explained in http://www.csie.ntu.edu.tw/~cjlin/libsvm/
- Bias term is added automatically.
- The code calls data inseparable if 'maxiter' (default 10000) iterations have been reached. Change it in the code if required.


Contribute
----------
- Issue Tracker: https://github.com/rishirdua/linear-separability-matlab
- Source Code: https://github.com/rishirdua/linear-separability-matlab
- Project page: http://rishirdua.github.io/linear-separability-matlab


License
-------
This project is licensed under the terms of the MIT license. See LICENCE.txt for details
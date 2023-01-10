# Circlesoft Challenge

Write best practice code in ruby(or VueJS[front end]) to calculate the check digit of an ISBN13 barcode and put it into a Github repo for us to look at.
(For front end dev only) : please deploy your app in netlify so we can see how you create good interface
The algorithm is:

Take each digit, from left to right and multiply them alternatively by 1 and 3
Sum those numbers
Take mod 10 of the summed figure
Subtract 10 and if the end number is 10, make it 0
Example for 978014300723:

(9×1) + (7×3) + (8×1) + (0×3) + (1×1) + (4×3) + (3×1) + (0×3) + (0×1) + (7×3) + (2×1) + (3×3)
86
86 mod 10 = 6
10 - 6 = 4
Therefore the complete ISBN is: 9780143007234

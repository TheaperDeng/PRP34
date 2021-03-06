TryNum = 3
ChoosenNum = 2

A = imread('before.jpg')
B = imread('after.jpg')
%B = uint8(double(B)/65535*255)
A= rgb2gray(A)
B= rgb2gray(B)
edge = A-B
test = edge
%test(edge>20) = 125
imwrite(edge,'edge.jpg')
%imshow(edge)
%imshow(test)
imshow(edge)


ChoosenEdge = mat2cell(edge,[375],[500,500,500]);
ChoosenBefore = mat2cell(A,[375],[500,500,500]);
ChoosenAfter = mat2cell(B,[375],[500,500,500]);
ChoosenEdge = ChoosenEdge{ChoosenNum}
ChoosenAfter = ChoosenAfter{ChoosenNum}
ChoosenBefore = ChoosenBefore{ChoosenNum}
%ChoosenEdge = mat2cell(edge,[375],[500,500,500]);
%ChoosenAfter = mat2cell(B,[375],[500,500,500]);
%Since it is impossible to process whole pic at the same time 
%we split it into parts

imwrite(ChoosenEdge,'Choosen/edge.png')
imwrite(ChoosenAfter,'Choosen/after.png')
imwrite(ChoosenBefore,'Choosen/before.png')

ChoosenEdge = mat2cell(ChoosenEdge,[75,75,75,75,75],[100,100,100,100,100]);
ChoosenBefore = mat2cell(ChoosenBefore,[75,75,75,75,75],[100,100,100,100,100]);
ChoosenAfter = mat2cell(ChoosenAfter,[75,75,75,75,75],[100,100,100,100,100]);

%imwrite(ChoosenEdge{1,2},'Choosen/edge.png')
%imwrite(ChoosenAfter{1,2},'Choosen/after.png')
%imwrite(ChoosenBefore{1,2},'Choosen/before.png')



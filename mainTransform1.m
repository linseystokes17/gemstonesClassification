topaz1 = imread("gemstones/train/Topaz/topaz_0.jpg");
topaz2 = imread("gemstones/train/Topaz/topaz_1.jpg");
ruby1 = imread("gemstones/train/ruby/ruby_0.jpg");
ruby2 = imread("gemstones/train/ruby/ruby_1.jpg");
moonstone1 = imread("gemstones/train/moonstone/moonstone_0.jpg");

topaz1Canny = edge(rgb2gray(topaz1), 'canny');
topaz2Canny = edge(rgb2gray(topaz2), 'canny');
ruby1Canny = edge(rgb2gray(ruby1), 'canny');
ruby2Canny = edge(rgb2gray(ruby2), 'canny');
moonstone1Canny = edge(rgb2gray(moonstone1), 'canny');


subplot(2, 2, 1), imshow(topaz1Canny);
subplot(2, 2, 2), imshow(topaz2Canny);
subplot(2, 2, 3), imshow(ruby1Canny);
subplot(2, 2, 4), imshow(ruby2Canny);
pause;

moonstoneAdjusted = imagesc(moonstone1);

figure('Name', 'Moonstone'), subplot(2, 2, 1),  imshow(moonstone1Canny);
subplot(2,2,2), imshow(moonstone1);
subplot(2,2,3), imshow(moonstoneAdjusted);

pause;

subplot(2, 2, 1), imshow(topaz1);
subplot(2, 2, 2), imshow(topaz2);
subplot(2, 2, 3), imshow(ruby1);
subplot(2, 2, 4), imshow(ruby2);
pause;
close;
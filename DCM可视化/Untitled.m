% 设置DICOM文件路径
dcm_file = 'C:\Users\32050\Desktop\image.dcm';

% 读取DICOM文件中的图像数据
dcm_data = dicomread(dcm_file);

% 显示DICOM图像
imshow(dcm_data, []);

% 添加标题
title('DICOM Image');

% 如果需要，你可以进一步处理图像数据，比如调整对比度、亮度等
% 例如，可以使用imadjust函数来调整图像的对比度和亮度
% dcm_data_adjusted = imadjust(dcm_data, [low_in high_in], [low_out high_out]);

% 也可以使用imtool函数在图像上进行交互式操作
% imtool(dcm_data);


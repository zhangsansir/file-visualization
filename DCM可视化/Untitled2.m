% 设置DICOM文件夹路径和保存图像的文件夹路径
dcm_folder = 'C:\Users\32050\Desktop\KneeBones3Dify-Annotated-Dataset-main\Data\'; % 替换为包含DCM文件的文件夹路径
save_folder = 'C:\Users\32050\Desktop\images\'; % 替换为要保存图像的文件夹路径

% 获取DICOM文件夹中所有的DCM文件列表
dcm_files = dir(fullfile(dcm_folder, '*.dcm'));

% 循环读取每个DICOM文件并保存为图像文件
for i = 1:numel(dcm_files)
    % 读取DICOM文件中的图像数据
    dcm_data = dicomread(fullfile(dcm_folder, dcm_files(i).name));
    
    % 创建新的图形窗口并显示图像
    figure;
    imshow(dcm_data, []);
    %title(['DICOM Image ', num2str(i)]);
    
    % 生成图像文件名并保存图像到指定文件夹中
    [~, file_name, ~] = fileparts(dcm_files(i).name);
    image_file_name = fullfile(save_folder, [file_name, '.png']); % 可以修改保存的图像格式
    saveas(gcf, image_file_name);
    
    % 关闭图形窗口
    close(gcf);
    
    % 显示进度信息
    disp(['已保存图像文件：', image_file_name]);
end

disp('所有DICOM文件已转换为图像并保存完成。');

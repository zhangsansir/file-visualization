% ����DICOM�ļ���·���ͱ���ͼ����ļ���·��
dcm_folder = 'C:\Users\32050\Desktop\KneeBones3Dify-Annotated-Dataset-main\Data\'; % �滻Ϊ����DCM�ļ����ļ���·��
save_folder = 'C:\Users\32050\Desktop\images\'; % �滻ΪҪ����ͼ����ļ���·��

% ��ȡDICOM�ļ��������е�DCM�ļ��б�
dcm_files = dir(fullfile(dcm_folder, '*.dcm'));

% ѭ����ȡÿ��DICOM�ļ�������Ϊͼ���ļ�
for i = 1:numel(dcm_files)
    % ��ȡDICOM�ļ��е�ͼ������
    dcm_data = dicomread(fullfile(dcm_folder, dcm_files(i).name));
    
    % �����µ�ͼ�δ��ڲ���ʾͼ��
    figure;
    imshow(dcm_data, []);
    %title(['DICOM Image ', num2str(i)]);
    
    % ����ͼ���ļ���������ͼ��ָ���ļ�����
    [~, file_name, ~] = fileparts(dcm_files(i).name);
    image_file_name = fullfile(save_folder, [file_name, '.png']); % �����޸ı����ͼ���ʽ
    saveas(gcf, image_file_name);
    
    % �ر�ͼ�δ���
    close(gcf);
    
    % ��ʾ������Ϣ
    disp(['�ѱ���ͼ���ļ���', image_file_name]);
end

disp('����DICOM�ļ���ת��Ϊͼ�񲢱�����ɡ�');

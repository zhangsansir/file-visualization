% ����DICOM�ļ�·��
dcm_file = 'C:\Users\32050\Desktop\image.dcm';

% ��ȡDICOM�ļ��е�ͼ������
dcm_data = dicomread(dcm_file);

% ��ʾDICOMͼ��
imshow(dcm_data, []);

% ��ӱ���
title('DICOM Image');

% �����Ҫ������Խ�һ������ͼ�����ݣ���������Աȶȡ����ȵ�
% ���磬����ʹ��imadjust����������ͼ��ĶԱȶȺ�����
% dcm_data_adjusted = imadjust(dcm_data, [low_in high_in], [low_out high_out]);

% Ҳ����ʹ��imtool������ͼ���Ͻ��н���ʽ����
% imtool(dcm_data);


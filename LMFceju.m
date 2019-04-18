clear all;
close all;
clc;

load('data_boshu','ans_T');%���ز���ͼ����
%-------����------------------------
%test_num=input('���������źŵĸ�����');
for n=1:1
    fprintf('������Ƕ�%d : ',n);
    angle_target=input(' ');
    fprintf('������Ŀ�����%d : ',n);
    target_range=input(' ');
    %angle_target=30;
    if n==1
        theta_test(1,:)=ans_T(angle_target+1,:);
    else 
        theta_test(1,:)=theta_test(1,:)+ans_T(angle_target+1,:);
    end
end



%plot([0:31]*11.25,theta_test);
theta_f=theta_test;
% for n=1:test_num
%     [max_theta yy_(1,n)]=max(theta_f);
%     theta_f(1,yy_(1,n))=0;
% end
test_num_=1;
while true
     [max_theta yy_(1,test_num_)]=max(theta_f);
     theta_f(1,yy_(1,test_num_))=0;
     if max(theta_f)<1
         break
     end
     test_num_=test_num_+1;
end

flag_num=3;

for n=1:test_num_
    yy=yy_(1,n);
    for flag=1:flag_num
        if yy+flag-round(flag_num/2)<=0
            result(1,flag)=mod(yy+flag-round(flag_num/2)+32,33);
            result(2,flag)=(result(1,flag)-1)*360/32-360;
            result(3,flag)=theta_test(result(1,flag));
        else if yy+flag-round(flag_num/2)>=33
                result(1,flag)=yy+flag-round(flag_num/2)-32;
                result(2,flag)=(result(1,flag)-1)*360/32+360;
                result(3,flag)=theta_test(result(1,flag));
        else
            result(1,flag)=yy+flag-round(flag_num/2);
            result(2,flag)=(result(1,flag)-1)*360/32;
            result(3,flag)=theta_test(result(1,flag));
            end
        end
    end
    p=polyfit(result(2,:),result(3,:),2);
    cexiang_result(1,:)=[result(2,1):0.01:result(2,flag_num)];
    cexiang_result(2,:)=polyval(p,cexiang_result(1,:));
    %figure
   % plot(result(2,:),result(3,:),'-o',cexiang_result(1,:),cexiang_result(2,:),'-*');
    [result_1 angle_1]=max(cexiang_result(2,:));
    angle_result(1,n)=cexiang_result(1,angle_1);
end
target_dir=angle_target/180*pi;%Ŀ�귽λ
result_angle=angle_result(1,1)/180*pi;%���Ƶ�Ŀ�귽λ

f=500;%�����Ƶ��
m=32;n=8;%��Դ
M = m*n;%
r = 4;%�뾶
h = 1.5;%ÿ��ļ��
Position_cell = [];% ��Ԫλ������
for k = 1:n % ȷ��ÿ����Ԫ������
    z = (k-1)*h;
    position = [r*cosd(360/m*[0:m-1].'),r*sind(360/m*[0:m-1].'),z*ones(m,1)];
    Position_cell = [Position_cell;position];
end

fs=10000;%����Ƶ��
T=1;%ʱ�䳤��
f0=f;
N=fs*T;
range=target_range;%Ŀ�����
c=1500;%ˮ������
tao=range*2/c;%�����ź���ʱ
n1=round(tao*N);
SNR=5;
t1 = 1/fs:1/fs:0.5;
t=1/fs:1/fs:T;
delta_f=300;%lfm�ź�Ƶ��
k1=delta_f/0.5;
%k1=delta_f/T;
%pulse=sin(2*pi*f0*t1);
%pulse=exp(1i*2*pi*(750+delta_f*t1).*t1);
pulse=exp(1i*(2*pi*750*t1+pi*k1*t1.^2));
z=[pulse pulse];%��ʼ�����ź�
z_r=[zeros(1,n1) pulse pulse];%�������Ļ����ź�
z_r=z_r(1:N);

for j=1:length(Position_cell)          %��������Ԫ�����ź�
    fi=2*pi*(Position_cell(j,1)*cos(target_dir)+Position_cell(j,2)*sin(target_dir))*f0/c;
    array_sig(j,:)=z_r.*exp(1i*fi);
    array_sig(j,:)=awgn(array_sig(j,:),SNR);
end

CBF_output=zeros(1,length(z));
for j=1:length(Position_cell)
    fi=-(2*pi*(Position_cell(j,1)*cos(result_angle)+Position_cell(j,2)*sin(result_angle))*f0/c);
    CBF_output=CBF_output+array_sig(j,:).*exp(1i*fi);
end

figure(1);
subplot(311)
plot(t,real(z))
title('��ʼ�����ź�')
ylabel('����')
xlabel('ʱ��/s')
subplot(312)
plot(t,real(z_r));
title('�����ź�')
ylabel('����')
xlabel('ʱ��/s')
subplot(313)
plot(t,real(CBF_output))
title('�����γ����')
ylabel('����')
xlabel('ʱ��/s')

% for i=1:N-length(pulse)
%     corsig=[zeros(1,i) pulse zeros(1,N-i-length(pulse))];
%     cor(i)=sum(real(corsig).*real(CBF_output));
% end
% 
% [whatever ari]=max(cor);
% tao=ari/fs;
% range_estimate=c*tao/2;
% fprintf('��෽�� : %f�� ,������ƣ�%fm\n',angle_result,range_estimate);
% fprintf('������� : %f�� ,�����%fm\n',abs(angle_target-angle_result),abs(range-range_estimate));
% jiba=[1:N-length(pulse)];
% jiba=jiba/fs;
% figure(2)
% plot(jiba,cor)
% title('����ʱ�ӻ����')
% ylabel('����')
% xlabel('ʱ��/s')


fcbf=abs(fft((CBF_output)));%��������źŵ�Ƶ��
f=fs*linspace(0,1,length(fcbf));

tiaozhi=real(CBF_output).*real(z);
ftiaozhi=abs(fft(real(tiaozhi)));
fmid=(0.5*k1*0.5)*N/fs;
f2d=ftiaozhi(1:fmid);
f1d=[zeros(1,length(f2d)) ftiaozhi(fmid:N/2)];
[whatever deltaf1]=max(f1d);
deltaf1=deltaf1*N/fs;
range_f1=c*deltaf1/(k1*2);
[whatever deltaf2]=max(f2d);
deltaf2=deltaf2*N/fs;
range_f2=abs(((deltaf2/k1)-0.5)*c/2);
range_estimate=(range_f2+range_f1)/2;

fprintf('��෽�� : %f�� ,������ƣ�%fm\n',angle_result,range_estimate);
fprintf('������� : %f�� ,�����%fm\n',abs(angle_target-angle_result),abs(range-range_estimate));
figure(2)
plot(f,ftiaozhi);
title('��Ƶ�ź�Ƶ��')
ylabel('����')
xlabel('Ƶ��')






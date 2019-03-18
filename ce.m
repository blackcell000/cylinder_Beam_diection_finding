function varargout = ce(varargin)
% CE MATLAB code for ce.fig
%      CE, by itself, creates a new CE or raises the existing
%      singleton*.
%
%      H = CE returns the handle to a new CE or the handle to
%      the existing singleton*.
%
%      CE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CE.M with the given input arguments.
%
%      CE('Property','Value',...) creates a new CE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ce_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ce_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ce

% Last Modified by GUIDE v2.5 18-Mar-2019 12:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ce_OpeningFcn, ...
                   'gui_OutputFcn',  @ce_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ce is made visible.
function ce_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ce (see VARARGIN)

% Choose default command line output for ce
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
img=imread('logo1.png');
axes(handles.axes1);
imshow(img);
set(gcf,'Name','圆柱阵测向演示程序--by：栋次大次');


% UIWAIT makes ce wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ce_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function mm_Callback(hObject, eventdata, handles)
% hObject    handle to mm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mm as text
%        str2double(get(hObject,'String')) returns contents of mm as a double


% --- Executes during object creation, after setting all properties.
function mm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nn_Callback(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nn as text
%        str2double(get(hObject,'String')) returns contents of nn as a double


% --- Executes during object creation, after setting all properties.
function nn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ff_Callback(hObject, eventdata, handles)
% hObject    handle to ff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ff as text
%        str2double(get(hObject,'String')) returns contents of ff as a double


% --- Executes during object creation, after setting all properties.
function ff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hh_Callback(hObject, eventdata, handles)
% hObject    handle to hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hh as text
%        str2double(get(hObject,'String')) returns contents of hh as a double


% --- Executes during object creation, after setting all properties.
function hh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rr_Callback(hObject, eventdata, handles)
% hObject    handle to rr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rr as text
%        str2double(get(hObject,'String')) returns contents of rr as a double


% --- Executes during object creation, after setting all properties.
function rr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cc_Callback(hObject, eventdata, handles)
% hObject    handle to cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cc as text
%        str2double(get(hObject,'String')) returns contents of cc as a double


% --- Executes during object creation, after setting all properties.
function cc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bujin_Callback(hObject, eventdata, handles)
% hObject    handle to bujin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bujin as text
%        str2double(get(hObject,'String')) returns contents of bujin as a double


% --- Executes during object creation, after setting all properties.
function bujin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bujin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function geshu_Callback(hObject, eventdata, handles)
% hObject    handle to geshu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of geshu as text
%        str2double(get(hObject,'String')) returns contents of geshu as a double


% --- Executes during object creation, after setting all properties.
function geshu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to geshu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in boshushengcheng.
function boshushengcheng_Callback(hObject, eventdata, handles)
% hObject    handle to boshushengcheng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%close all;



m=str2double(get(handles.mm,'String'));
n=str2double(get(handles.nn,'String'));
M = m*n;
r = str2double(get(handles.rr,'String'));
h = str2double(get(handles.hh,'String'));%每层的间隔
Position_cell = [];% 阵元位置坐标

for k = 1:n % 确定每个阵元的坐标
    z = (k-1)*h;
    position = [r*cosd(360/m*[0:m-1].'),r*sind(360/m*[0:m-1].'),z*ones(m,1)];
    Position_cell = [Position_cell;position];
end
set(handles.tishiText,'String','ing...');
%波束形成
%计算权值
boshu_num=str2double(get(handles.geshu,'String'));
c=str2double(get(handles.cc,'String'));
f=str2double(get(handles.ff,'String'));
for thetaT=0:360/boshu_num:360/boshu_num*(boshu_num-1)
    Angle_T = [thetaT 90];%[水平角 俯仰角]
    thetas = Angle_T(1);
    fais = Angle_T(2);
    ps = -[sind(fais)*cosd(thetas) sind(fais)*sind(thetas) cosd(fais)].';
    taos = ps.'*Position_cell.'/c;%时间常数
    w = exp(-j*2*pi*f*taos).'/M;%权值

%---------------------------------------------------
    bujin_=str2double(get(handles.bujin,'String'));
    Theta=0:bujin_:360;
    N_Theta = length(Theta);
    %Theta = linspace(0,360,N_Theta);
    Fai=0:bujin_:180;
    N_Fai = length(Fai);
    %Fai = linspace(0,180,N_Fai);
    for a = 1:N_Theta
        for b= 1:N_Fai
            theta_now = Theta(a);
            fai_now = Fai(b);
            ps_now = -[sind(fai_now)*cosd(theta_now) sind(fai_now)*sind(theta_now) cosd(fai_now)].';
            tao_now = ps_now.' * Position_cell.'/c;
            a_now = exp(-j*2*pi*f*tao_now).';
            B(a,b)=abs(w'*a_now);
        end
    end
    B=B/max(max(B));
    ans_flag=thetaT*boshu_num/360+1;
    ans_T(:,ans_flag)=B(:,90/bujin_+1);
end

save('data_app','ans_T');
set(handles.tishiText,'String','波束生成完成');

% --- Executes on button press in cexiang.
function cexiang_Callback(hObject, eventdata, handles)
% hObject    handle to cexiang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear all;
% close all;
% clc;

load('data_app','ans_T');%加载波束图数据
set(handles.tishiText,'String','开始测向');
%-------侧向------------------------
test_num_=inputdlg('请输入检测信号的个数');
test_num=str2double(test_num_{1});
bujin_=str2double(get(handles.bujin,'String'));
for n=1:test_num
    angle_target_=inputdlg('请依次输入信号角度(0-360°)');
    angle_target=str2double(angle_target_{1});
    if n==1
        theta_test(1,:)=ans_T(angle_target/bujin_+1,:);
    else 
        theta_test(1,:)=theta_test(1,:)+ans_T(angle_target/bujin_+1,:);
    end
end

figure(1)
plot(theta_test);
h=[figure(1)];
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
boshu_num=str2double(get(handles.geshu,'String'));
for n=1:test_num_
    yy=yy_(1,n);
    for flag=1:flag_num
        if yy+flag-round(flag_num/2)<=0
            result(1,flag)=mod(yy+flag-round(flag_num/2)+boshu_num,boshu_num+1);
            result(2,flag)=(result(1,flag)-1)*360/boshu_num-360;
            result(3,flag)=theta_test(result(1,flag));
        else if yy+flag-round(flag_num/2)>=boshu_num+1
                result(1,flag)=yy+flag-round(flag_num/2)-boshu_num;
                result(2,flag)=(result(1,flag)-1)*360/boshu_num+360;
                result(3,flag)=theta_test(result(1,flag));
        else
            result(1,flag)=yy+flag-round(flag_num/2);
            result(2,flag)=(result(1,flag)-1)*360/boshu_num;
            result(3,flag)=theta_test(result(1,flag));
            end
        end
    end
    p=polyfit(result(2,:),result(3,:),2);
    cexiang_result(1,:)=[result(2,1):0.01:result(2,flag_num)];
    cexiang_result(2,:)=polyval(p,cexiang_result(1,:));
    figure(n+1);
    plot(result(2,:),result(3,:),':o',cexiang_result(1,:),cexiang_result(2,:),'-*');
    h=[h figure(n+1)];
    [result_1 angle_1]=max(cexiang_result(2,:));
    angle_result(1,n)=cexiang_result(1,angle_1);
end

angle_result_=angle_result(1,:)';
set(handles.listbox2,'String',angle_result_);
set(gcbf,'UserData',h);
set(handles.tishiText,'String','测向完成，下次测向前请点击【清零】按钮');


% clearFlag=1;
% while clearFlag
% end
% for n=1:test_num
%     close
% end
% set(handles.tishiText,'String','侧向完成');




function jieguo_Callback(hObject, eventdata, handles)
% hObject    handle to jieguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jieguo as text
%        str2double(get(hObject,'String')) returns contents of jieguo as a double


% --- Executes during object creation, after setting all properties.
function jieguo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jieguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clearButton.
function clearButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%clear all;

set(handles.tishiText,'String','清零完成');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
clc;
close all;


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure_C=get(gcbf,'UserData');
close(figure_C);
%clear all;
set(handles.listbox2,'String','result');
set(handles.tishiText,'String','清零完成，系统准备就绪');

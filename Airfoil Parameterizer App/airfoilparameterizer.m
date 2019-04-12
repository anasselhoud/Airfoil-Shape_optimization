function varargout = airfoilparameterizer(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @app_OpeningFcn, ...
                   'gui_OutputFcn',  @app_OutputFcn, ...
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


function app_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = app_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function togglebutton1_Callback(hObject, eventdata, handles)


function cambrure_Callback(hObject, eventdata, handles)

function cambrure_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function plotconfirm_Callback(hObject, eventdata, handles)

m = 0.01*str2double(get(handles.cambrure, 'string'));
p = 0.1*str2double(get(handles.position, 'string'));
t = 0.1*str2double(get(handles.maxthickness, 'string'));

[xu,xl,yu,yl]=plotnaca(m,p,t);

%%%% look at the script titled plotnaca.m to figure out how the generation
%%%% function has been written

xu(101)=1;
yu(101)=0;
xl(101)=1;
yl(101)=0;
plot(xu,yu)
hold on
plot(xl,yl)

x1=[xu,xl;yu,yl];
x=transpose(x1);

set(handles.uitable1, 'data', x)


function slider1_Callback(hObject, eventdata, handles)

function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function position_Callback(hObject, eventdata, handles)

function position_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxthickness_Callback(hObject, eventdata, handles)

function maxthickness_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)

% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)

       % --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
function uitable1_CellEditCallback(hObject, eventdata, handles)
 

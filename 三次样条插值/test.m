clc;
clear all;
%三次样条测试
%原始数据点
X = [0, 0.422955130, 0.598557636, 0.734591320, 0.850603738, 0.953558869, 1.056514000, 1.159469131, 1.274332912, 1.409208218, 1.585026197, 2];
Y = [0, 0.14881055128822188, 0.2976136037517004, 0.4464166562151788, 0.5952197086786574, 0.7440227611421358, 0.8928258136056142, 1.0416288660690929, 1.1904319185325714, 1.3392349709960498, 1.4880380234595283, 1.6368410759230068];
s = csapi(X,Y);   %三次样条
fnplt(s, 'r');         %绘制样条曲线
hold on
plot(X,Y,'o')       %绘制原始数据点
v=fnder(s,1);     %样条曲线一阶导数得到速度曲线
fnplt(v, 'g');        %绘制速度曲线
hold on
a=fnder(v,1);     %样条曲线二阶导数得到加速度曲线
fnplt(a, 'b');        %绘制加速度曲线
legend('位置样条曲线','原始数据点','速度曲线','加速度曲线')
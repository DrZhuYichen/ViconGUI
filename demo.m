%% 不能直接运行！！
%只提供参考

%% 初始化MATLAB - ROS节点
setenv('ROS_MASTER_URI','http://192.168.10.41:11311/');%ROS主机IPV4地址，手动设置
setenv('ROS_IP','192.168.10.31');%本机IPV4地址
rosinit;

%% 一个简单的运动
chatpub = rospublisher('cmd_vel','geometry_msgs/Twist');
msg = rosmessage(chatpub);
msg.Linear.X = 0.3;
msg.Angular.Z = 0;
while 1
    send(chatpub,msg);
    pause(0.02);
end

%% 基于Matlab的Vicon数据接收
% 具体看官方的 ViconDataStreamSDK_MATLABTest.m 或者 我写的（体量小，更稳定） ViconGUI.m
% 我的 ViconGUI.m 基本都注释了，不再赘述
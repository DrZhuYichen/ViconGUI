# ViconGUI
%%%%%%
% Copyright (C) ZJUT - DrZhuYichen
% https://github.com/DrZhuYichen
%%%%%%
% Part of the Vicon DataStream for MATLAB-2015b.
%%%%%%
Part0 前(废)言(话)
为什么要基于Matlab做一个GUI与数据收发的API呢?理由有：
    1. Matlab在数据分析，数据可视化这块做的相当出色：人人都会，人人都在用
    2. 在我们的控制团队中，常常需要用到各种matlab工具箱，如：Simulink。如果在数据处理中我们用了如C++框架，
       且我们还需要控制基于Linux-ROS的机器人，就涉及到了跨平台，三软件的通信问题，相当麻烦。
    3. 最最重要的是，其他我啥也不会，就懂一点点Matlab皮毛。前面2条只是我瞎编的......

Part1 文件说明
ViconDataStreamSDK_MATLABTest.m 是vicon官方提供，基于Matlab的三维运动捕捉SDK
ViconGui.m 与 ViconGui.fig 由本人针对工大欧禹团队做的三维定位GUI
demo.m 提供了基于Win-Matlab与Linux-ROS通讯的基本配置、Vicon三维定位数据的获取、基于Matlab对ROS下机器人的控制的demo
剩余文件分别为 基于.NET框架、C++、VC、Python的动态链接库与底层封装，是没有必要修改的

Part2 文件使用
通过 ViconDataStreamSDK_MATLABTest.m 这个官方SDK，我们可以得到所有可以获取的信息，且以printf的信息100HZ频率打印出来
运行 ViconGui.m 文件，可以实现方便的数据可视化，直接定量地看到定位数据。具体操作如下
    step1. 先选择Server或者Client。如果是在实验室公用电脑上运行，点击Server；如果在自己电脑上，点击Client，即默认
        选择连接到实验室电脑IPV4为192.168.10.1地网段上。注意:需要Server下，需要电脑连接到名为Vicon地无线网络，
        并手动配置自己地IPV4地址到192.168.10.xx网段，“xx”建议为30-99的数字，比如设置IPV4为：192.168.10.31
    step2. 选择需要可视化的数据。这里我开放了两个最为迫切的数据可视化窗口：刚体的三维定位信息及其欧拉角；
        每个Mark球的位置信息。根据需要，点击：“刚体位姿”或“Mark球坐标即可”
    step2.5 由于界面显示有限（只能显示3个刚体或9个Mark球），我另外开放了一个位于GUI左下角的可视化接口：点击
        “任意Mark球坐标”，输入“SubjectName”与“MarkerName”，可以在“刚体位姿”与“Mark球坐标即可”模式下
        得到任意Mark球坐标
    step3 结束GUI。点击“关闭Vicon-SDK”，再点击“清空缓存并退出”即可。

Part3 数据说明
都做了数据可视化了，自己看呗。
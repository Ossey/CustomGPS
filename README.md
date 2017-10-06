# Custom gps
=======================

利用Xcode模拟定位， 更改任意位置，可使任意App的当前的位置发生改变：比如微信发送朋友圈指定位置、钉钉打卡等等；
此方法仅限开发者调试使用，但是修改位置只能依靠Xcode在代码中更改，退出此demo后位置无效；

坐标系统：
------------

目前我们经常接触的无非就是原始坐标，火星坐标，二次加密坐标。

原始坐标：手机上获取到的是原始的GPS坐标 —— WGS-84。
火星坐标：天朝自己的一套加密坐标，中国国测局—— GCJ-02：谷歌、高德。
百度加密坐标：在火星坐标的基础上再次加密坐标 —— BD-09：百度。

坐标获取入口：
------------

[高德](http://lbs.amap.com/console/show/picker)
[百度](http://api.map.baidu.com/lbsapi/getpoint/index.html)

iPhone所需要的坐标是WGS-84，我们获取的是GCJ-02, 所以我们可以带坐标进行转换
CLLocation *location = [[CLLocation alloc] initWithLatitude:30.266732 longitude:119.956855];
CLLocationCoordinate2D coord2d = [LocationConverter gcj02ToWgs84:location.coordinate];

添加一个GPX文件，把转换得到的原始坐标对应到lat和lon在文件中替换掉
--------------------
```
<?xml version="1.0"?>
<gpx version="1.1" creator="Xcode">

    <!--
    Provide one or more waypoints containing a latitude/longitude pair. If you provide one
    waypoint, Xcode will simulate that specific location. If you provide multiple waypoints,
    Xcode will simulate a route visiting each waypoint.
    -->
    <wpt lat="30.269309" lon="119.952272">
        <name>Cupertino</name>

        <!--
        Optionally provide a time element for each waypoint. Xcode will interpolate movement
        at a rate of speed based on the time elapsed between each waypoint. If you do not provide
        a time element, then Xcode will use a fixed rate of speed.

        Waypoints must be sorted by time in ascending order.
        -->
        <time>2014-09-24T14:55:37Z</time>
    </wpt>

</gpx>


```

配置Scheme:
---------------------------
首先需要在配置gpx文件: 进入Product-Edit Scheme-Edit Scheme菜单, 选择Run-Options,在 Core Location项目中选中Allow Location Simulation复选框,然后在 Default Location选择gpx文件

# 1.DeviceCheck简介
     DeviceCheck是iOS 11新增的api，使用此api，可以通过你的服务器与Apple服务器通讯，
     可以查询和设置每个设备的两个bit数据，同时保存用户隐私；
    
## 2.DeviceCheck工作流程
     在设备上，使用DeviceCheck api可以生成一个token，然后将这个api发给自己的服务器，
     然后自己的服务器就可以与Apple服务器进行通讯；就可以获取到两个bit值，这两个bit值
     就标志这这一台设备；
    
## 3.客户端
     ① 导入库DeviceCheck
     ② let device = DCDevice.current  
       device.generateToken(competionHandler: { (data, error) in    
       })
      
## 4.服务器端
     ① 调用api获取bit值  
     requestJSON  
     {
     "device_token" : "wlkCDA2Hy/CfrMqVAShs1BAR/0sAiuRIUm5jQg0a...",  
     "transaction_id" : "5b737ca6-a4c7-488e-b928-8452960c4be9",  
      "timestamp" : 1487716472000 
     }
    
     ② 调用api更新bit值
     {
     "device_token" : "wlkCDA2Hy/CfrMqVAShs1BAR/0sAiuRIUm5jQg0a..."   
     "transaction_id" : "5b737ca6-a4c7-488e-b928-8452960c4be9",   
     "timestamp" : 1487716472000,    
     "bit0" : true,   
     "bit1" : false   
     }

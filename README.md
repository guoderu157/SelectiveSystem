# SelectiveSystem
# 基于JavaWeb的学生选课系统（个人开发）<br>
•	开发软件：idea、tomcat、mysql<br>
•	开发环境：spring、springMVC、Mybatis <br>
•	项目描述：使用java web为核心部位，使用SSM框架。后台传输json。并且设计了安全权限登录问题。前端分为学生端、教师端和管理员端，使用分页功能，优化了大量数据的效率<br>
•	项目功能：<br>
安全权限功能：在前端使用js进行密码加密，后端使用shiro权限管理，并且再次加密密码，使得数据库存储的用户密码为非对称密钥<br>
会话功能：对用户长时间不操作定时下线，防止用户离开被操作，禁止用户不同ip登录，导致用户数据出错<br>
选课功能：教师添加自己信息和给学生选课成绩打分，管理者负责课程、课程老师的选择并且可以修改学生选课成绩和课程，并生成对应选课信息，学生可以选择对应老师对应的课程，并且可以查看选课成绩<br>



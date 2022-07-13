# robot-poolsawat.com
รวมบทความการพัฒนาการทดสอบระบบด้วย Robot Framework ที่เน้นอธิบายพร้อมกับการแสดงตัวอย่างโค๊ด เพื่อสำหรับผู้อ่านสามารถทพตามได้

## ความต้องการพื้นฐานสำหรับเริ่มการพัฒนารทดสอบระบบด้วย Robot Framework
+ python version 3.8 ขึ้นไป
+ editor หรือ IDE ผู้เขียนบทความแนะนำ Pycharm IDE
+ ความรู้พื้นฐานของภาษา python เล็กน้อย

## ขั้นตอนการติดตั้ง
+ git clone https://github.com/pool13433/robot-poolsawat.com.git
+ cd robot-poolsawat.com
+ pip install -r requirements.txt

## ขั้นตอนการสั่ง รัน
+ robot -L TRACE --variable ENV:dev -t "CASE_000**" "testcases/episode_1.robot"
```
(poolsawat.com-venv1) D:\RobotFramework\poolsawat.com>robot -L TRACE --variable ENV:dev -t "CASE_000**" "testcases/episode_1.robot"   
==============================================================================
Episode 1                                                                     
==============================================================================
CASE_00001 lesson 1 Log to console                                    'Hello World 1'
CASE_00001 lesson 1 Log to console                                    | PASS |
------------------------------------------------------------------------------
CASE_00002 lesson 2 use external keywords with void                   'Result from Print Message from agruments keywords ::==''Hello world 2'
CASE_00002 lesson 2 use external keywords with void                   | PASS |
------------------------------------------------------------------------------
CASE_00003 lesson 3 use external keywords with return                 .'Result from Calculate value keywords::=='15
CASE_00003 lesson 3 use external keywords with return                 | PASS |
------------------------------------------------------------------------------
CASE_00004 lesson 4 get data from yaml file                           'request ::='{'name': 'poolsawat Dev Env', 'age': 30, 'nation': 'Thai'}
.'expect_data ::=='{'status': {'code': 'API200', 'message': 'Success'}}
CASE_00004 lesson 4 get data from yaml file                           | PASS |
------------------------------------------------------------------------------
CASE_00005 lesson 5 get env global file                               'app_name ::=='poolsawat.com
CASE_00005 lesson 5 get env global file                               | PASS |
------------------------------------------------------------------------------
CASE_00006 lesson 6 use custom lib keywords                           .'now ::=='2022-07-13 18:48:59.676923
CASE_00006 lesson 6 use custom lib keywords                           | PASS |
------------------------------------------------------------------------------
CASE_00007 lesson 7 use variable with resource environnment           'welcome_message from dev::=='welcome from Dev environment
CASE_00007 lesson 7 use variable with resource environnment           | PASS |
------------------------------------------------------------------------------
Episode 1                                                             | PASS |
7 tests, 7 passed, 0 failed
==============================================================================
Output:  D:\RobotFramework\poolsawat.com\output.xml
Log:     D:\RobotFramework\poolsawat.com\log.html
Report:  D:\RobotFramework\poolsawat.com\report.html

```
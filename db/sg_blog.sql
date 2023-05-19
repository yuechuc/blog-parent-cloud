/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : 8.130.53.36:3306
 Source Schema         : sg_blog

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 19/05/2023 18:39:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sg_article
-- ----------------------------
DROP TABLE IF EXISTS `sg_article`;
CREATE TABLE `sg_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '文章内容',
  `summary` varchar(1024) DEFAULT NULL COMMENT '文章摘要',
  `category_id` bigint DEFAULT NULL COMMENT '所属分类id',
  `thumbnail` varchar(256) DEFAULT NULL COMMENT '缩略图',
  `is_top` char(1) DEFAULT '0' COMMENT '是否置顶（0否，1是）',
  `status` char(1) DEFAULT '1' COMMENT '状态（0已发布，1草稿）',
  `view_count` bigint DEFAULT '0' COMMENT '访问量',
  `is_comment` char(1) DEFAULT '1' COMMENT '是否允许评论 1是，0否',
  `create_by` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章表';

-- ----------------------------
-- Records of sg_article
-- ----------------------------
BEGIN;
INSERT INTO `sg_article` (`id`, `title`, `content`, `summary`, `category_id`, `thumbnail`, `is_top`, `status`, `view_count`, `is_comment`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (8, '6666', '6', '666', 2, 'http://rty1o2x0f.hn-bkt.clouddn.com/2023/05/05/068e578516614320becb6259a6dfe6e6.jpg', '0', '0', 30, '0', 1, '2023-05-04 20:00:16', 1, '2023-05-05 01:13:22', 1);
INSERT INTO `sg_article` (`id`, `title`, `content`, `summary`, `category_id`, `thumbnail`, `is_top`, `status`, `view_count`, `is_comment`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (9, '英语四级翻译', '# 清明节\n\n​	Tomb sweeping day is one of the most important traditional festivals in china.it originated in the zhou dynasty,which has a history more than 2500 years.\n\n​	it is a crucial festival for chinese to offer sacrifices and sweep the tombs of their ancestors .\n\npeople will carry  food and paper mony to the tomb when whey go to sweep tombs.\n\nthey put the food  in front of the tombs,add some fresh soils to the tombs,burn paper mony,kneel down in prayer and worship ancestors  ,eat the  food ,drink the wine ,and then go back home in the end. In addition to sweeping tombs,people also participate  in various activities such as  flying kites, swinging on swings,and so on.\n\n\n\n# 社会发展\n\nurbanization means the process of rural people migrating into cities. \n\nthe ==Population== distribution between  rural areas  and cities  is an important index of  a counrty\'s urbanization level.in the past year,chinese urbanization rate ==was== more than 50 precent,which marks the beginning  of china has entering  a  new \'\'urban ==society==\'.urbanization plays a crucial role in our social and economic development .it has contributed to promoting better education and employment opportunities  for urban residents.which not only improves our  living standards but also enriches  our cultural experiences。\n\n\n\n# 经济发展(上海自贸区)\n\nFree trade zone (FTZ) was  ==opening== in setember,2013，construct==ed== the FTZ which play a crucial role in step into ==an== opened and == reform==  period for china。FTZ  was located in the  suburb of Shanghai, its  total areas is  28.78 square kilometers  .it was built to explore  new  roads which will reduce authorities interference and more  opening chinese economy for global investors,initially,  36 corporations recevied licenses of in the ftz.experts believe that FTZ will bring an increasing of opportunities for chinese economic development    \n\n# 十二生肖\n\nin order to rememer years  more easily,our ancestors used twelve animals to represent years,which was called the \'chinese zodiac\'.each animal represent one year witch  a twelve-year cycle.the cycle starts with the  mouse and ends  with pig.each animal has its cultural connotation,for example, a  person  born in the year of ox  is said to be hard working,calm,reliable, while a person  born in the year of tiger is said to be powerful,brave,impatient.chinese zodiac is also popular in other asian countries such as korea and Japan.\n\n\n\n# 国画\n\n\n\nTradutional chinese painting is originated in 6000 years ago.befor paper appeared,people mostly used pottery to painting.with the teconomic and cultural prosperity of the tang dynasty.Tradutional chinese painting was prevail slowly.one of the Tradutional chinese painting  mainly type is landscape.for more than serval centuries,developmen of  chinese painting is reflected  the changes of the modern and society.nowadays.Tradutional chinese painting mainly collected and exhibited in the gallary for chinese and foreign tourists to appreciate. \n\n\n\nmainly descri\n\n\n\n\n\n\n\n', '英语四级翻译', 18, 'http://rty1o2x0f.hn-bkt.clouddn.com/2023/05/06/2c36e25cc62e4dcaa77b8e22e14a6872.png', '1', '0', 45, '0', 1, '2023-05-06 13:06:16', 1, '2023-05-06 13:06:16', 0);
INSERT INTO `sg_article` (`id`, `title`, `content`, `summary`, `category_id`, `thumbnail`, `is_top`, `status`, `view_count`, `is_comment`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (10, '四级作文', '# 四级作文\n\n## 格式\n\n### 议论文\n\n​	第一段：引出观点+自己的观点\n\n​		recently,with the development of science and technology,the issue of xxxxxx has been ==in the limelight==. it keeps my perspective that xxxx.\n\n​	第二段：原因总起句+具体原因\n\n​		it is superficially a simple phenomenon,when object==ed== to analysis,it has fundamental reasons. \n\n\n\n<details><summary>First and foremost</summary>\nTo begin with，\nIn the first place，\nInitially，\nAt first，\nFirstly and most importantly，\nTo start with，\nInitially speaking，\nThe first point to consider</deatiles>\n\n\n<details><summary>what\'s more</summary>\n- Furthermore，\n- Moreover，\n- Additionally，\n- Besides，\n- In addition，\n- Also，\n- Not only that，\n- To add to that，\n- Furthermore,let me also mention，\n- On top of that\n</deatiles>\n\n\n\n\n<details><summary>ultimately</summary>Eventually，\n  Finally，\n  In the end，\n  At last</deatiles>\n\n\n\n​	第三段：总结+措施+口号\n\n​		to sum up，There is no excuse for people to divert their attention from  xxxx，措施+口号（自己的观点）\n\n（so under no account people could divert attention for）\n\n\n\n', '四级作文', 18, 'http://rty1o2x0f.hn-bkt.clouddn.com/2023/05/06/86f54828eb9d44fc870d7c7afd05bd7d.png', '1', '0', 91, '0', 1, '2023-05-06 13:15:40', 1, '2023-05-06 13:15:40', 0);
INSERT INTO `sg_article` (`id`, `title`, `content`, `summary`, `category_id`, `thumbnail`, `is_top`, `status`, `view_count`, `is_comment`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (11, 'Linux笔记', '# Linux基础命令\n\n\n\n## Linux的目录结构\n\n![image-20221027214128453](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027214128.png)\n\n- `/`，根目录是最顶级的目录了\n- Linux只有一个顶级目录：`/`\n- 路径描述的层次关系同样适用`/`来表示\n- /home/itheima/a.txt，表示根目录下的home文件夹内有itheima文件夹，内有a.txt\n\n\n\n## ls命令\n\n功能：列出文件夹信息\n\n语法：`ls [-l -h -a] [参数]`\n\n- 参数：被查看的文件夹，不提供参数，表示查看当前工作目录\n- -l，以列表形式查看\n- -h，配合-l，以更加人性化的方式显示文件大小\n- -a，显示隐藏文件\n\n\n\n### 隐藏文件、文件夹\n\n在Linux中以`.`开头的，均是隐藏的。\n\n默认不显示出来，需要`-a`选项才可查看到。\n\n\n\n## pwd命令\n\n功能：展示当前工作目录\n\n语法：`pwd`\n\n\n\n## cd命令\n\n功能：切换工作目录\n\n语法：`cd [目标目录]`\n\n参数：目标目录，要切换去的地方，不提供默认切换到`当前登录用户HOME目录`\n\n\n\n## HOME目录\n\n每一个用户在Linux系统中都有自己的专属工作目录，称之为HOME目录。\n\n- 普通用户的HOME目录，默认在：`/home/用户名`\n\n- root用户的HOME目录，在：`/root`\n\n\n\nFinalShell登陆终端后，默认的工作目录就是用户的HOME目录\n\n\n\n## 相对路径、绝对路径\n\n- 相对路径，==非==`/`开头的称之为相对路径\n\n  相对路径表示以`当前目录`作为起点，去描述路径，如`test/a.txt`，表示当前工作目录内的test文件夹内的a.txt文件\n\n- 绝对路径，==以==`/`开头的称之为绝对路径\n\n  绝对路径从`根`开始描述路径\n\n\n\n## 特殊路径符\n\n- `.`，表示当前，比如./a.txt，表示当前文件夹内的`a.txt`文件\n- `..`，表示上级目录，比如`../`表示上级目录，`../../`表示上级的上级目录\n- `~`，表示用户的HOME目录，比如`cd ~`，即可切回用户HOME目录\n\n\n\n## mkdir命令\n\n功能：创建文件夹\n\n语法：`mkdir [-p] 参数`\n\n- 参数：被创建文件夹的路径\n- 选项：-p，可选，表示创建前置路径\n\n\n\n## touch命令\n\n功能：创建文件\n\n语法：`touch 参数`\n\n- 参数：被创建的文件路径\n\n\n\n## cat命令\n\n功能：查看文件内容\n\n语法：`cat 参数`\n\n- 参数：被查看的文件路径\n\n\n\n## more命令\n\n功能：查看文件，可以支持翻页查看\n\n语法：`more 参数`\n\n- 参数：被查看的文件路径\n- 在查看过程中：\n  - `空格`键翻页\n  - `q`退出查看\n\n\n\n## cp命令\n\n功能：复制文件、文件夹\n\n语法：`cp [-r] 参数1 参数2`\n\n- 参数1，被复制的\n- 参数2，要复制去的地方\n- 选项：-r，可选，==复制文件夹使用==\n\n示例：\n\n- cp a.txt b.txt，复制当前目录下a.txt为b.txt\n- cp a.txt test/，复制当前目录a.txt到test文件夹内\n- cp -r test test2，复制文件夹test到当前文件夹内为test2存在\n\n\n\n## mv命令\n\n功能：移动文件、文件夹\n\n语法：`mv 参数1 参数2`\n\n- 参数1：被移动的\n- 参数2：要移动去的地方，参数2如果不存在，则会进行改名\n\n\n\n## rm命令\n\n功能：删除文件、文件夹\n\n语法：`rm [-r -f] 参数...参数`\n\n- 参数：支持多个，每一个表示被删除的，空格进行分隔\n- 选项：-r，删除文件夹使用\n- 选项：-f，强制删除，不会给出确认提示，一般root用户会用到\n\n\n\n> rm命令很危险，一定要注意，特别是切换到root用户的时候。\n\n\n\n## which命令\n\n功能：查看命令的程序本体文件路径\n\n语法：`which 参数`\n\n- 参数：被查看的命令\n\n\n\n## find命令\n\n功能：搜索文件\n\n语法1按文件名搜索：`find 路径 -name 参数`\n\n- 路径，搜索的起始路径\n- 参数，搜索的关键字，支持通配符*， 比如：`*`test表示搜索任意以test结尾的文件\n\n\n\n## grep命令\n\n功能：过滤关键字\n\n语法：`grep [-n] 关键字 文件路径`\n\n- 选项-n，可选，表示在结果中显示匹配的行的行号。\n- 参数，关键字，必填，表示过滤的关键字，带有空格或其它特殊符号，建议使用””将关键字包围起来\n- 参数，文件路径，必填，表示要过滤内容的文件路径，可作为内容输入端口\n\n\n\n> 参数文件路径，可以作为管道符的输入\n\n\n\n## wc命令\n\n功能：统计\n\n语法：`wc [-c -m -l -w] 文件路径`\n\n- 选项，-c，统计bytes数量\n- 选项，-m，统计字符数量\n- 选项，-l，统计行数\n- 选项，-w，统计单词数量\n- 参数，文件路径，被统计的文件，可作为内容输入端口\n\n\n\n> 参数文件路径，可作为管道符的输入\n\n\n\n## 管道符|\n\n写法：`|`\n\n功能：将符号左边的结果，作为符号右边的输入\n\n示例：\n\n`cat a.txt | grep itheima`，将cat a.txt的结果，作为grep命令的输入，用来过滤`itheima`关键字\n\n\n\n可以支持嵌套：\n\n`cat a.txt | grep itheima | grep itcast`\n\n\n\n## echo命令\n\n功能：输出内容\n\n语法：`echo 参数`\n\n- 参数：被输出的内容\n\n\n\n## `反引号\n\n功能：被两个反引号包围的内容，会作为命令执行\n\n示例：\n\n- echo \\`pwd\\`，会输出当前工作目录\n\n\n\n## tail命令\n\n功能：查看文件尾部内容\n\n语法：`tail [-f] 参数`\n\n- 参数：被查看的文件\n- 选项：-f，持续跟踪文件修改\n\n\n\n## head命令\n\n功能：查看文件头部内容\n\n语法：`head [-n] 参数`\n\n- 参数：被查看的文件\n- 选项：-n，查看的行数\n\n\n\n## 重定向符\n\n功能：将符号左边的结果，输出到右边指定的文件中去\n\n- `>`，表示覆盖输出\n- `>>`，表示追加输出\n\n\n\n## vi编辑器\n\n### 命令模式快捷键\n\n![image-20221027215841573](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027215841.png)\n\n![image-20221027215846581](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027215846.png)\n\n![image-20221027215849668](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027215849.png)\n\n### 底线命令快捷键\n\n![image-20221027215858967](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027215858.png)\n\n\n\n## 命令的选项\n\n我们学习的一系列Linux命令，它们所拥有的选项都是非常多的。\n\n比如，简单的ls命令就有：-a -A -b -c -C -d -D -f -F -g -G -h -H -i -I -k -l -L -m -n -N -o -p -q -Q -r-R -s -S -t -T -u -U -v -w -x -X -1等选项，可以发现选项是极其多的。\n\n课程中， 并不会将全部的选项都进行讲解，否则，一个ls命令就可能讲解2小时之久。\n\n课程中，会对常见的选项进行讲解， 足够满足绝大多数的学习、工作场景。\n\n\n\n### 查看命令的帮助\n\n可以通过：`命令 --help`查看命令的帮助手册\n\n![image-20221027220005610](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027220005.png)\n\n### 查看命令的详细手册\n\n可以通过：`man 命令`查看某命令的详细手册\n\n![image-20221027220009949](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027220010.png)\n\n\n\n\n\n# Linux常用操作\n\n## 软件安装\n\n- CentOS系统使用：\n  - yum [install remove search] [-y] 软件名称\n    - install 安装\n    - remove 卸载\n    - search 搜索\n    - -y，自动确认\n- Ubuntu系统使用\n  - apt [install remove search] [-y] 软件名称\n    - install 安装\n    - remove 卸载\n    - search 搜索\n    - -y，自动确认\n\n> yum 和 apt 均需要root权限\n\n\n\n## systemctl\n\n功能：控制系统服务的启动关闭等\n\n语法：`systemctl start | stop | restart | disable | enable | status 服务名`\n\n- start，启动\n- stop，停止\n- status，查看状态\n- disable，关闭开机自启\n- enable，开启开机自启\n- restart，重启\n\n\n\n## 软链接\n\n功能：创建文件、文件夹软链接（快捷方式）\n\n语法：`ln -s 参数1 参数2`\n\n- 参数1：被链接的\n- 参数2：要链接去的地方（快捷方式的名称和存放位置）\n\n\n\n## 日期\n\n语法：`date [-d] [+格式化字符串]`\n\n- -d 按照给定的字符串显示日期，一般用于日期计算\n\n- 格式化字符串：通过特定的字符串标记，来控制显示的日期格式\n  - %Y   年%y   年份后两位数字 (00..99)\n  - %m   月份 (01..12)\n  - %d   日 (01..31)\n  - %H   小时 (00..23)\n  - %M   分钟 (00..59)\n  - %S   秒 (00..60)\n  - %s   自 1970-01-01 00:00:00 UTC 到现在的秒数\n\n\n\n示例：\n\n- 按照2022-01-01的格式显示日期\n\n  ![image-20221027220514640](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027220514.png)\n\n- 按照2022-01-01 10:00:00的格式显示日期\n\n  ![image-20221027220525625](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027220525.png)\n\n- -d选项日期计算\n\n  ![image-20221027220429831](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027220429.png)\n\n  - 支持的时间标记为：\n\n    ![image-20221027220449312](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027220449.png)\n\n\n\n\n\n## 时区\n\n修改时区为中国时区\n\n![image-20221027220554654](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027220554.png)\n\n\n\n## ntp\n\n功能：同步时间\n\n安装：`yum install -y ntp`\n\n启动管理：`systemctl start | stop | restart | status | disable | enable ntpd`\n\n\n\n手动校准时间：`ntpdate -u ntp.aliyun.com`\n\n\n\n## ip地址\n\n格式：a.b.c.d\n\n- abcd为0~255的数字\n\n\n\n特殊IP：\n\n- 127.0.0.1，表示本机\n- 0.0.0.0\n  - 可以表示本机\n  - 也可以表示任意IP（看使用场景）\n\n\n\n查看ip：`ifconfig`\n\n\n\n## 主机名\n\n功能：Linux系统的名称\n\n查看：`hostname`\n\n设置：`hostnamectl set-hostname 主机名`\n\n\n\n## 配置VMware固定IP\n\n1. 修改VMware网络，参阅PPT，图太多\n\n2. 设置Linux内部固定IP\n\n   修改文件：`/etc/sysconfig/network-scripts/ifcfg-ens33`\n\n   示例文件内容：\n\n   ```shell\n   TYPE=\"Ethernet\"\n   PROXY_METHOD=\"none\"\n   BROWSER_ONLY=\"no\"\n   BOOTPROTO=\"static\"			# 改为static，固定IP\n   DEFROUTE=\"yes\"\n   IPV4_FAILURE_FATAL=\"no\"\n   IPV6INIT=\"yes\"\n   IPV6_AUTOCONF=\"yes\"\n   IPV6_DEFROUTE=\"yes\"\n   IPV6_FAILURE_FATAL=\"no\"\n   IPV6_ADDR_GEN_MODE=\"stable-privacy\"\n   NAME=\"ens33\"\n   UUID=\"1b0011cb-0d2e-4eaa-8a11-af7d50ebc876\"\n   DEVICE=\"ens33\"\n   ONBOOT=\"yes\"\n   IPADDR=\"192.168.88.131\"		# IP地址，自己设置，要匹配网络范围\n   NETMASK=\"255.255.255.0\"		# 子网掩码，固定写法255.255.255.0\n   GATEWAY=\"192.168.88.2\"		# 网关，要和VMware中配置的一致\n   DNS1=\"192.168.88.2\"			# DNS1服务器，和网关一致即可\n   ```\n\n\n\n## ps命令\n\n功能：查看进程信息\n\n语法：`ps -ef`，查看全部进程信息，可以搭配grep做过滤：`ps -ef | grep xxx`\n\n\n\n## kill命令\n\n![image-20221027221303037](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221303.png)\n\n\n\n## nmap命令\n\n![image-20221027221241123](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221241.png)\n\n\n\n## netstat命令\n\n功能：查看端口占用\n\n用法：`netstat -anp | grep xxx`\n\n\n\n## ping命令\n\n测试网络是否联通\n\n语法：`ping [-c num] 参数`\n\n![image-20221027221129782](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221129.png)\n\n\n\n## wget命令\n\n![image-20221027221148964](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221149.png)\n\n## curl命令\n\n![image-20221027221201079](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221201.png)\n\n![image-20221027221210518](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221210.png)\n\n\n\n## top命令\n\n功能：查看主机运行状态\n\n语法：`top`，查看基础信息\n\n\n\n可用选项：\n\n![image-20221027221340729](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221340.png)\n\n\n\n交互式模式中，可用快捷键：\n\n![image-20221027221354137](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221354.png)\n\n\n\n## df命令\n\n查看磁盘占用\n\n![image-20221027221413787](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221413.png)\n\n\n\n## iostat命令\n\n查看CPU、磁盘的相关信息\n\n![image-20221027221439990](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221440.png)\n\n![image-20221027221514237](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221514.png)\n\n\n\n## sar命令\n\n查看网络统计\n\n![image-20221027221545822](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221545.png)\n\n\n\n## 环境变量\n\n- 临时设置：export 变量名=变量值\n- 永久设置：\n  - 针对用户，设置用户HOME目录内：`.bashrc`文件\n  - 针对全局，设置`/etc/profile`\n\n\n\n### PATH变量\n\n记录了执行程序的搜索路径\n\n可以将自定义路径加入PATH内，实现自定义命令在任意地方均可执行的效果\n\n\n\n## $符号\n\n可以取出指定的环境变量的值\n\n语法：`$变量名`\n\n示例：\n\n`echo $PATH`，输出PATH环境变量的值\n\n`echo ${PATH}ABC`，输出PATH环境变量的值以及ABC\n\n如果变量名和其它内容混淆在一起，可以使用${}\n\n\n\n\n\n## 压缩解压\n\n### 压缩\n\n`tar -zcvf 压缩包 被压缩1...被压缩2...被压缩N`\n\n- -z表示使用gzip，可以不写\n\n\n\n`zip [-r] 参数1 参数2 参数N`\n\n![image-20221027221906247](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221906.png)\n\n\n\n### 解压\n\n`tar -zxvf 被解压的文件 -C 要解压去的地方`\n\n- -z表示使用gzip，可以省略\n- -C，可以省略，指定要解压去的地方，不写解压到当前目录\n\n\n\n\n\n\n\n`unzip [-d] 参数`\n\n![image-20221027221939899](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027221939.png)\n\n\n\n\n\n## su命令\n\n切换用户\n\n语法：`su [-] [用户]`\n\n![image-20221027222021619](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222021.png)\n\n\n\n## sudo命令\n\n![image-20221027222035337](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222035.png)\n\n\n\n比如：\n\n```shell\nitheima ALL=(ALL)       NOPASSWD: ALL\n```\n\n在visudo内配置如上内容，可以让itheima用户，无需密码直接使用`sudo`\n\n\n\n## chmod命令\n\n修改文件、文件夹权限\n\n\n\n语法：`chmod [-R] 权限 参数`\n\n- 权限，要设置的权限，比如755，表示：`rwxr-xr-x`\n\n  ![image-20221027222157276](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222157.png)\n\n- 参数，被修改的文件、文件夹\n\n- 选项-R，设置文件夹和其内部全部内容一样生效\n\n\n\n## chown命令\n\n修改文件、文件夹所属用户、组\n\n\n\n语法：`chown [-R] [用户][:][用户组] 文件或文件夹`\n\n![image-20221027222326192](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222326.png)\n\n\n\n## 用户组管理\n\n![image-20221027222354498](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222354.png)\n\n\n\n## 用户管理\n\n![image-20221027222407618](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222407.png)\n\n\n\n## genenv命令\n\n- `getenv group`，查看系统全部的用户组\n\n  ![image-20221027222446514](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222446.png)\n\n- `getenv passwd`，查看系统全部的用户\n\n  ![image-20221027222512274](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027222512.png)\n\n\n\n## env命令\n\n查看系统全部的环境变量\n\n语法：`env`\n\n\n\nnetwork:\n    ethernets:\n         enp0s5: \n            dhcp4: no\n            addresses: [192.168.10.11/24]\n            gateway4: 10.211.55.1\n            nameservers:\n                addresses: [114.114.114.114, 8.8.8.8]\n    version: 2\n\n\n\nenp0s5: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500\n        inet 10.211.55.9  netmask 255.255.255.0  broadcast 10.211.55.255\n\n0.0.0.0         10.211.55.1     0.0.0.0         UG    100    0        0 enp0s5\n\n\n\n\n\nnetwork:  version: 2  renderer: NetworkManager  ethernets:    enp0s5:   # 网卡名称      dhcp4: no     # 关闭dhcp      dhcp6: no      addresses: [10.211.55.10/24]  # 静态ip      gateway4: 10.211.55.1     # 网关      nameservers:        addresses: [8.8.8.8, 114.114.114.114] #dns\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', NULL, 19, 'http://rty1o2x0f.hn-bkt.clouddn.com/2023/05/14/059b0651524f4d54b49a9a55f18bc19e.png', '1', '0', 16, '0', 1, '2023-05-14 17:02:17', 1, '2023-05-14 17:02:17', 0);
COMMIT;

-- ----------------------------
-- Table structure for sg_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `sg_article_tag`;
CREATE TABLE `sg_article_tag` (
  `article_id` bigint NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `tag_id` bigint NOT NULL DEFAULT '0' COMMENT '标签id',
  PRIMARY KEY (`article_id`,`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章标签关联表';

-- ----------------------------
-- Records of sg_article_tag
-- ----------------------------
BEGIN;
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (1, 4);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (2, 1);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (2, 4);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (3, 4);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (3, 5);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (8, 1);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (8, 4);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (8, 5);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (9, 11);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (10, 11);
INSERT INTO `sg_article_tag` (`article_id`, `tag_id`) VALUES (11, 12);
COMMIT;

-- ----------------------------
-- Table structure for sg_category
-- ----------------------------
DROP TABLE IF EXISTS `sg_category`;
CREATE TABLE `sg_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '分类名',
  `pid` bigint DEFAULT '-1' COMMENT '父分类id，如果没有父分类为-1',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `status` char(1) DEFAULT '0' COMMENT '状态0:正常,1禁用',
  `create_by` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分类表';

-- ----------------------------
-- Records of sg_category
-- ----------------------------
BEGIN;
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (1, 'java', -1, 'wsd', '0', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (2, 'PHP', -1, 'wsd', '0', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (15, 'js', -1, 'javascript', '1', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (16, '11', -1, '11', '0', 1, '2023-05-06 10:33:30', 1, '2023-05-06 10:33:30', 1);
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (17, '22', -1, '22', '0', 1, '2023-05-06 10:33:53', 1, '2023-05-06 10:33:53', 1);
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (18, '英语', -1, '英语', '0', 1, '2023-05-06 13:04:39', 1, '2023-05-06 13:04:39', 0);
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (19, '计算机', -1, NULL, '0', 1, '2023-05-14 17:00:35', 1, '2023-05-14 17:00:35', 0);
COMMIT;

-- ----------------------------
-- Table structure for sg_comment
-- ----------------------------
DROP TABLE IF EXISTS `sg_comment`;
CREATE TABLE `sg_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` char(1) DEFAULT '0' COMMENT '评论类型（0代表文章评论，1代表友链评论）',
  `article_id` bigint DEFAULT NULL COMMENT '文章id',
  `root_id` bigint DEFAULT '-1' COMMENT '根评论id',
  `content` varchar(512) DEFAULT NULL COMMENT '评论内容',
  `to_comment_user_id` bigint DEFAULT '-1' COMMENT '所回复的目标评论的userid',
  `to_comment_id` bigint DEFAULT '-1' COMMENT '回复目标评论id',
  `create_by` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1657922633866133506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='评论表';

-- ----------------------------
-- Records of sg_comment
-- ----------------------------
BEGIN;
INSERT INTO `sg_comment` (`id`, `type`, `article_id`, `root_id`, `content`, `to_comment_user_id`, `to_comment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (1657633266689769473, '0', 10, -1, '1', -1, -1, 1, '2023-05-14 14:25:43', 1, '2023-05-14 14:25:43', 0);
INSERT INTO `sg_comment` (`id`, `type`, `article_id`, `root_id`, `content`, `to_comment_user_id`, `to_comment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (1657633278870028289, '0', 10, 1657633266689769473, '2', 1, 1657633266689769473, 1, '2023-05-14 14:25:46', 1, '2023-05-14 14:25:46', 0);
INSERT INTO `sg_comment` (`id`, `type`, `article_id`, `root_id`, `content`, `to_comment_user_id`, `to_comment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (1657636309103673346, '0', 10, 1657633266689769473, '2', 1, 1657633278870028289, 14787164048668, '2023-05-14 14:37:48', 14787164048668, '2023-05-14 14:37:48', 0);
INSERT INTO `sg_comment` (`id`, `type`, `article_id`, `root_id`, `content`, `to_comment_user_id`, `to_comment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (1657636338312806401, '0', 10, 1657633266689769473, '3', 14787164048668, 1657636309103673346, 14787164048668, '2023-05-14 14:37:55', 14787164048668, '2023-05-14 14:37:55', 0);
INSERT INTO `sg_comment` (`id`, `type`, `article_id`, `root_id`, `content`, `to_comment_user_id`, `to_comment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (1657922633866133505, '0', 8, -1, '11', -1, -1, 1, '2023-05-15 09:35:33', 1, '2023-05-15 09:35:33', 0);
COMMIT;

-- ----------------------------
-- Table structure for sg_link
-- ----------------------------
DROP TABLE IF EXISTS `sg_link`;
CREATE TABLE `sg_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL COMMENT '网站地址',
  `status` char(1) DEFAULT '2' COMMENT '审核状态 (0代表审核通过，1代表审核未通过，2代表未审核)',
  `create_by` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='友链';

-- ----------------------------
-- Records of sg_link
-- ----------------------------
BEGIN;
INSERT INTO `sg_link` (`id`, `name`, `logo`, `description`, `address`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (5, 'jd1', 'https://www.jd.com/', 'dd', 'https://www.jd.com/', '2', 1, '2023-05-06 10:49:33', 1, '2023-05-06 10:49:33', 1);
INSERT INTO `sg_link` (`id`, `name`, `logo`, `description`, `address`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (6, 'jd122', 'https://www.jd.com/', 'dd', 'https://www.jd.com/', '2', 1, '2023-05-06 11:00:07', 1, '2023-05-06 11:00:07', 1);
INSERT INTO `sg_link` (`id`, `name`, `logo`, `description`, `address`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (8, 'jd1223344', 'https://www.jd.com/', 'dd', 'https://www.jd.com/', '2', 1, '2023-05-06 11:01:28', 1, '2023-05-06 11:01:28', 1);
INSERT INTO `sg_link` (`id`, `name`, `logo`, `description`, `address`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (9, 'jd12233445', 'https://www.jd.com/', 'dd', 'https://www.jd.com/', '2', 1, '2023-05-06 11:02:03', 1, '2023-05-06 11:02:03', 1);
INSERT INTO `sg_link` (`id`, `name`, `logo`, `description`, `address`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (10, 'jd122334456', 'https://www.jd.com/', 'dd', 'https://www.jd.com/', '2', 1, '2023-05-06 11:02:12', 1, '2023-05-06 11:02:12', 1);
COMMIT;

-- ----------------------------
-- Table structure for sg_tag
-- ----------------------------
DROP TABLE IF EXISTS `sg_tag`;
CREATE TABLE `sg_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '标签名',
  `create_by` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='标签';

-- ----------------------------
-- Records of sg_tag
-- ----------------------------
BEGIN;
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (1, 'Mybatis', NULL, NULL, NULL, '2023-01-11 09:20:50', 0, 'weqwe');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (2, 'asdas', NULL, '2023-01-11 09:20:55', NULL, '2023-01-11 09:20:55', 1, 'weqw');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (3, 'weqw', NULL, '2023-01-11 09:21:07', NULL, '2023-01-11 09:21:07', 1, 'qweqwe');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (4, 'Java', NULL, '2023-01-13 15:22:43', NULL, '2023-01-13 15:22:43', 0, 'sdad');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (5, 'WAD', NULL, '2023-01-13 15:22:47', NULL, '2023-01-13 15:22:47', 0, 'ASDAD');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (6, 'aaa', 1, '2023-05-04 17:18:20', 1, '2023-05-04 17:18:20', 1, 'aaa');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (7, 'aaa', 1, '2023-05-04 17:18:30', 1, '2023-05-04 17:18:30', 1, 'aaa');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (8, 'aaa', 1, '2023-05-04 17:38:42', 1, '2023-05-04 17:38:42', 1, 'aaaa');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (9, 'aa1', 1, '2023-05-04 18:06:52', 1, '2023-05-04 18:08:05', 0, 'aaa');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (10, '233', 1, '2023-05-05 17:41:06', 1, '2023-05-05 17:41:06', 0, '333');
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (11, '写作', 1, '2023-05-06 13:05:05', 1, '2023-05-06 13:05:05', 0, NULL);
INSERT INTO `sg_tag` (`id`, `name`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`) VALUES (12, 'linux', 1, '2023-05-14 17:01:01', 1, '2023-05-14 17:01:01', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  `del_flag` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2034 DEFAULT CHARSET=utf8mb3 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 'M', '0', '0', '', 'system', 0, '2023-01-02 10:46:19', 0, NULL, '系统管理目录', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 'C', '0', '0', 'system:user:list', 'user', 0, '2023-01-02 10:46:19', 1, '2023-03-31 15:47:58', '用户管理菜单', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 'C', '0', '0', 'system:role:list', 'peoples', 0, '2023-01-02 10:46:19', 0, NULL, '角色管理菜单', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 'C', '0', '0', 'system:menu:list', 'tree-table', 0, '2023-01-02 10:46:19', 0, NULL, '菜单管理菜单', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1001, '用户查询', 100, 1, '', '', 1, 'F', '0', '0', 'system:user:query', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1002, '用户新增', 100, 2, '', '', 1, 'F', '0', '0', 'system:user:add', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1003, '用户修改', 100, 3, '', '', 1, 'F', '0', '0', 'system:user:edit', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1004, '用户删除', 100, 4, '', '', 1, 'F', '0', '0', 'system:user:remove', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1005, '用户导出', 100, 5, '', '', 1, 'F', '0', '0', 'system:user:export', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1006, '用户导入', 100, 6, '', '', 1, 'F', '0', '0', 'system:user:import', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1007, '重置密码', 100, 7, '', '', 1, 'F', '0', '0', 'system:user:resetPwd', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1008, '角色查询', 101, 1, '', '', 1, 'F', '0', '0', 'system:role:query', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1009, '角色新增', 101, 2, '', '', 1, 'F', '0', '0', 'system:role:add', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1010, '角色修改', 101, 3, '', '', 1, 'F', '0', '0', 'system:role:edit', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1011, '角色删除', 101, 4, '', '', 1, 'F', '0', '0', 'system:role:remove', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1012, '角色导出', 101, 5, '', '', 1, 'F', '0', '0', 'system:role:export', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1013, '菜单查询', 102, 1, '', '', 1, 'F', '0', '0', 'system:menu:query', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1014, '菜单新增', 102, 2, '', '', 1, 'F', '0', '0', 'system:menu:add', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1015, '菜单修改', 102, 3, '', '', 1, 'F', '0', '0', 'system:menu:edit', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (1016, '菜单删除', 102, 4, '', '', 1, 'F', '0', '0', 'system:menu:remove', '#', 0, '2023-01-02 10:46:19', 0, NULL, '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2017, '内容管理', 0, 4, 'content', NULL, 1, 'M', '0', '0', NULL, 'table', NULL, '2023-01-08 02:44:38', 1, '2023-03-31 12:34:23', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2018, '分类管理', 2017, 1, 'category', 'content/category/index', 1, 'C', '0', '0', 'content:category:list', 'example', NULL, '2023-01-08 02:51:45', NULL, '2023-01-08 02:51:45', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2019, '文章管理', 2017, 0, 'article', 'content/article/index', 1, 'C', '0', '0', 'content:article:list', 'build', NULL, '2023-01-08 02:53:10', NULL, '2023-01-08 02:53:10', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2021, '标签管理', 2017, 6, 'tag', 'content/tag/index', 1, 'C', '0', '0', 'content:tag:index', 'button', NULL, '2023-01-08 02:55:37', NULL, '2023-01-08 02:55:50', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2022, '友链管理', 2017, 4, 'link', 'content/link/index', 1, 'C', '0', '0', 'content:link:list', '404', NULL, '2023-01-08 02:56:50', NULL, '2023-01-08 02:56:50', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2023, '写博文', 0, 0, 'write', 'content/article/write/index', 1, 'C', '0', '0', 'content:article:writer', 'build', NULL, '2023-01-08 03:39:58', 1, '2023-03-31 22:07:05', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2024, '友链新增', 2022, 0, '', NULL, 1, 'F', '0', '0', 'content:link:add', '#', NULL, '2023-01-16 07:59:17', NULL, '2023-01-16 07:59:17', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2025, '友链修改', 2022, 1, '', NULL, 1, 'F', '0', '0', 'content:link:edit', '#', NULL, '2023-01-16 07:59:44', NULL, '2023-01-16 07:59:44', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2026, '友链删除', 2022, 1, '', NULL, 1, 'F', '0', '0', 'content:link:remove', '#', NULL, '2023-01-16 08:00:05', NULL, '2023-01-16 08:00:05', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2027, '友链查询', 2022, 2, '', NULL, 1, 'F', '0', '0', 'content:link:query', '#', NULL, '2023-01-16 08:04:09', NULL, '2023-01-16 08:04:09', '', '0');
INSERT INTO `sys_menu` (`id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`) VALUES (2028, '导出分类', 2018, 1, '', NULL, 1, 'F', '0', '0', 'content:category:export', '#', NULL, '2023-01-21 07:06:59', NULL, '2023-01-21 07:06:59', '', '0');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `role_name`, `role_key`, `role_sort`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '超级管理员', 'admin', 1, '0', '0', 0, '2023-01-12 10:46:19', 0, NULL, '超级管理员');
INSERT INTO `sys_role` (`id`, `role_name`, `role_key`, `role_sort`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '普通角色', 'common', 2, '0', '0', 0, '2023-01-12 10:46:19', 0, '2023-01-01 22:32:58', '普通角色');
INSERT INTO `sys_role` (`id`, `role_name`, `role_key`, `role_sort`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (11, '嘎嘎嘎', 'aggag', 5, '0', '0', NULL, '2023-01-16 14:07:40', NULL, '2023-01-07 03:48:48', '嘎嘎嘎');
INSERT INTO `sys_role` (`id`, `role_name`, `role_key`, `role_sort`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (12, '友链审核员', 'link', 1, '0', '0', NULL, '2023-01-16 06:49:30', NULL, '2023-01-16 08:05:09', NULL);
INSERT INTO `sys_role` (`id`, `role_name`, `role_key`, `role_sort`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (13, 'yuehcu', 'admin', 1, '0', '1', NULL, NULL, NULL, NULL, 'yuechu');
INSERT INTO `sys_role` (`id`, `role_name`, `role_key`, `role_sort`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (14, '111', '111', 0, '1', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` (`id`, `role_name`, `role_key`, `role_sort`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (15, '22', '222', 0, '0', '0', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (0, 0);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 102);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1015);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1016);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2000);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 3);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 100);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 101);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 103);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 104);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 105);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 106);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 107);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 108);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 109);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 110);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 111);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 112);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 113);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 114);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 115);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 116);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 500);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 501);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1001);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1002);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1017);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1018);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1019);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1020);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1021);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1022);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1023);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1024);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1025);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1027);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1028);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1029);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1030);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1031);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1032);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1033);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1034);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1035);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1036);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1037);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1038);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1039);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1040);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1041);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1042);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1043);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1044);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1045);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1046);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1047);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1048);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1049);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1050);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1051);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1052);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1053);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1054);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1055);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1056);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1057);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1058);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1059);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 1060);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 2000);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 100);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 101);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 102);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 103);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 104);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 105);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 106);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 107);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 108);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 500);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 501);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1001);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1002);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1015);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1016);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1017);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1018);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1019);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1020);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1021);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1022);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1023);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1024);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1025);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1027);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1028);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1029);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1030);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1031);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1032);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1033);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1034);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1035);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1036);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1037);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1038);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1039);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1040);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1041);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1042);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1043);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1044);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 1045);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2000);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (11, 2014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (12, 2017);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (12, 2022);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (12, 2024);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (12, 2025);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (12, 2026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (12, 2027);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `nick_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `type` char(1) DEFAULT '0' COMMENT '用户类型：0代表普通用户，1代表管理员',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(32) DEFAULT NULL COMMENT '手机号',
  `sex` char(1) DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  `create_by` bigint DEFAULT NULL COMMENT '创建人的用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1657314733120430082 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `user_name`, `nick_name`, `password`, `type`, `status`, `email`, `phonenumber`, `sex`, `avatar`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (1, 'sg', 'ggggggg1111111', '$2a$10$Jnq31rRkNV3RNzXe0REsEOSKaYK8UgVZZqlNlNXqn.JeVcj2NdeZy', '1', '0', '23412332@qq.com', '18888888888', '0', 'http://rty1o2x0f.hn-bkt.clouddn.com/2023/05/15/89eaa7d682a843ec89d5d387ec3e4660.jpg', NULL, '2023-01-05 09:01:56', NULL, '2023-05-15 10:02:43', 0);
INSERT INTO `sys_user` (`id`, `user_name`, `nick_name`, `password`, `type`, `status`, `email`, `phonenumber`, `sex`, `avatar`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (3, 'sg3', 'weqe', '$2a$10$Jnq31rRkNV3RNzXe0REsEOSKaYK8UgVZZqlNlNXqn.JeVcj2NdeZy', '1', '0', NULL, NULL, '0', NULL, NULL, '2023-01-05 13:28:43', NULL, '2023-01-05 13:28:43', 0);
INSERT INTO `sys_user` (`id`, `user_name`, `nick_name`, `password`, `type`, `status`, `email`, `phonenumber`, `sex`, `avatar`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (4, 'sg2', 'dsadd', '$2a$10$Jnq31rRkNV3RNzXe0REsEOSKaYK8UgVZZqlNlNXqn.JeVcj2NdeZy', '1', '0', '23412332@qq.com', '19098790742', '0', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_user` (`id`, `user_name`, `nick_name`, `password`, `type`, `status`, `email`, `phonenumber`, `sex`, `avatar`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (5, 'sg2233', 'tteqe', '', '1', '0', NULL, '18246845873', '1', NULL, NULL, '2023-01-06 03:51:13', NULL, '2023-01-06 07:00:50', 0);
INSERT INTO `sys_user` (`id`, `user_name`, `nick_name`, `password`, `type`, `status`, `email`, `phonenumber`, `sex`, `avatar`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES (14787164048669, 'ccccc', 'cccc', '$2a$10$K/vssx.BjbWiYTT8oB/lu..Y4aTdM7OygBCeAYs0CMpu8AjCX2dhm', '0', '0', '111111111111@qq.com', NULL, '0', 'http://rty1o2x0f.hn-bkt.clouddn.com/2023/05/12/1b83b000c5b04ff999a8a0c6fab9f9bb.jpg', 1, '2023-05-05 21:48:39', NULL, '2023-05-12 20:54:39', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (2, 2);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (5, 2);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (6, 12);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

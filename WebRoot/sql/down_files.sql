/*--drop table down_files*/
CREATE TABLE down_files
(
 f_id      		int(11) NOT NULL auto_increment    
,f_uid        	int(11) 	DEFAULT '0' /*--用户ID*/
,f_mac        	varchar(50) DEFAULT  '' /*--MAC地址，用来识别不同电脑的下载任务*/
,f_pathLoc      varchar(255)DEFAULT '' 	/*--本地文件路径。*/
,f_pathSvr      varchar(255)DEFAULT '' 	/*--服务器文件地址。http://www.qq.com/QQ2014.exe*/
,f_lengthLoc    varchar(19) DEFAULT '0' /*--本地文件长度（已下载文件长度）*/
,f_lengthSvr    varchar(19) DEFAULT '0' /*--服务器文件长度*/
,f_complete     tinyint(1) 	DEFAULT '0' /*--是否已下载完成。*/
,f_percent		varchar(6)	DEFAULT '0'	/*--已下载进度。10%*/
,f_fdID			int(11) 	DEFAULT '0'	/*--文件夹ID，与down_folders.fd_id对应*/
,f_pidRoot		int(11) 	DEFAULT '0'	/*--文件夹根级ID*/
,f_pid			int(11) 	DEFAULT '0'	/*--父级文件夹ID*/
,PRIMARY KEY  (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

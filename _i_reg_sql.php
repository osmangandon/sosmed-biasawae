<?php
$yuk1 = "user";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
`kd` varchar(50) NOT NULL,
`usernamex` varchar(100) DEFAULT NULL,
`passwordx` varchar(50) DEFAULT NULL,
`nama` varchar(100) DEFAULT NULL,
`postdate` datetime DEFAULT NULL,
`email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");





$yuk1 = "user_chat";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
`kd` varchar(50) NOT NULL,
`untuk` varchar(50) DEFAULT NULL,
`isi` longtext,
`postdate` datetime DEFAULT NULL,
`dibaca` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");









$yuk1 = "user_event";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");








$yuk1 = "user_event_like";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");








$yuk1 = "user_event_msg";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `kd_user_event` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");









$yuk1 = "user_keahlian";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");






$yuk1 = "user_minat";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");











$yuk1 = "user_profil";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `filex_foto` varchar(255) DEFAULT NULL,
  `tmp_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `situs` varchar(255) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `hobi` varchar(100) DEFAULT NULL,
  `aktivitas` varchar(100) DEFAULT NULL,
  `makanan` varchar(100) DEFAULT NULL,
  `minuman` varchar(100) DEFAULT NULL,
  `musik` varchar(100) DEFAULT NULL,
  `film` varchar(100) DEFAULT NULL,
  `buku` varchar(100) DEFAULT NULL,
  `idola` varchar(100) DEFAULT NULL,
  `pend_akhir` varchar(100) DEFAULT NULL,
  `pend_thnlulus` varchar(4) DEFAULT NULL,
  `moto` varchar(255) DEFAULT NULL,
  `kata_mutiara` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");









$yuk1 = "user_status";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `status` longtext,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");










$yuk1 = "user_status_like";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");








$yuk1 = "user_status_msg";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `kd_user_status` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");











$yuk1 = "user_status_msg_dibaca";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `kd_msg` varchar(50) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");












$yuk1 = "user_teman";
$yuk1x = "$yuk1$yuk_kd";

mysql_query("CREATE TABLE $yuk1x ( 
  `kd` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `konek` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM;");

mysql_query("ALTER TABLE $yuk1x ADD PRIMARY KEY (kd);");

?>
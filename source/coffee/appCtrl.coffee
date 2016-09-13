angular.module 'app'
  .controller 'appCtrl', ['$http', ($http)->
    vm = @
    vm.data = []
    vm.sort = 'Nopower'
    vm.zipNames = ks
    vm.kind= "park"
    vm.typeChange = (types) ->
      if types == "NoWater"
        vm.type = "NoWater"
      if types == "Nopower"
        vm.type = '停電'
    vm.type = [
          '停電',
          '停水',
          '暴雨積水'
      ]
    vm.typeNow = ''
    vm.park = park
    vm.parks=''
    vm.zipnamePark=''
    $http
      method: 'GET',
      url: '//gonsakon.github.io/HolidayAPI/typhon.json'
    .then (response)->
      origigndata = response.data
      thisdata =[]
      origigndata.forEach (d) ->
        if d.InformDesc_ == '停電' or d.InformDesc_ == '暴雨積水(一)' or d.InformDesc_ == '暴雨積水(二)' or d.InformDesc_ == '停水' or d.InformDesc_ == '地下道、路面積水(一)' or d.InformDesc_ == '地下道、路面積水(二)'
          if d.Status_ != "5"
            thisdata.push d
      vm.data = thisdata
    , (response)->
      console.log 'error'
    return
  ]
ks = [
  {
    cwbid: '6400600'
    cwbtownid: '64000'
    county: '高雄市'
    name: '新興區'
    zip: '800'
  }
  {
    cwbid: '6400700'
    cwbtownid: '64000'
    county: '高雄市'
    name: '前金區'
    zip: '801'
  }
  {
    cwbid: '6400800'
    cwbtownid: '64000'
    county: '高雄市'
    name: '苓雅區'
    zip: '802'
  }
  {
    cwbid: '6400100'
    cwbtownid: '64000'
    county: '高雄市'
    name: '鹽埕區'
    zip: '803'
  }
  {
    cwbid: '6400200'
    cwbtownid: '64000'
    county: '高雄市'
    name: '鼓山區'
    zip: '804'
  }
  {
    cwbid: '6401000'
    cwbtownid: '64000'
    county: '高雄市'
    name: '旗津區'
    zip: '805'
  }
  {
    cwbid: '6400900'
    cwbtownid: '64000'
    county: '高雄市'
    name: '前鎮區'
    zip: '806'
  }
  {
    cwbid: '6400500'
    cwbtownid: '64000'
    county: '高雄市'
    name: '三民區'
    zip: '807'
  }
  {
    cwbid: '6400400'
    cwbtownid: '64000'
    county: '高雄市'
    name: '楠梓區'
    zip: '811'
  }
  {
    cwbid: '6401100'
    cwbtownid: '64000'
    county: '高雄市'
    name: '小港區'
    zip: '812'
  }
  {
    cwbid: '6400300'
    cwbtownid: '64000'
    county: '高雄市'
    name: '左營區'
    zip: '813'
  }
  {
    cwbid: '6400017'
    cwbtownid: '64000'
    county: '高雄市'
    name: '仁武區'
    zip: '814'
  }
  {
    cwbid: '6400016'
    cwbtownid: '64000'
    county: '高雄市'
    name: '大社區'
    zip: '815'
  }
  {
    cwbid: '6400019'
    cwbtownid: '64000'
    county: '高雄市'
    name: '岡山區'
    zip: '820'
  }
  {
    cwbid: '6400024'
    cwbtownid: '64000'
    county: '高雄市'
    name: '路竹區'
    zip: '821'
  }
  {
    cwbid: '6400023'
    cwbtownid: '64000'
    county: '高雄市'
    name: '阿蓮區'
    zip: '822'
  }
  {
    cwbid: '6400022'
    cwbtownid: '64000'
    county: '高雄市'
    name: '田寮區'
    zip: '823'
  }
  {
    cwbid: '6400021'
    cwbtownid: '64000'
    county: '高雄市'
    name: '燕巢區'
    zip: '824'
  }
  {
    cwbid: '6400020'
    cwbtownid: '64000'
    county: '高雄市'
    name: '橋頭區'
    zip: '825'
  }
  {
    cwbid: '6400029'
    cwbtownid: '64000'
    county: '高雄市'
    name: '梓官區'
    zip: '826'
  }
  {
    cwbid: '6400028'
    cwbtownid: '64000'
    county: '高雄市'
    name: '彌陀區'
    zip: '827'
  }
  {
    cwbid: '6400027'
    cwbtownid: '64000'
    county: '高雄市'
    name: '永安區'
    zip: '828'
  }
  {
    cwbid: '6400025'
    cwbtownid: '64000'
    county: '高雄市'
    name: '湖內區'
    zip: '829'
  }
  {
    cwbid: '6400012'
    cwbtownid: '64000'
    county: '高雄市'
    name: '鳳山區'
    zip: '830'
  }
  {
    cwbid: '6400014'
    cwbtownid: '64000'
    county: '高雄市'
    name: '大寮區'
    zip: '831'
  }
  {
    cwbid: '6400013'
    cwbtownid: '64000'
    county: '高雄市'
    name: '林園區'
    zip: '832'
  }
  {
    cwbid: '6400018'
    cwbtownid: '64000'
    county: '高雄市'
    name: '鳥松區'
    zip: '833'
  }
  {
    cwbid: '6400015'
    cwbtownid: '64000'
    county: '高雄市'
    name: '大樹區'
    zip: '840'
  }
  {
    cwbid: '6400030'
    cwbtownid: '64000'
    county: '高雄市'
    name: '旗山區'
    zip: '842'
  }
  {
    cwbid: '6400031'
    cwbtownid: '64000'
    county: '高雄市'
    name: '美濃區'
    zip: '843'
  }
  {
    cwbid: '6400032'
    cwbtownid: '64000'
    county: '高雄市'
    name: '六龜區'
    zip: '844'
  }
  {
    cwbid: '6400035'
    cwbtownid: '64000'
    county: '高雄市'
    name: '內門區'
    zip: '845'
  }
  {
    cwbid: '6400034'
    cwbtownid: '64000'
    county: '高雄市'
    name: '杉林區'
    zip: '846'
  }
  {
    cwbid: '6400033'
    cwbtownid: '64000'
    county: '高雄市'
    name: '甲仙區'
    zip: '847'
  }
  {
    cwbid: '6400037'
    cwbtownid: '64000'
    county: '高雄市'
    name: '桃源區'
    zip: '848'
  }
  {
    cwbid: '6400038'
    cwbtownid: '64000'
    county: '高雄市'
    name: '那瑪夏區'
    zip: '849'
  }
  {
    cwbid: '6400036'
    cwbtownid: '64000'
    county: '高雄市'
    name: '茂林區'
    zip: '851'
  }
  {
    cwbid: '6400026'
    cwbtownid: '64000'
    county: '高雄市'
    name: '茄萣區'
    zip: '852'
  }
]
park = 
[
  {
    "area": "苓雅區",
    "name": "高雄啟智學校",
    "number": 20,
    "location": "憲政路233巷2號",
    "tel": "2235940*136"
  },
  {
    "area": "苓雅區",
    "name": "五權國小",
    "number": 20,
    "location": "三多二路100號",
    "tel": "7511074*33"
  },
  {
    "area": "苓雅區",
    "name": "成功國小",
    "number": 20,
    "location": "華新街59號",
    "tel": "3341882*32"
  },
  {
    "area": "苓雅區",
    "name": "凱旋國小",
    "number": 20,
    "location": "憲政路235號",
    "tel": "2235181*814"
  },
  {
    "area": "苓雅區",
    "name": "福東國小",
    "number": 30,
    "location": "福德三路96號",
    "tel": "7510048*135、2623513"
  },
  {
    "area": "苓雅區",
    "name": "中正國小",
    "number": 40,
    "location": "輔仁路100號",
    "tel": "7225936*711"
  },
  {
    "area": "苓雅區",
    "name": "苓洲國小",
    "number": 50,
    "location": "四維四路61號",
    "tel": "3351804*774、777"
  },
  {
    "area": "苓雅區",
    "name": "福康國小",
    "number": 30,
    "location": "漢陽街17號",
    "tel": 7227134
  },
  {
    "area": "苓雅區",
    "name": "中正運動場",
    "number": 150,
    "location": "中正一路99號",
    "tel": 7229449
  },
  {
    "area": "苓雅區",
    "name": "中正高中",
    "number": 50,
    "location": "中正一路8號",
    "tel": "7491992*8888"
  },
  {
    "area": "苓雅區",
    "name": "國際商工",
    "number": 75,
    "location": "三多二路84號",
    "tel": "7228665*308"
  },
  {
    "area": "苓雅區",
    "name": "三信家商",
    "number": 40,
    "location": "三多一路186號",
    "tel": "7517171*1101、1401、1115、1900"
  },
  {
    "area": "苓雅區",
    "name": "道明中學",
    "number": 50,
    "location": "建國一路354號",
    "tel": 9656441
  },
  {
    "area": "苓雅區",
    "name": "大仁國中",
    "number": 38,
    "location": "建國一路148號",
    "tel": "7114302*38"
  },
  {
    "area": "苓雅區",
    "name": "英明國中",
    "number": 10,
    "location": "英明路147號",
    "tel": "7150949*9"
  },
  {
    "area": "苓雅區",
    "name": "四維國小",
    "number": 10,
    "location": "青年一路103號",
    "tel": "3348199*34"
  },
  {
    "area": "苓雅區",
    "name": "五福國中",
    "number": 20,
    "location": "五福一路12號",
    "tel": "2223036*39"
  },
  {
    "area": "前鎮區",
    "name": "中正高工",
    "number": 60,
    "location": "光華二路80號",
    "tel": "7232301*291"
  },
  {
    "area": "前鎮區",
    "name": "瑞祥高中",
    "number": 50,
    "location": "班超路63號",
    "tel": 8110984
  },
  {
    "area": "前鎮區",
    "name": "成功啟智學校",
    "number": 42,
    "location": "復興三路3號",
    "tel": "3304624*172"
  },
  {
    "area": "前鎮區",
    "name": "獅甲國中",
    "number": 25,
    "location": "中山三路43號",
    "tel": 986618980
  },
  {
    "area": "前鎮區",
    "name": "興仁國中",
    "number": 50,
    "location": "德昌路345號",
    "tel": "8218110*77"
  },
  {
    "area": "前鎮區",
    "name": "光華國中",
    "number": 39,
    "location": "和平二路170號",
    "tel": "7222622*390"
  },
  {
    "area": "前鎮區",
    "name": "瑞豐國中",
    "number": 30,
    "location": "瑞興街99號",
    "tel": "7713181*39"
  },
  {
    "area": "前鎮區",
    "name": "佛公國小",
    "number": 64,
    "location": "后平路135號",
    "tel": "8229801*126"
  },
  {
    "area": "前鎮區",
    "name": "愛群國小",
    "number": 50,
    "location": "二聖二路194號",
    "tel": "3320323*20"
  },
  {
    "area": "前鎮區",
    "name": "光華國小",
    "number": 30,
    "location": "廣西路57號",
    "tel": "7222846*23"
  },
  {
    "area": "前鎮區",
    "name": "民權國小",
    "number": 30,
    "location": "沱江街200號",
    "tel": "5367173*360"
  },
  {
    "area": "前鎮區",
    "name": "明正國小",
    "number": 15,
    "location": "明道路2號",
    "tel": "8110965*340"
  },
  {
    "area": "前鎮區",
    "name": "瑞豐國小",
    "number": 20,
    "location": "瑞隆路100號",
    "tel": "7110846*6036"
  },
  {
    "area": "前鎮區",
    "name": "瑞祥國小",
    "number": 20,
    "location": "班超路20號",
    "tel": "7221212*739"
  },
  {
    "area": "前鎮區",
    "name": "鎮昌國小",
    "number": 40,
    "location": "樹人路261號",
    "tel": "8116575*66"
  },
  {
    "area": "前鎮區",
    "name": "仁愛國小",
    "number": 16,
    "location": "新衙路93號",
    "tel": 8414911
  },
  {
    "area": "前鎮區",
    "name": "樂群國小",
    "number": 40,
    "location": "育樂路61號",
    "tel": "7225846*737"
  },
  {
    "area": "前鎮區",
    "name": "復興國小",
    "number": 20,
    "location": "民權二路331號",
    "tel": "3351784*733"
  },
  {
    "area": "前鎮區",
    "name": "前鎮國中",
    "number": 25,
    "location": "新衙路17號",
    "tel": "8217677*39"
  },
  {
    "area": "前鎮區",
    "name": "前鎮國小",
    "number": 16,
    "location": "新生路200號",
    "tel": "8212448*313"
  },
  {
    "area": "前鎮區",
    "name": "獅甲國小",
    "number": 20,
    "location": "中山三路45號",
    "tel": 929455369
  },
  {
    "area": "前鎮區",
    "name": "紅毛港國小",
    "number": 21,
    "location": "明鳳七街1號",
    "tel": "7917608*800"
  },
  {
    "area": "楠梓區",
    "name": "楠梓高中",
    "number": 115,
    "location": "清豐路19號",
    "tel": "3550571*9、3101、3550594"
  },
  {
    "area": "楠梓區",
    "name": "中山高中",
    "number": 50,
    "location": "藍昌路416號",
    "tel": "3641116*134、190"
  },
  {
    "area": "楠梓區",
    "name": "後勁國中",
    "number": 14,
    "location": "加昌路180號",
    "tel": "3654333*390"
  },
  {
    "area": "楠梓區",
    "name": "翠屏國中、小",
    "number": 40,
    "location": "翠屏路135號",
    "tel": "3683018*192"
  },
  {
    "area": "楠梓區",
    "name": "莒光國小",
    "number": 12,
    "location": "後昌路842號",
    "tel": "3612078*136"
  },
  {
    "area": "楠梓區",
    "name": "楠梓國小",
    "number": 50,
    "location": "楠梓路262號",
    "tel": "3511140*1300"
  },
  {
    "area": "楠梓區",
    "name": "右昌國小",
    "number": 42,
    "location": "加昌路910號",
    "tel": "3612368*735"
  },
  {
    "area": "楠梓區",
    "name": "右昌國中",
    "number": 50,
    "location": "盛昌街161號",
    "tel": "3640451*390"
  },
  {
    "area": "楠梓區",
    "name": "國昌國中",
    "number": 20,
    "location": "德民路1010號",
    "tel": "3644300*89"
  },
  {
    "area": "楠梓區",
    "name": "後勁國小",
    "number": 45,
    "location": "加昌路216號",
    "tel": "3626342*555"
  },
  {
    "area": "楠梓區",
    "name": "援中國小",
    "number": 10,
    "location": "大學26街1150號",
    "tel": 3612193
  },
  {
    "area": "楠梓區",
    "name": "加昌國小",
    "number": 60,
    "location": "樂群路220號",
    "tel": "3627169*5000"
  },
  {
    "area": "楠梓區",
    "name": "楠陽國小",
    "number": 50,
    "location": "楠陽路100號",
    "tel": "3520675*101、171"
  },
  {
    "area": "楠梓區",
    "name": "油廠國小",
    "number": 50,
    "location": "左楠路4號",
    "tel": "3632300*336"
  },
  {
    "area": "楠梓區",
    "name": "楠梓特殊學校",
    "number": 124,
    "location": "德民路211號",
    "tel": "3642007*333"
  },
  {
    "area": "山區",
    "name": "大榮中學",
    "number": 50,
    "location": "大榮街1號",
    "tel": "5613281*119"
  },
  {
    "area": "山區",
    "name": "明誠中學",
    "number": 30,
    "location": "中華一路97號",
    "tel": "5521593*117、113、132"
  },
  {
    "area": "山區",
    "name": "壽山國中",
    "number": 30,
    "location": "鼓山二路37巷108號",
    "tel": "0931200133(黃政雄)"
  },
  {
    "area": "山區",
    "name": "內惟國小",
    "number": 18,
    "location": "內惟路73號",
    "tel": "5515405*37"
  },
  {
    "area": "山區",
    "name": "龍華國小(新校區)",
    "number": 28,
    "location": "大順一路858號",
    "tel": "5553086*9"
  },
  {
    "area": "山區",
    "name": "壽山國小",
    "number": 20,
    "location": "鼓山二路37巷38弄24號",
    "tel": 5514393
  },
  {
    "area": "山區",
    "name": "高雄市立美術館",
    "number": 53,
    "location": "美術館路80號",
    "tel": "5550331*215"
  },
  {
    "area": "山區",
    "name": "中華藝校",
    "number": 20,
    "location": "美術館路89號",
    "tel": "5549696*281"
  },
  {
    "area": "山區",
    "name": "明華國中",
    "number": 19,
    "location": "明誠三路582號",
    "tel": "5502001*318、3975232"
  },
  {
    "area": "山區",
    "name": "台電高雄區營業處服務中心",
    "number": 19,
    "location": "鼓山二路39號",
    "tel": 5519271
  },
  {
    "area": "山區",
    "name": "中山國小",
    "number": 20,
    "location": "雄峰路18號",
    "tel": 5827585
  },
  {
    "area": "山區",
    "name": "七賢國中",
    "number": 20,
    "location": "美術東三路110號",
    "tel": "5559329*39"
  },
  {
    "area": "山區",
    "name": "九如陸橋",
    "number": 180,
    "location": "九如陸橋",
    "tel": "5326167(厚生里辦公處)、5216667(河邊里辦公處)、110(警察局)"
  },
  {
    "area": "山區",
    "name": "青海陸橋",
    "number": 120,
    "location": "青海陸橋",
    "tel": "5326167(厚生里辦公處)、5216667(河邊里辦公處)、110(警察局)"
  },
  {
    "area": "新興區",
    "name": "新興高中",
    "number": 43,
    "location": "五福二路218號",
    "tel": "2727127*9"
  },
  {
    "area": "新興區",
    "name": "高雄高商",
    "number": 50,
    "location": "五福二路3號",
    "tel": "2269975*1110"
  },
  {
    "area": "新興區",
    "name": "信義國小",
    "number": 20,
    "location": "中正三路32號",
    "tel": "2365163*28"
  },
  {
    "area": "新興區",
    "name": "七賢國小",
    "number": 28,
    "location": "七賢一路393號",
    "tel": "2351150*821"
  },
  {
    "area": "新興區",
    "name": "大同國小",
    "number": 30,
    "location": "大同一路231號",
    "tel": 2823039
  },
  {
    "area": "新興區",
    "name": "新興國小",
    "number": 13,
    "location": "民生一路321號",
    "tel": "2412110*119"
  },
  {
    "area": "左營區",
    "name": "左營高中",
    "number": 30,
    "location": "海功路55號",
    "tel": 5857055
  },
  {
    "area": "左營區",
    "name": "龍華國中",
    "number": 50,
    "location": "自由二路2號",
    "tel": "5570720*320"
  },
  {
    "area": "左營區",
    "name": "福山國中",
    "number": 30,
    "location": "重信路215號",
    "tel": 3501581
  },
  {
    "area": "左營區",
    "name": "新民國小",
    "number": 40,
    "location": "自由三路478號",
    "tel": "3411888*778"
  },
  {
    "area": "左營區",
    "name": "明德國小",
    "number": 18,
    "location": "海富路2號",
    "tel": 5811853
  },
  {
    "area": "左營區",
    "name": "新光國小",
    "number": 25,
    "location": "華夏路800號",
    "tel": "3438577*310"
  },
  {
    "area": "左營區",
    "name": "勝利國小",
    "number": 50,
    "location": "南屏路1號",
    "tel": "5522541*300"
  },
  {
    "area": "左營區",
    "name": "屏山國小",
    "number": 25,
    "location": "海功東路2號",
    "tel": "5834501*130"
  },
  {
    "area": "左營區",
    "name": "左營國小",
    "number": 25,
    "location": "實踐路42號",
    "tel": "5820042*734"
  },
  {
    "area": "左營區",
    "name": "新上國小",
    "number": 50,
    "location": "大順一路100號",
    "tel": "5565940*16"
  },
  {
    "area": "左營區",
    "name": "舊城國小",
    "number": 14,
    "location": "蓮潭路47號",
    "tel": "5810017*38"
  },
  {
    "area": "左營區",
    "name": "新莊高中",
    "number": 300,
    "location": "文慈路99號",
    "tel": "3420103*889"
  },
  {
    "area": "左營區",
    "name": "左營國中",
    "number": 250,
    "location": "曾子路281號",
    "tel": "3433080*390"
  },
  {
    "area": "左營區",
    "name": "大義國中",
    "number": 25,
    "location": "翠華路687號",
    "tel": "5820191*73"
  },
  {
    "area": "左營區",
    "name": "立德國中",
    "number": 20,
    "location": "實踐路101號",
    "tel": "5817106*390"
  },
  {
    "area": "左營區",
    "name": "新莊國小",
    "number": 58,
    "location": "自由三路1號",
    "tel": "3411373*130"
  },
  {
    "area": "左營區",
    "name": "福山國小",
    "number": 10,
    "location": "重愛路99號",
    "tel": 910805975
  },
  {
    "area": "左營區",
    "name": "文府國小",
    "number": 70,
    "location": "文府路399號",
    "tel": "3482070*153"
  },
  {
    "area": "三民區",
    "name": "三民高中",
    "number": 150,
    "location": "金鼎路81號",
    "tel": "3475181*841、842"
  },
  {
    "area": "三民區",
    "name": "民族國中",
    "number": 50,
    "location": "覺民路363號",
    "tel": "3818718*39、0933316002"
  },
  {
    "area": "三民區",
    "name": "正興國中",
    "number": 20,
    "location": "覺民路850號",
    "tel": "3809591*9"
  },
  {
    "area": "三民區",
    "name": "正興國小",
    "number": 36,
    "location": "大豐二路20號",
    "tel": "3845206*752"
  },
  {
    "area": "三民區",
    "name": "東光國小",
    "number": 20,
    "location": "黃興路206號",
    "tel": "3839350*18"
  },
  {
    "area": "三民區",
    "name": "愛國國小",
    "number": 20,
    "location": "十全一路1號",
    "tel": "3161191*106"
  },
  {
    "area": "三民區",
    "name": "三民國小",
    "number": 43,
    "location": "建國三路216號",
    "tel": 955009628
  },
  {
    "area": "三民區",
    "name": "光武國小",
    "number": 150,
    "location": "光武路35號",
    "tel": 958820220
  },
  {
    "area": "三民區",
    "name": "鼎金國小",
    "number": 57,
    "location": "鼎山街375號",
    "tel": "3836330*9"
  },
  {
    "area": "三民區",
    "name": "十全國小",
    "number": 37,
    "location": "十全二路162號",
    "tel": 3214366
  },
  {
    "area": "三民區",
    "name": "陽明國小",
    "number": 50,
    "location": "義德路52號",
    "tel": "3851916*730"
  },
  {
    "area": "三民區",
    "name": "莊敬國小",
    "number": 50,
    "location": "大昌一路200號",
    "tel": 986188278
  },
  {
    "area": "三民區",
    "name": "獅湖國小",
    "number": 30,
    "location": "鼎金後路495號",
    "tel": 3424782
  },
  {
    "area": "三民區",
    "name": "博愛國小",
    "number": 29,
    "location": "十全一路202號",
    "tel": "3110708*88"
  },
  {
    "area": "三民區",
    "name": "高雄高中",
    "number": 150,
    "location": "建國三路50號",
    "tel": "2862550*602"
  },
  {
    "area": "三民區",
    "name": "高雄高工",
    "number": 100,
    "location": "建工路419號",
    "tel": "3815366*2214、2224"
  },
  {
    "area": "三民區",
    "name": "陽明國中",
    "number": 40,
    "location": "義華路166號",
    "tel": 3102647
  },
  {
    "area": "三民區",
    "name": "鼎金國中",
    "number": 30,
    "location": "鼎山街445號",
    "tel": "3831029*135"
  },
  {
    "area": "三民區",
    "name": "民族國小",
    "number": 40,
    "location": "平等路197號",
    "tel": "3860526*852"
  },
  {
    "area": "三民區",
    "name": "河濱國小",
    "number": 30,
    "location": "市中一路339號",
    "tel": "2211408*735"
  },
  {
    "area": "三民區",
    "name": "里民活動中心",
    "number": 30,
    "location": "大昌二路393號",
    "tel": 3846002
  },
  {
    "area": "鹽埕區",
    "name": "鹽埕國小",
    "number": 25,
    "location": "五福四路183號",
    "tel": "5210626*130"
  },
  {
    "area": "小港區",
    "name": "高鳳工家",
    "number": 30,
    "location": "松崗路119號",
    "tel": 7132123
  },
  {
    "area": "小港區",
    "name": "小港高中",
    "number": 70,
    "location": "學府路117號",
    "tel": "8062628*310"
  },
  {
    "area": "小港區",
    "name": "小港國中",
    "number": 50,
    "location": "平和南路185號",
    "tel": "8215929*390"
  },
  {
    "area": "小港區",
    "name": "鳳林國中",
    "number": 31,
    "location": "龍鳳路559號",
    "tel": "8711130*40"
  },
  {
    "area": "小港區",
    "name": "明義國中",
    "number": 35,
    "location": "明義街2號",
    "tel": "7911296*39"
  },
  {
    "area": "小港區",
    "name": "二苓國小",
    "number": 50,
    "location": "立群路6號",
    "tel": "8016837*319"
  },
  {
    "area": "小港區",
    "name": "青山國小",
    "number": 25,
    "location": "飛機路153號",
    "tel": 8014543
  },
  {
    "area": "小港區",
    "name": "桂林國小",
    "number": 35,
    "location": "桂陽路390號",
    "tel": 929017822
  },
  {
    "area": "小港區",
    "name": "鳳鳴國小",
    "number": 20,
    "location": "鳳鳴路191號",
    "tel": "8714561*131"
  },
  {
    "area": "小港區",
    "name": "小港國小",
    "number": 30,
    "location": "平和路1號",
    "tel": "8215923*324"
  },
  {
    "area": "小港區",
    "name": "太平國小",
    "number": 60,
    "location": "營口路1號",
    "tel": "8019006*9"
  },
  {
    "area": "小港區",
    "name": "鳳林國小",
    "number": 20,
    "location": "鳳林路207號",
    "tel": "8712367*734"
  },
  {
    "area": "小港區",
    "name": "坪頂國小",
    "number": 25,
    "location": "大平路2號",
    "tel": "8911410*835"
  },
  {
    "area": "小港區",
    "name": "港和國小",
    "number": 30,
    "location": "平和南路300號",
    "tel": "8131506*339"
  },
  {
    "area": "小港區",
    "name": "高雄市立空中大學",
    "number": 50,
    "location": "大業北路436號",
    "tel": "8012008*1101"
  },
  {
    "area": "小港區",
    "name": "明義國小",
    "number": 15,
    "location": "明義街77號",
    "tel": "7917035*308"
  },
  {
    "area": "小港區",
    "name": "中山國中",
    "number": 36,
    "location": "漢民路352號",
    "tel": "8021765*39"
  },
  {
    "area": "小港區",
    "name": "餐旅國中",
    "number": 50,
    "location": "松和路40號",
    "tel": "8060705*66、5569260"
  },
  {
    "area": "小港區",
    "name": "漢民國小",
    "number": 30,
    "location": "漢民路500號",
    "tel": "8036569*737"
  },
  {
    "area": "小港區",
    "name": "華山國小",
    "number": 32,
    "location": "華仁街1號",
    "tel": "8062280*777"
  },
  {
    "area": "小港區",
    "name": "鳳陽國小",
    "number": 15,
    "location": "鳳陽街2號",
    "tel": 8010865
  },
  {
    "area": "小港區",
    "name": "高雄市社會教育館",
    "number": 100,
    "location": "學府路115號",
    "tel": "8034473*100"
  },
  {
    "area": "旗津區",
    "name": "旗津國中",
    "number": 50,
    "location": "中州二路207號",
    "tel": "5712274*39"
  },
  {
    "area": "旗津區",
    "name": "大汕國小",
    "number": 70,
    "location": "中洲二路203號",
    "tel": "5712434*32"
  },
  {
    "area": "旗津區",
    "name": "中洲國小",
    "number": 80,
    "location": "旗津二路275號",
    "tel": "5712225*735"
  },
  {
    "area": "旗津區",
    "name": "旗津國小",
    "number": 16,
    "location": "中洲三路623號",
    "tel": "5715133*733"
  },
  {
    "area": "前金區",
    "name": "前金國小",
    "number": 20,
    "location": "大同二路61號",
    "tel": 2829001
  },
  {
    "area": "前金區",
    "name": "前金國中",
    "number": 30,
    "location": "六合二路278號",
    "tel": "2725981*36"
  },
  {
    "area": "前金區",
    "name": "社區運動廣場",
    "number": 10,
    "location": "允文街2號旁",
    "tel": "2723133*403"
  },
  {
    "area": "前金區",
    "name": "財政局（舊市議會停車場）",
    "number": 42,
    "location": "中正四路192號",
    "tel": "3368333*2628"
  },
  {
    "area": "鳳山區",
    "name": "鳳西國中",
    "number": 35,
    "location": "光華路69號",
    "tel": "7463452*39"
  },
  {
    "area": "鳳山區",
    "name": "鳳甲國中",
    "number": 30,
    "location": "輜汽路300號",
    "tel": "7675300*39"
  },
  {
    "area": "鳳山區",
    "name": "正義國小",
    "number": 25,
    "location": "南昌路55號",
    "tel": "7714440*40"
  },
  {
    "area": "鳳山區",
    "name": "南成國小",
    "number": 120,
    "location": "南和街101號",
    "tel": "8215354*46"
  },
  {
    "area": "鳳山區",
    "name": "文山國小",
    "number": 8,
    "location": "鳳松路25巷20號",
    "tel": "7460444*70"
  },
  {
    "area": "鳳山區",
    "name": "過埤國小",
    "number": 30,
    "location": "過埤路176號",
    "tel": "7920257*888"
  },
  {
    "area": "鳳山區",
    "name": "忠孝國小",
    "number": 39,
    "location": "新富路630號",
    "tel": "7632257*42"
  },
  {
    "area": "鳳山區",
    "name": "鳳山體育場",
    "number": 100,
    "location": "體育路65號",
    "tel": "7473151*25"
  },
  {
    "area": "鳳山區",
    "name": "忠孝國中",
    "number": 35,
    "location": "國泰路二段81號",
    "tel": 938025077
  },
  {
    "area": "鳳山區",
    "name": "青年國中",
    "number": 30,
    "location": "青年路二段89號",
    "tel": "7190419*39"
  },
  {
    "area": "鳳山區",
    "name": "文華國小",
    "number": 30,
    "location": "文化路52號",
    "tel": "7450949*49"
  },
  {
    "area": "鳳山區",
    "name": "福誠高中",
    "number": 40,
    "location": "五甲三路176號",
    "tel": "8224646*330、490"
  },
  {
    "area": "鳳山區",
    "name": "鳳山國中",
    "number": 100,
    "location": "中山東路227號",
    "tel": "7462774*390"
  },
  {
    "area": "鳳山區",
    "name": "鳳山國小",
    "number": 60,
    "location": "中山路231號",
    "tel": "7419119*41"
  },
  {
    "area": "鳳山區",
    "name": "大東國小",
    "number": 15,
    "location": "大東一路1號",
    "tel": 7462344
  },
  {
    "area": "鳳山區",
    "name": "鎮北國小",
    "number": 28,
    "location": "鳳北路170號",
    "tel": "7311709*212、0929735109"
  },
  {
    "area": "鳳山區",
    "name": "中正國小",
    "number": 10,
    "location": "勝利路2號",
    "tel": "7012831*125"
  },
  {
    "area": "鳳山區",
    "name": "誠正國小",
    "number": 45,
    "location": "黃埔新村國校巷78號",
    "tel": "7463417*60"
  },
  {
    "area": "鳳山區",
    "name": "新甲國小",
    "number": 60,
    "location": "新富路255號",
    "tel": "7668170*70"
  },
  {
    "area": "鳳山區",
    "name": "鳳西國小",
    "number": 30,
    "location": "光華東路100號",
    "tel": "7417655*41"
  },
  {
    "area": "鳳山區",
    "name": "文德國小",
    "number": 30,
    "location": "文衡路356號",
    "tel": "7768723*27"
  },
  {
    "area": "鳳山區",
    "name": "瑞興國小",
    "number": 48,
    "location": "博愛路271號",
    "tel": "7429803*42"
  },
  {
    "area": "鳳山區",
    "name": "福誠國小",
    "number": 50,
    "location": "忠誠路145號",
    "tel": "8120152*67"
  },
  {
    "area": "鳳山區",
    "name": "中崙國小",
    "number": 20,
    "location": "中崙四路25號",
    "tel": "7533244*23"
  },
  {
    "area": "鳳山區",
    "name": "鳳翔國小",
    "number": 8,
    "location": "鳳育路63號",
    "tel": "7922751*45"
  },
  {
    "area": "鳳山區",
    "name": "五甲國中",
    "number": 55,
    "location": "龍成路111號",
    "tel": 8319676
  },
  {
    "area": "鳳山區",
    "name": "中崙國中",
    "number": 20,
    "location": "中崙二路487號",
    "tel": "7538686*39"
  },
  {
    "area": "鳥松區",
    "name": "文山高中",
    "number": 60,
    "location": "大埤路31號",
    "tel": "7777272*470"
  },
  {
    "area": "鳥松區",
    "name": "大華國小",
    "number": 20,
    "location": "大華路200號",
    "tel": "3701359*532、0933849481"
  },
  {
    "area": "鳥松區",
    "name": "仁美國小",
    "number": 25,
    "location": "學堂路2號",
    "tel": "7315633*71、0926495499"
  },
  {
    "area": "鳥松區",
    "name": "鳥松國中",
    "number": 30,
    "location": "松埔北巷5-1號",
    "tel": "7323977、0938375559"
  },
  {
    "area": "鳥松區",
    "name": "鳥松區老人文康活動中心",
    "number": 20,
    "location": "仁德路11號",
    "tel": "7314191*100"
  },
  {
    "area": "大寮區",
    "name": "大寮國小",
    "number": 95,
    "location": "大寮路740號",
    "tel": "7881062*77"
  },
  {
    "area": "大寮區",
    "name": "山頂國小",
    "number": 15,
    "location": "山頂路211號",
    "tel": 920911155
  },
  {
    "area": "大寮區",
    "name": "後庄國小",
    "number": 12,
    "location": "民揚路28號",
    "tel": 7035278
  },
  {
    "area": "大寮區",
    "name": "忠義國小",
    "number": 12,
    "location": "忠義路1號",
    "tel": "7812858*40"
  },
  {
    "area": "大寮區",
    "name": "中庄國中",
    "number": 30,
    "location": "中庄里光明路三段1437號",
    "tel": "7033166*390"
  },
  {
    "area": "大寮區",
    "name": "潮寮國中",
    "number": 30,
    "location": "潮寮里潮寮路51-9號",
    "tel": "7879544*31"
  },
  {
    "area": "大寮區",
    "name": "永芳國小",
    "number": 50,
    "location": "鳳林三路499號",
    "tel": "7812814*40"
  },
  {
    "area": "大寮區",
    "name": "昭明國小",
    "number": 30,
    "location": "鳳林一路300巷80號",
    "tel": "6426428*129"
  },
  {
    "area": "林園區",
    "name": "林園高中",
    "number": 99,
    "location": "林園北路481號",
    "tel": "6412059*666"
  },
  {
    "area": "林園區",
    "name": "林園國小",
    "number": 50,
    "location": "忠孝西路20號",
    "tel": "6412125*28"
  },
  {
    "area": "林園區",
    "name": "王公國小",
    "number": 40,
    "location": "王公二路100號",
    "tel": "6420503*46"
  },
  {
    "area": "林園區",
    "name": "金潭國小",
    "number": 15,
    "location": "金潭路40號",
    "tel": 929002808
  },
  {
    "area": "大樹區",
    "name": "大樹國中",
    "number": 40,
    "location": "九曲里(路)500號",
    "tel": "6512026*390"
  },
  {
    "area": "大樹區",
    "name": "龍目國小",
    "number": 13,
    "location": "龍目里(路)56號",
    "tel": "6514110*13"
  },
  {
    "area": "大樹區",
    "name": "小坪國小",
    "number": 25,
    "location": "小坪里(路)73號",
    "tel": 6515232
  },
  {
    "area": "大樹區",
    "name": "大樹國小",
    "number": 30,
    "location": "中正一路249號",
    "tel": "6513752*20"
  },
  {
    "area": "大樹區",
    "name": "九曲國小",
    "number": 20,
    "location": "九曲路498號",
    "tel": 6512541
  },
  {
    "area": "大樹區",
    "name": "水寮國小",
    "number": 50,
    "location": "水寮里中華路國小巷1號",
    "tel": "6515536*13"
  },
  {
    "area": "大樹區",
    "name": "興田國小",
    "number": 15,
    "location": "水寮里中華路國小巷1號",
    "tel": 928326950
  },
  {
    "area": "大樹區",
    "name": "大樹區公所",
    "number": 8,
    "location": "檨腳里中興北路120號",
    "tel": 978005010
  },
  {
    "area": "大社區",
    "name": "大社國中",
    "number": 30,
    "location": "神農里翠屏路100號",
    "tel": "3530100*39\n3524092"
  },
  {
    "area": "大社區",
    "name": "嘉誠國小",
    "number": 20,
    "location": "嘉誠路22號",
    "tel": "3560418*93"
  },
  {
    "area": "大社區",
    "name": "大社國小",
    "number": 35,
    "location": "三民路336號",
    "tel": "3511940*70、0960124513"
  },
  {
    "area": "大社區",
    "name": "觀音國小",
    "number": 73,
    "location": "文明路100號",
    "tel": "3525583*57"
  },
  {
    "area": "大社區",
    "name": "老人文康活動中心",
    "number": 10,
    "location": "金龍路65號",
    "tel": 3541509
  },
  {
    "area": "岡山區",
    "name": "岡山國中",
    "number": 84,
    "location": "岡燕路238號",
    "tel": "6212219*221"
  },
  {
    "area": "岡山區",
    "name": "嘉興國中",
    "number": 16,
    "location": "嘉興里信中街486號",
    "tel": "6221039*39"
  },
  {
    "area": "岡山區",
    "name": "前峰國中",
    "number": 50,
    "location": "樹人路1號",
    "tel": "6265568*390"
  },
  {
    "area": "岡山區",
    "name": "岡山國小",
    "number": 20,
    "location": "柳橋東路36號",
    "tel": "6212032*42"
  },
  {
    "area": "岡山區",
    "name": "前峰國小",
    "number": 50,
    "location": "育英路35號",
    "tel": "0937374077、0915018935、0938095456"
  },
  {
    "area": "岡山區",
    "name": "後紅國小",
    "number": 30,
    "location": "岡燕路2巷88號",
    "tel": "6212815*110"
  },
  {
    "area": "岡山區",
    "name": "竹圍國小",
    "number": 30,
    "location": "大仁北路1號",
    "tel": 910022437
  },
  {
    "area": "岡山區",
    "name": "壽天國小",
    "number": 40,
    "location": "公園東路55號",
    "tel": "6246040*842"
  },
  {
    "area": "路竹區",
    "name": "蔡文國小",
    "number": 60,
    "location": "國昌路548號",
    "tel": "6076268*119"
  },
  {
    "area": "路竹區",
    "name": "一甲國中",
    "number": 50,
    "location": "一甲路 111 號",
    "tel": "6977479*39"
  },
  {
    "area": "路竹區",
    "name": "路竹高中",
    "number": 30,
    "location": "中華路292號",
    "tel": "6963008*145"
  },
  {
    "area": "路竹區",
    "name": "路竹國小",
    "number": 30,
    "location": "中山路712巷16號",
    "tel": "6962128*840"
  },
  {
    "area": "路竹區",
    "name": "大社國小",
    "number": 20,
    "location": "大社路243號",
    "tel": "6962254*212"
  },
  {
    "area": "路竹區",
    "name": "竹滬國小",
    "number": 30,
    "location": "竹滬里成功路2號",
    "tel": "6981516*40"
  },
  {
    "area": "路竹區",
    "name": "北嶺國小",
    "number": 30,
    "location": "民治路85號",
    "tel": "6964786*40"
  },
  {
    "area": "路竹區",
    "name": "一甲國小",
    "number": 20,
    "location": "大智路43號",
    "tel": "6962454*24"
  },
  {
    "area": "彌陀區",
    "name": "彌陀國小",
    "number": 40,
    "location": "中正路213號",
    "tel": 910274776
  },
  {
    "area": "茄萣區",
    "name": "茄萣國中",
    "number": 30,
    "location": "濱海路四段29號",
    "tel": "6900054*37"
  },
  {
    "area": "茄萣區",
    "name": "興達國小",
    "number": 40,
    "location": "民治路2號",
    "tel": "6988099*42"
  },
  {
    "area": "茄萣區",
    "name": "茄萣國小",
    "number": 60,
    "location": "茄萣路二段307號",
    "tel": "6900057*28"
  },
  {
    "area": "茄萣區",
    "name": "成功國小",
    "number": 40,
    "location": "成功路1號",
    "tel": 6902053
  },
  {
    "area": "湖內區",
    "name": "大湖國小",
    "number": 27,
    "location": "民權路2號",
    "tel": "6933808*19"
  },
  {
    "area": "湖內區",
    "name": "明宗國小",
    "number": 20,
    "location": "保生路103號",
    "tel": "6994682*50"
  },
  {
    "area": "田寮區",
    "name": "田寮國中",
    "number": 15,
    "location": "南安里崗安路48號",
    "tel": "6361687*39"
  },
  {
    "area": "田寮區",
    "name": "高雄市立圖書館田寮分館",
    "number": 15,
    "location": "南安里崗安路71-1號",
    "tel": "6381878、0912108734蔡先生"
  },
  {
    "area": "田寮區",
    "name": "高雄市田寮區公所",
    "number": 80,
    "location": "南安里崗安路71號",
    "tel": 6361475
  },
  {
    "area": "田寮區",
    "name": "崇德國小",
    "number": 30,
    "location": "崇德路101號",
    "tel": "6367155*48"
  },
  {
    "area": "田寮區",
    "name": "新興國小",
    "number": 18,
    "location": "大新路2號",
    "tel": "6381348*53"
  },
  {
    "area": "阿蓮區",
    "name": "復安國小",
    "number": 22,
    "location": "復安里167號",
    "tel": "6311271、0916057728"
  },
  {
    "area": "阿蓮區",
    "name": "中路國小",
    "number": 40,
    "location": "中路里272號",
    "tel": 910709255
  },
  {
    "area": "阿蓮區",
    "name": "阿蓮國小",
    "number": 30,
    "location": "民族路163號",
    "tel": "6312049*232"
  },
  {
    "area": "阿蓮區",
    "name": "阿蓮區公所",
    "number": 26,
    "location": "民生路94號",
    "tel": 6311177
  },
  {
    "area": "內門區",
    "name": "內門國小",
    "number": 20,
    "location": "內豐里內埔24號",
    "tel": "6672078*250"
  },
  {
    "area": "內門區",
    "name": "西門國小",
    "number": 30,
    "location": "內東里柿子園24號",
    "tel": "6672077*31"
  },
  {
    "area": "內門區",
    "name": "溝坪國小",
    "number": 20,
    "location": "溝枰里廣福47號",
    "tel": "6601788*30"
  },
  {
    "area": "內門區",
    "name": "景義國小",
    "number": 15,
    "location": "永富里萊坑8號",
    "tel": 6601979
  },
  {
    "area": "內門區",
    "name": "觀亭國小",
    "number": 12,
    "location": "觀亭里中正路203號",
    "tel": "6671672*50"
  },
  {
    "area": "內門區",
    "name": "內門國中",
    "number": 20,
    "location": "中正路160巷30號",
    "tel": "6671002*39"
  },
  {
    "area": "內門區",
    "name": "金竹國小",
    "number": 10,
    "location": "金竹里吉民28號",
    "tel": "6601106*30"
  },
  {
    "area": "內門區",
    "name": "木柵國小",
    "number": 80,
    "location": "木柵里6鄰木柵3號",
    "tel": 6681183
  },
  {
    "area": "內門區",
    "name": "內門區公所",
    "number": 20,
    "location": "內門里內門20號",
    "tel": 6671211
  },
  {
    "area": "內門區",
    "name": "觀亭里聯合辦公處",
    "number": 40,
    "location": "觀亭里南屏路92號",
    "tel": 6671211
  },
  {
    "area": "燕巢區",
    "name": "燕巢國中",
    "number": 100,
    "location": "中興路267號",
    "tel": 7880833
  },
  {
    "area": "燕巢區",
    "name": "燕巢國小",
    "number": 20,
    "location": "東燕里中華路177號",
    "tel": "6161495*180"
  },
  {
    "area": "燕巢區",
    "name": "橫山國小",
    "number": 16,
    "location": "橫山路24號",
    "tel": "6152479*70"
  },
  {
    "area": "燕巢區",
    "name": "安招國小",
    "number": 20,
    "location": "瓊林里安招路170號",
    "tel": "6162553*9"
  },
  {
    "area": "燕巢區",
    "name": "金山國小",
    "number": 10,
    "location": "金山里番田路29號",
    "tel": "6164328*40"
  },
  {
    "area": "燕巢區",
    "name": "深水國小",
    "number": 25,
    "location": "深水里深中路2號",
    "tel": "6152447*210"
  },
  {
    "area": "燕巢區",
    "name": "燕巢區公所",
    "number": 43,
    "location": "中安路1號",
    "tel": "6161411*137"
  },
  {
    "area": "燕巢區",
    "name": "燕巢區民眾活動中心",
    "number": 51,
    "location": "中興路427號",
    "tel": "6161411*137"
  },
  {
    "area": "美濃區",
    "name": "龍肚國中",
    "number": 20,
    "location": "中華路68號",
    "tel": "6851314*34"
  },
  {
    "area": "美濃區",
    "name": "龍山國小",
    "number": 20,
    "location": "龍山里龍山街62號",
    "tel": "6833654*30"
  },
  {
    "area": "美濃區",
    "name": "吉洋國小",
    "number": 40,
    "location": "忠孝路二段59號",
    "tel": "6831849*40"
  },
  {
    "area": "美濃區",
    "name": "美濃國中",
    "number": 50,
    "location": "中正路一段191號(體育館前空地)",
    "tel": "6816166*39"
  },
  {
    "area": "美濃區",
    "name": "廣興國小",
    "number": 15,
    "location": "興隆里廣興街124號",
    "tel": "6812857*16"
  },
  {
    "area": "美濃區",
    "name": "南隆國中",
    "number": 16,
    "location": "南中街3號",
    "tel": 928300164
  },
  {
    "area": "美濃區",
    "name": "龍肚國小",
    "number": 25,
    "location": "龍肚里龍東街43號",
    "tel": 6851124
  },
  {
    "area": "美濃區",
    "name": "福安國小",
    "number": 30,
    "location": "福安里中山路2段358號",
    "tel": "6812514*40"
  },
  {
    "area": "美濃區",
    "name": "美濃國小",
    "number": 8,
    "location": "泰安里永安路190號",
    "tel": "6810166*40"
  },
  {
    "area": "美濃區",
    "name": "東門國小",
    "number": 60,
    "location": "民族路36巷2號",
    "tel": "6812811*40"
  },
  {
    "area": "旗山區",
    "name": "旗山國中",
    "number": 50,
    "location": "中學路42號",
    "tel": "6612650*390"
  },
  {
    "area": "旗山區",
    "name": "嶺口國小",
    "number": 5,
    "location": "南勝里龍文巷30號",
    "tel": 976165808
  },
  {
    "area": "旗山區",
    "name": "圓富國中",
    "number": 20,
    "location": "旗甲路二段609號",
    "tel": 952633842
  },
  {
    "area": "旗山區",
    "name": "旗山國小",
    "number": 20,
    "location": "華中街44號",
    "tel": "6612052*216"
  },
  {
    "area": "旗山區",
    "name": "溪洲國小",
    "number": 30,
    "location": "旗南二路126號",
    "tel": "6661408*87"
  },
  {
    "area": "旗山區",
    "name": "鼓山國小",
    "number": 99,
    "location": "延平一路111號",
    "tel": "6612051*81、0921245838"
  },
  {
    "area": "旗山區",
    "name": "圓潭國小",
    "number": 30,
    "location": "旗甲路3段179號",
    "tel": "6691476*42"
  },
  {
    "area": "旗山區",
    "name": "旗尾國小",
    "number": 10,
    "location": "延平二路19號",
    "tel": "6616708*30"
  },
  {
    "area": "旗山區",
    "name": "鼓山公園",
    "number": 50,
    "location": "中正路近永福街口",
    "tel": 6626635
  },
  {
    "area": "杉林區",
    "name": "集來國小",
    "number": 18,
    "location": "集來里通仙巷333號",
    "tel": "6779196、6779420"
  },
  {
    "area": "杉林區",
    "name": "上平國小",
    "number": 10,
    "location": "上平里山仙路212號",
    "tel": "6771102*16"
  },
  {
    "area": "杉林區",
    "name": "杉林國中",
    "number": 20,
    "location": "月眉里清水路中學巷6號",
    "tel": "6771108*39"
  },
  {
    "area": "杉林區",
    "name": "杉林國小",
    "number": 8,
    "location": "合森巷41號",
    "tel": "6772658*30"
  },
  {
    "area": "杉林區",
    "name": "民族大愛國小",
    "number": 30,
    "location": "月眉里和氣街15號",
    "tel": "6776031*119"
  },
  {
    "area": "杉林區",
    "name": "新庄國小",
    "number": 8,
    "location": "新庄里司馬路45巷5號",
    "tel": "6771755*40"
  },
  {
    "area": "甲仙區",
    "name": "寶隆國小",
    "number": 20,
    "location": "寶隆里光華路20號",
    "tel": 6752998
  },
  {
    "area": "甲仙區",
    "name": "甲仙國小",
    "number": 10,
    "location": "西安村文化路45號",
    "tel": "6751025*140"
  },
  {
    "area": "甲仙區",
    "name": "甲仙國中",
    "number": 12,
    "location": "東安村文化南路6號",
    "tel": 958646280
  },
  {
    "area": "甲仙區",
    "name": "小林國小",
    "number": 14,
    "location": "五里路24-2號",
    "tel": 933161165
  },
  {
    "area": "六龜區",
    "name": "六龜高中",
    "number": 10,
    "location": "義寶里光復路212號",
    "tel": 980418455
  },
  {
    "area": "六龜區",
    "name": "新威國小",
    "number": 10,
    "location": "新興里212號",
    "tel": "6871134*40、0935454353"
  },
  {
    "area": "六龜區",
    "name": "新發國小",
    "number": 20,
    "location": "新發里和平路130號",
    "tel": "6791387*45、0989551112"
  },
  {
    "area": "六龜區",
    "name": "寶來國小",
    "number": 10,
    "location": "寶來里中正路89號",
    "tel": "6881009*40"
  },
  {
    "area": "六龜區",
    "name": "龍興國小",
    "number": 10,
    "location": "中興里中庄193號",
    "tel": 6891140
  },
  {
    "area": "六龜區",
    "name": "寶來國中",
    "number": 30,
    "location": "寶來里中正路137號",
    "tel": "6881258*31"
  },
  {
    "area": "六龜區",
    "name": "六龜國小",
    "number": 40,
    "location": "光復路40號",
    "tel": 930558312
  },
  {
    "area": "六龜區",
    "name": "荖濃國小",
    "number": 18,
    "location": "荖濃里南橫路72號",
    "tel": "6881311*40"
  },
  {
    "area": "六龜區",
    "name": "六龜區公所",
    "number": 30,
    "location": "民治路18號",
    "tel": 6892100
  },
  {
    "area": "桃源區",
    "name": "桃源里綜合運動場",
    "number": 80,
    "location": "桃源里綜合運動場",
    "tel": "6861132*111"
  },
  {
    "area": "桃源區",
    "name": "梅山里社區運動場",
    "number": 40,
    "location": "梅山里社區運動場",
    "tel": "6861132*111"
  },
  {
    "area": "桃源區",
    "name": "桃源國中",
    "number": 25,
    "location": "勤和里南橫公路三段201號",
    "tel": "6861133*12"
  },
  {
    "area": "桃源區",
    "name": "桃源國小",
    "number": 30,
    "location": "桃源里北進巷50號",
    "tel": 933661595
  },
  {
    "area": "桃源區",
    "name": "興中國小",
    "number": 30,
    "location": "高中里興中巷44號",
    "tel": "6881850*13"
  },
  {
    "area": "桃源區",
    "name": "樟山國小",
    "number": 25,
    "location": "南橫公路五段440號",
    "tel": 6866118
  },
  {
    "area": "桃源區",
    "name": "復興里運動球場",
    "number": 20,
    "location": "復興里運動球場",
    "tel": "6861132*111"
  },
  {
    "area": "桃源區",
    "name": "復興里二集團社區球場",
    "number": 20,
    "location": "復興里二集團社區球場",
    "tel": "6861132*111"
  },
  {
    "area": "茂林區",
    "name": "茂林國中",
    "number": 10,
    "location": "茂林里4-5號",
    "tel": "6801153*31"
  },
  {
    "area": "茂林區",
    "name": "茂林區公所",
    "number": 12,
    "location": "茂林里11號",
    "tel": "6801045*233"
  },
  {
    "area": "茂林區",
    "name": "茂林國小",
    "number": 10,
    "location": "茂林里4-3號",
    "tel": "6801043*23"
  },
  {
    "area": "茂林區",
    "name": "多納國小",
    "number": 10,
    "location": "多納里2號",
    "tel": 6801178
  },
  {
    "area": "永安區",
    "name": "永安國中",
    "number": 20,
    "location": "保興一路3號",
    "tel": "6912064*39"
  },
  {
    "area": "永安區",
    "name": "維新國小",
    "number": 25,
    "location": "維新路光明九巷69-10號",
    "tel": "6913816*217"
  },
  {
    "area": "那瑪夏區",
    "name": "民生國小",
    "number": 10,
    "location": "達卡努瓦里大光巷159號",
    "tel": "6701233*17"
  },
  {
    "area": "那瑪夏區",
    "name": "民權國小",
    "number": 50,
    "location": "瑪雅里220號",
    "tel": 6701129
  },
  {
    "area": "仁武區",
    "name": "仁武高中",
    "number": 50,
    "location": "仁林路20號",
    "tel": 3721640
  },
  {
    "area": "仁武區",
    "name": "仁武特殊教育學校",
    "number": 60,
    "location": "澄觀路1389號",
    "tel": "3749788*55"
  },
  {
    "area": "仁武區",
    "name": "仁武國小",
    "number": 60,
    "location": "中正路94號",
    "tel": 933226914
  },
  {
    "area": "仁武區",
    "name": "竹後國小",
    "number": 30,
    "location": "竹楠路250號",
    "tel": "3724460*40"
  },
  {
    "area": "仁武區",
    "name": "烏林國小",
    "number": 20,
    "location": "烏林里林森巷23號",
    "tel": "3711431*133"
  },
  {
    "area": "仁武區",
    "name": "八卦國小",
    "number": 25,
    "location": "八卦里永仁街555號",
    "tel": "3718964*71"
  },
  {
    "area": "仁武區",
    "name": "灣內國小",
    "number": 50,
    "location": "仁心路31號",
    "tel": "3718228*21"
  },
  {
    "area": "橋頭區",
    "name": "橋頭國小",
    "number": 80,
    "location": "樹德路200號",
    "tel": "6126011*43"
  },
  {
    "area": "橋頭區",
    "name": "仕隆國小",
    "number": 25,
    "location": "仕隆路進校巷16號",
    "tel": 6113517
  },
  {
    "area": "橋頭區",
    "name": "甲圍國小",
    "number": 15,
    "location": "甲昌路250號",
    "tel": "6113647*243"
  },
  {
    "area": "梓官區",
    "name": "梓官國中",
    "number": 40,
    "location": "中學路71號",
    "tel": "6172854*39"
  },
  {
    "area": "梓官區",
    "name": "蚵寮國中",
    "number": 50,
    "location": "中正二街60號",
    "tel": 919615119
  },
  {
    "area": "梓官區",
    "name": "蚵寮國小",
    "number": 26,
    "location": "光明路177號",
    "tel": 6101044
  },
  {
    "area": "梓官區",
    "name": "梓官國小",
    "number": 40,
    "location": "進學路61號",
    "tel": "6193927*42"
  }
]

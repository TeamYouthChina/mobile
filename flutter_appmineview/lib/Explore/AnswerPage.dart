import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appmineview/Explore/UserName.dart';

// ignore: must_be_immutable
class AnswerPage extends StatelessWidget {
  String title;

  AnswerPage(String title) {
    this.title = title;
  }

  final String comment = '在今天的中国互联网行业，腾讯拥有近乎垄断的平台，庞大的人气，源源不断的现金流，一般的小问题对腾讯是构成不了威'
      '胁的。那么，腾讯的问题在哪里？我们可以回顾一下微软的历史。在1990年代的科技界，微软同样是这么一家神一般存在的巨头。他有钱，有人才，'
      '有技术，有垄断的平台，貌似战无不胜。但微软也不是通吃的，在一些小的细分行业，比如PS绘图软件，财务软件，人家就不做。不是不想做，而是精力不允许太分散。'
      '对于一家科技巨头来说，永远要记住一件事——我之所以拥有今天的江湖地位，是因为我有战略眼光，或者说，我踩到了狗屎运，抓住了技术发展的'
      '主流趋势。”吐槽一句，尼玛，要不是那次伟大的空手套白狼，在一无所有的情况下拿下了IBM的操作系统外包合同，哪会有微软今日的地位啊。'
      '要知道，在一个时代，主流技术应用可以带来80%的商业利润，其他的边角料技术就只能获得剩余的20%而已。这就是技术领域的二八法则。在软件'
      '行业，操作系统平台就是那个八，其他的应用软件就是那个二。微软已经踩到了一次狗屎运，得到了软件行业80%的利润，现在，他所需要做的，就是'
      '保持住这个地位。但技术不是静止不动的，不断有新的技术生长出来，在成千上万种技术中，有一种会长成参天大树，利润无比丰厚，取代原来的技术平台，'
      '成为新的主流趋势。1995年之后，科技行业进入互联网时代。林林总总的技术像小草一样生长出来。bbs，电子邮件，即时通信，新闻门户……哪一个才是互联'
      '网时代的主流趋势呢？嗯，比尔盖茨一定很头痛。不过，在这么多的技术中，有一个技术貌似是大BOSS。浏览器。所有人上网都要经过这个大杀器。而那时候的'
      '网景，因为第一个做出了可以看图片的浏览器，将互联网从文字时代带入多媒体时代，迅速的一炮而红。更要命的是，网景的老板安德森野心勃发，将一个浏览器'
      '增加成五个软件的套装来卖，里面包含了电子邮件、网页编辑、新闻订阅等等，他甚至对媒体喊话我要将网景打造成网络操作系统，成为互联网时代的微软。”真是有'
      '够嚣张的。比尔盖茨将烟头丢到地上，用脚狠狠踩灭，然后迅速的调集资金和人才，从一家叫望远镜的小浏览器公司那里买来了源代码，改头换面的推出了自己的IE'
      '浏览器，而且这个浏览器是随操作系统赠送的，免费，不要钱。不过两年时间，网景就撑不住了，败下阵来。微软松了一口气，有了上网通道，互联网时代就是我的了'
      '吧？！可惜，历史的走向总是变幻莫测。浏览器并没有为微软贡献一毛钱利润，而在和网景旷日持久的战争中，一家叫雅虎的新闻门户越来越火了。在他1996年上市的'
      '那一天，股价一天就涨了3倍！貌似这才是新时代的主流呢。尼玛呀，要不要这么耍我啊？？？没办法，为了互联网时代的江湖地位，微软再次重操故伎，大洒金钱，买下'
      '了hotmail电子邮箱，做了MSN即时通讯，推出了MSN新闻网站，我也要做门户！雅虎上面有的我都要有，谁也别拦着我！微软花了很多很多钱去买流量，花了很多很多精'
      '力去改进技术，但是…………臣妾做不到啊…………雅虎那丫就是免费的，咱免费也没用，那丫很酷耶，咱微软的都是技术宅，气场不对路。微软花了整整五年在和雅虎的战争上，'
      '使用人盯人的战术，耗费了他所有的精力。然后…………然后，谷歌上市了。比尔盖茨一看谷歌的财报，傻眼了。营收以火箭般的数字蹿升，发展的速度和势头马上就要超过雅虎'
      '了，原来这个搜索引擎才是互联网时代的主流技术啊。可是谷歌已经打下了一片地盘，再想摁已经摁不住了，即使微软在后来推出了bing搜索，也只能徒呼奈何…………到了今天，'
      '微软在互联网时代江河日下，谷歌和facebook大肆收购，花上百亿美元去买下新兴的技术，为的是什么？就是在押宝呀。技术在不断向前升级，哪一个方向才是未来的主流趋势呢？'
      '没有人知道。在历史上，一个公司，能够押中一次宝就可以做成大公司，押中两次宝，就可以做成伟大的公司，押中三次宝的，有且只有一个，那就是IBM。从制表机，到大型机，到个'
      '人计算机，IBM简直可以称之为神算子”。不过，在下一次主流技术趋势明朗之前，这些科技巨头只怕每夜都要提心吊胆。太多的教训历历在目了，好一点的像微软、英特尔、IBM还有'
      '一口饭吃，命运悲催的，像诺基亚、摩托罗拉、朗讯、3com、柯达、黑莓、AOL，就这么凄凄惨惨的要被人凭吊了。对于腾讯来说，也是一样的。小马哥每天都在为这件事情而焦虑。'
      '截至目前，在国内，押中两次宝的就只有腾讯和阿里。阿里押中了淘宝和支付宝，腾讯押中了QQ和微信。在移动互联网时代，腾讯可以稍稍松一口气了，但是在下一个主流技术趋势到来'
      '的时候，还有这个好运气么？是谷歌押宝的智能互联技术吗？是facebook押宝的oculus体感技术吗？是百度发力的大数据技术吗？是腾讯现在发力的移动支付技术吗？'
      '没有人知道。如果小马哥能押中宝，那他就是神了。';

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        centerTitle: true,
        //标题居中
        expandedHeight: 0.0,
        //展开高度200
        floating: false,
        //不随着滑动隐藏标题
        pinned: true,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("问题详情页"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(height: 20.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "   " + title,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  print('onpress');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '查看全部999个回答',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 10.0, child: Text('')),
            Container(
                height: 1.0, decoration: BoxDecoration(color: Colors.grey)),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          print('onpress');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add_box, color: Colors.black),
                            Text('邀请回答', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          print('onpress');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.border_color, color: Colors.black),
                            Text('写回答', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 4.0, decoration: BoxDecoration(color: Colors.grey)),
            Container(
              child: new UserName(
                name: "aa",
              ),
            ),
            ListView(
              primary: false,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                new Container(
                  child: Text(
                    comment,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

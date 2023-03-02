import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'KeepAlivePage.dart';
import 'game_play.dart';


class level extends StatefulWidget {
  const level({Key? key}) : super(key: key);

  @override
  State<level> createState() => _Level_pageState();
}

class _Level_pageState extends State<level> {
  int pageg = 0;
  PageController controller = PageController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(viewportFraction: 0.8,initialPage: pageg,keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("LevelPage"),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: PageView(
          controller: PageController(viewportFraction: 1/1.2,initialPage: pageg,keepPage: true),
          children: [
            KeepAlivePage(Page(0)),
            KeepAlivePage(Page(1)),
            KeepAlivePage(Page(2)),
            KeepAlivePage(Page(3)),
          ],
        ),
      ),
    );
  }
}

class Page extends StatefulWidget {

  int pos;
  Page(this.pos);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  bool getdata=false;
  List list=[];
  int lastlevel=0;
  get() async {
    final prefs = await SharedPreferences.getInstance();
    for(int i=0;i<40;i++)
    {
      list.add(prefs.getString('level${i}') ?? "pending");
    }
    lastlevel=prefs.getInt("lastlevel")??0;
    print(lastlevel);
    getdata=true;

    setState(() {

    });
    print(list);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }
  @override
  Widget build(BuildContext context) {
    return getdata?Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(width: 150,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          border: Border.all(width: 5, color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              child: Text(
                "Match ",
                style: TextStyle(fontSize: 30),
              ),
              margin: EdgeInsets.all(10),
            ),
            Divider(
              thickness: 10,
              color: Colors.green,
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if(widget.pos==0)
                    {
                      return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                        child: InkWell(onTap:() {
                          if( list[index]=="win" || (index == (lastlevel+1) && list.contains("win")) || (!list.contains("win") && index==lastlevel))
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Game_Play(index);
                            },));
                          }
                        },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Center(
                              child: Text(
                                "Level ${index+1} ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            width: 150,
                            height: 50,
                            color: list[index]=="win" || (index == (lastlevel+1) && list.contains("win"))?Colors.green:!list.contains("win") && index==lastlevel?Colors.green:Colors.green.withOpacity(0.3),
                          ),
                        ),
                      );
                    }
                    else if(widget.pos==1)
                    {
                      {
                        return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(onTap:() {
                            if(list[index+10]=="win" || index+10 == (lastlevel+1))
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Game_Play(index+10);
                              },));
                            }
                          },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Level ${index+11} ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              width: 150,
                              height: 50,
                              color: list[index+10]=="win" || index+10 == (lastlevel+1)?Colors.green:Colors.green.withOpacity(0.3),
                            ),
                          ),
                        );
                      }
                    }
                    else if(widget.pos==2)
                    {
                      {
                        return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(onTap:() {
                            if(list[index+20]=="win" || index+20 == (lastlevel+1))
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Game_Play(index+20);
                              },));
                            }
                          },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Level ${index+21} ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              width: 150,
                              height: 50,
                              color: list[index+20]=="win" || index+20 == (lastlevel+1)?Colors.green:Colors.green.withOpacity(0.3),
                            ),
                          ),
                        );
                      }
                    }
                    else if(widget.pos==3)
                    {
                      {
                        return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(onTap:() {
                            if(list[index+30]=="win" || index+30 == (lastlevel+1))
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Game_Play(index+30);
                              },));
                            }
                          },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Level ${index+31} ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              width: 150,
                              height: 50,
                              color: list[index+30]=="win" || index+30 == (lastlevel+1)?Colors.green:Colors.green.withOpacity(0.3),
                            ),
                          ),
                        );
                      }
                    }
                    else {

                    }

                  },
                ))
          ],
        ),
      ),
    ):Container();
  }
}
/*
   return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                      child: InkWell(onTap:() {
                        if(list[index]=="win" || index == (lastlevel+1))
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Game_Play(index);
                            },));
                          }
                      },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: widget.pos==0?Text(
                              "Level ${index+1} ",
                              style: TextStyle(color: Colors.white),
                            ):
                            widget.pos==1?Text(
                              "Level ${index+11} ",
                              style: TextStyle(color: Colors.white),
                            ):
                            widget.pos==2? Text(
                              "Level ${index+21} ",
                              style: TextStyle(color: Colors.white),
                            ):widget.pos==3?
                            Text(
                              "Level ${index+31} ",
                              style: TextStyle(color: Colors.white),
                            ):null,
                          ),
                          width: 150,
                          height: 50,
                          color: list[index]=="win" || index == (lastlevel+1)?Colors.green:Colors.green.withOpacity(0.3),
                        ),
                      ),
                    );
 */
/*
 if(widget.pos==0)
                    {
                      return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                        child: InkWell(onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Game_Play(index);
                          },));
                        },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Center(
                              child: Text(
                                "Level ${index+1} ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            width: 150,
                            height: 50,
                            color: Colors.green,
                          ),
                        ),
                      );
                    }
                    else if(widget.pos==1)
                    {
                      {
                        return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Game_Play(index+10);
                            },));
                          },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Level ${index+11} ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              width: 150,
                              height: 50,
                              color: Colors.green,
                            ),
                          ),
                        );
                      }
                    }
                    else if(widget.pos==2)
                    {
                      {
                        return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Game_Play(index+20);
                            },));
                          },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Level ${index+21} ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              width: 150,
                              height: 50,
                              color: Colors.green,
                            ),
                          ),
                        );
                      }
                    }
                    else if(widget.pos==3)
                    {
                      {
                        return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                          child: InkWell(onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Game_Play(index+30);
                            },));
                          },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Level ${index+31} ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              width: 150,
                              height: 50,
                              color: Colors.green,
                            ),
                          ),
                        );
                      }
                    }
                    else {

                    }
 */
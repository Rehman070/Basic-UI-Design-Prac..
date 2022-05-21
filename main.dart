import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    title: "Mobile Design",
    theme: ThemeData(primarySwatch: Colors.yellow),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double rotatex = 0;
  double rotatey = 0;
  double rotatez = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Design'),
      ),
      backgroundColor: Colors.black,
      body: Column(children: <Widget>[
        Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 3000),
              transform: Matrix4.translationValues(0, 0, 0)
                ..rotateX(rotatex)
                ..rotateY(rotatey)
                ..rotateZ(rotatez),
              height: 140.0,
              width: 140,
              margin: EdgeInsets.only(left: 75.0, top: 30.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'data:image/jpeg;base64,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')),
                border: Border.all(
                    color: Colors.white, width: 2.0, style: BorderStyle.solid),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.white,
                    offset: Offset(4, 6),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
                duration: Duration(milliseconds: 3000),
                transform: Matrix4.translationValues(0, 0, 0)
                  ..rotateX(rotatex)
                  ..rotateY(rotatey)
                  ..rotateZ(rotatez),
                height: 140.0,
                width: 140.0,
                margin: EdgeInsets.only(left: 50.0, top: 30.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjBYeugU1CE6Qwwt1z6A94R_r_1l-2rKqNCA&usqp=CAU')),
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10.0,
                        offset: Offset(4.0, 6.0)),
                  ],
                ))
          ],
        ),
        Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 3000),
              transform: Matrix4.translationValues(0, 0, 0)
                ..rotateX(rotatex)
                ..rotateY(rotatey)
                ..rotateZ(rotatez),
              height: 140.0,
              width: 140,
              margin: EdgeInsets.only(left: 75.0, top: 30.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgVFRUZGBgZHBoYGhoZGBgaGBgaGBgaGRgZHBgcIS4lHB4rHxocJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzQrJCM0NDE2PTE0NDY2NT00Nj00NjQ0NDQxNDQ2NDM0MTQ/NDE0NDY0NDQ0NDQ0PT80NDQxNP/AABEIAQ4AuwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBAUGBwj/xAA7EAABAwIDBgQEBAQGAwAAAAABAAIRAyEEMUEFElFhcZEGIoHwEzKhsUJywdFSYoLhBxQjkqLxFkOj/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAIBAwT/xAAfEQEAAwADAQADAQAAAAAAAAAAAQIRAxIhMSJRYQT/2gAMAwEAAhEDEQA/APIQ3XRNj3CsMAvfL3ChI6oIyEieQmQgRKlhEIGwnDLkhLmga5yFKWWkTzTmYckTkNCTn0GaCHdShhOQVkU2gGbkKJ9S0AABAz4LuXcJvw3cEu/7M/qgVT7n7IGmm4aFMUr3HU/QJkoGoSkpbIGoSpEAhCEAShOi0pqC6B1Ubhy+qkLOX1SEdEERHRNhSu9E2EDfeSE8eqQjqgan0qD3fK0n3zU2FwheYyAzOccIGpOQC6PDYINDgBG40E6mXNLvQNaO7p4IKGDwFIML3y/dtAsC6WiBxu8DvcJuLrMDAGAB1wSMyTaAeQt6yrYpuFF4jzNdUZbUtFImPViy61MsJvdjRloTu/ZzwgqupXgmSMwPlbGYJ1PTuoHkaBPafmHKO/8Aa3qo93U5ac+n7oGE+4Sbyfu/2HH+yaRw7oEhNhKkQCAhCAKJQhAIQiUAlhJKEGgHCbR7zTTHsJ3r9EpB5oGO9eyi7qVw690wj3KBAOvdSUaRe9rGgbznBouYkmOyjHouu/w9wDH1n1HgH4cEDOCWVHT/AMEA3ZjKRawSZcN4nM5E27i2trwrrqo3XtA81SqWEjhIYT08tuoVisGmsC82G7fkTvuI4EZ/0BYuLqbn53E6nyEiGj+lp3j/ADEDS4SVqgIaMr1Kr+TnvLo5wHD/AGFYD6075I+ePSHbx+wHZawwtV9mMMG0xw4/W/MqUeGnkXPpp7CDlHHub98ku5x17ngAuldsAATrzy6zrks2rhIOY4Sf0jIIMw68eWg5fuouvZWMRRcDf6fdVzyCBrimoIQgEIQgEIQgEIQgAiUBCDUDeqRw5HunFvL6oIHKEEL28h3UZHRSujl2THH3CBk9Oy6fwJjgyu5hJmo0sAAPmJY8AdZcD6FcxPVek/4O7E36lTGPbLaQ+HTnI1HjzEc2sP8A9Ag0cL4XrPeajiGAgBs3iGgB1soH6qxhvD1JjvKzeeM3G+etx7+q72sG62gbosYAzMWss6pTYCSDE8jn6oMF2Btw5Xm3RVq9EQftHDjxW9XNv79p0955LCx9SRDTB06DUaQgwMcRBtImDnr++Uc1zu0A3P8A7vz/AF5LfxrwW3ty4TyXN4zFXOvUcigy6zgRcZdx+ioVTzn3z/RT13mTFuHsKs93G5+3rqUEJSIKEAhCEAhCEAhOtCQBAiEIQa9uSR3UT0VlhEXOXLuoqjevb3wQQkH2FC/1VipkLHuoHj3KCB3r3X0z4O2OMLgsPRIhwaHv51H+Z3YmP6Qvm/AMDq1NrgCHPYCJzBcJC+oaWK+KxrmCz27wJMWN8h/ZG5OabWcL+qz67ARfL0VnGU3taYc0R/KT+q5bb+13Yak+q475aBDQ1ouTAkkGB+2iTOERs5C7i3brTw4CJMaT7zWBQBe52/mTkMo0Am5gcpXH4zxZXNy9t5I8oaANIF5Vdm2MaDvim57Zz3HgHoQR9Api0S6W4pr9x0HiFm7pHDn10m3f0K4jGngdD9Qulo+I215ZVZuOOTXWJgWAcR5vUSOaxce1oJHrce/eqpyYFUXUDwrtYSZA9J/VVHD37zQQlCUpEAhCEAhCEAhCCgVCREoOjpjjvellDWB4H/cpgOX/AC6KN4HL1PNBVcNf19VC5vRWHxy9AoXnn9EE2xWF2JoNES6rSA6l4Auvf/DL3tw7GPBDmue0gzPzvgR70Xh3hBoOPwsmB8WmctQZH1AX0Fi27u5BvvSeJgjiVme6rv8Aj1/ulxDnuny7h4kggdisLaeBa5rmvIeCLgtEAe+PBbOJxA3qgda7SPUH+657xPj2UqLi50SQAG/M45QyfxG99LnRbmp3HH4rHUqD3UcNTZ8QNh1Utb/pwDMGJc+NSYBOpEB3hraoqFlJ+cQzeJMwTLDJ+bUHUdAuXG0Gta/e+Z5JLmiYB/DwgWiSsw13NAcPlkEOE+VwMg8iu3WsVxy7Wm2u82xg2OPmYHfmEuZERmM8vZlcrj2XPv8A6W7hfErK9MCsIeBG+MnRxjI3nIjpmszFhrySPp+2vZcpjHSJ1hvYOipVqfZXcQy9jl79FCRobcljWc8Jinri6gIQCEIQCIQEoQIhOKagEIQg6AOH8v6JHuBzI4WGqa13PsOqVz5/i7e/ZQQvPuFA49VM/X5lCfXug0Ng1QysKhkFnmZ+YOH6T3XuDttMqsD2mwu4cN7LvIXgFGsWODm6c8xqF1ey9qveWsYQXblS1t8hjHv3QwC87pA4Sq8xE7EvTvEtZzQHtIh7BnztPpMryPxJtSpXqQ4Hy7rd3MWBJnTN5Hou22ftH/MYJ4c4b9BwEC8MeC5om4N2vFv4VwW0HtLnRa9+fPl0WarNUWsYwQ90Xkta0k8hnHr91HiMSyd0MPRxMjj5W2SPcJJtDZMSJMWA9Tfur2yNjGrRe+m5j3w9rqZcwPhwEPYH/NBF4M3tzbJkKtHFsFg1zfy29VMyq6+48g9TB42GSi2hsx1Fo+Id14sGFzS8DMktBO7c6/U2EOF+IWyRLdCRfvw/ZDIStBZeATocwPTiq7w6ZPfUzqtLD4J7mkgic4Npt2TKtHdEu7dLFY1jvaoCrde5KqEICEkJZsgIESgpXJAgVyanOKagEIQg2wT/ADJXTz7oAjTueY/ZMLeQ7oGO6fVQmOXdSPP5VEXdI6IEPotTwniWU8XTe8bzW70CS2XOBY2HDIy6Z5LKnmeyBULSHNJDmneB4FpkHuEHtvhZtKo3GuZh2sbuUwSXb5eYeciAG7ulvxLyzarGCu9sQN42nmva8FhG4fC4hwgiq8vY0WhjmMIbyAdvei8T2kyajnSDJJ/fqtnN8ZG566PYPhtkPcTvh7HN4QHsc0GepCwhTfTa+lDWP3iCHeRwi2pBH2Wj4c2i+nUABhvywRIdNiD7su323sMYqkKjD/rsadzKHgD5Hg2OVjnbgqraI8lNomfjx/8AyL3O3dSYABBkk5ANmTP3XoG1NlNYwU2MAMNba8QImffZc5s6hXe8PZ8wMgmPLpIGQn98l6FsPZYYfiVnl7oEDQn7TNuAnuvkTja+xqg7ZtOnh4qMG8RY/a4vOsc9V55tN1yBllxuMl2vi3arnw2eOWmcCPf7cTWpOHzC5vfhPvv1UKZz2yqdRaFWypVBwQQpzUoYnbqBu6goJCYSgEIQgEQnb1oj116JqDdDQNG669f2THEcR6BTNOk9go3dTrogrunj9FGfXspng/zKIt5fVAxw6qN2R9dU8jl9VqeFcO2pjKDXxu74c4cQwF8Hkd2PVGxGzj1bbXiJlDDUKGIB3/hMFTdvuv3RNtbyF5Zj8YwOljpadYIjlcLo/H1YPqOMg34n3P7rgKgOiittejm4opmfp1OHbXpQ9zIB0cQHiRY7puLcRK9L8F49lVpa0kFkHdMa6g8LemsWXi9PGFzyXOMOu6STJ4/m5rp/Bm0zTxLbnccY1tIgmOB1Hroqh57Rkug2Rh/hvrb4O7JBn8xI5aHsFbp7b35bG6LgAAnt6HWM1f8AEGB3ahe35arTJE/O0SHH0JHquNxEsdY3Dp5kdOCu07OprGRi1iCHODi3etIJJmdbfrzC53HuLnknp2ELcxWJhpMk8/W9/eZ4LBc8SS6wz4Spaza1OTAVWoxa7GAkmffqqWLjQoKbRGd0yoptzimVxA6oKrkiVyRAIQhAIQiEHQ78mwd0tCjc0/zd05nT/kEjug7+iCB7dY+qhcOndTOH5VE89O3vmgiPoko1Sxwe0w5pBBAySuPP6KM+qDdwdJ2Nqso0pNR0taxzrEtaXHzG0QDnCk2x4XxGGeGPZB4BzXONpvumByE81D4LxjaOOw1RxIa2q3eMEwHeU2F9V6V4l8RUH4umWtL2gPc5/wAoa34Tg2xEm51hTlau+8nLHka8zwmyT5XOLbiQ29uHU/uup8P7MY12+bkcLDn6qltnar3va+nSphrmMO60kkQxonMQqNLxTVZ+Bmeu9p0KdoTbivH2Hpn+Z+LTNFx89PzsOrqf6ls7vMFvNcBinu+I4G3Gfp6c1S/8wrB4qBjA9uR85aZsQRvcJGeqobU2i+oWvkNkfhERyuSdIz0W9oTHHLYxuKYxgl/msRqXflZ+p7rJFNz/ADuEDNjeWjnHWym2VhmO3S9smZvcvvaeSv7Se255/RIZaIj4yajoET1VN9z9c/3CfWqA+9eKpPqaTZalI+oq1R85pYc75WuPQE/ZPbgnnMRzJhBUKFdGC4vaOMSUx2FA/EgqoUz2Ac1HZA1LKWRwTZQbbY5dynOcOIz4XUbCeI7d0rncz2QMc7n2CjcevZSE3/EmEHge6CJ/qoHe7qZ7fcqE+iBAYMi0azcLpcBSZXbv1Kjmn5IaQAYALiZBsZFgM5XMStTY9cjeaCAZDhPKx/T0lRePN/T0/wCa35ZPyWhidnUm3d8QyAASW2AsMo0+yo0sG6o4ikxxAzMkAdXEwFu4bZRf565O5+GnMOI0LjoI0F+iu1azQN1oAaMmgAAegU1rP2ZXz81dysOZrbJLc3ieABcP9xIUTd1oDXgmMiANeIn3K1q9USqNRk3+i6dYeXvZG3aLW3DSSMpiO0KOriiRvPyOTRIz1JBuoa1PiqdRpC1K38dg/wDWD1Lv3U+HrUxlTA+pGsSc1lbw1t9k5rig2au0GgbrbCJt+3oqlfHg5A+qzy5McUE7683TX1FAhApckQhAIQiEG01piZPYdE14/N3HJS4ZxggTxME+/wDpRVnToMoN0DfT6pj45d0PItYSkJ6dkEVQ9FC73ZSPdz+ijKBpK63YOxxTaK1Uec3Y0/gGjiP4jw0njlU8M7JDv9eoPI0ncBye5uZ5tH1PQrU2ljud9fv+3ZA/E4qZOmQ581m18WqFbFnL1VF9eUF6rilB/miqLqpKQuKC98Ua3UVRoIkKIMKmo03EoKVRqjBVvGshyqFAu8lhNQgUhIhCAQhCAQhCDVpvi9u6KrhOhUQdwI7ILuaAa/n9PfNBPP6Jk9Us9UDHA81bwOzTUrsoh13HznRgF3nnAB9bKCg2XtB4z2v+i6Lwy3cpVcQbOe4sZOgBD3n1O6P6XILm1cU1jQxlmMbutGcAZGdSYuuUxWLJKdjsaXuMTBNh+ilw+yHGHP8AIOBu7tp69kGfvE81Yp7PedI6kLWa2kywbJ4kz9BZQ1dqAZCOgAQMpbHb+J49AT9ldpYCi3+J3Rpj6rKqbXOghRnaz9D9EHQswtE23e/fRR4ipTY0xBXNux7zcuKrvqE5lBLiqu84kKuhCAQhCAQhCAQhCAQhCC8HdUOd1+yQAxN+/v2Ex3u6BT0PdB93TR6JCeiCxg83Oj5WPIjKS0gA9yugrUnGjRw9JpL90F17N3vM4uOnmcR6LI2bhS8FoEl72sEA6eZxmMt2Tnou5qBrJDREmXHi7meWg0QYeE2Uyhf5n6vOh4NGnXNQ4oEyr+JqAC6zMRiQgo16Wd1QqUwp6+I5qk98oEdTCBQlM3k5tSEA+hCiLU+pUJUcoEhCWUiAQhCAQhCAQhCAQhCDVoUC4EOgNA3vmAz1AmCeRubqn2U9PWMuHNV3z7CAB9wiUStXC7AquAc7yN/n+Y/0C/eEG34ToFrPikRO81pMSSTc5aNtnk5W8bidJUD6gYxrGmGMG6PufUkk9SsfFVZ1QJi8ZJWXVxCMSTzVJzkD3vUcoKRASlLkiEAhCAgChCEAhCEAhCEAhCEAhCEF0uv5bCO6jeDrPqlovhwJyB1v1t6rW2fs5sfGqDyZtafxcCR/D9+mYWfD+zmtitUF82NOQ/nI1PAevBa2JxwOV1i4nHk6qhVxRKDTxGJBWdVeFTfXKic8oJn1OarOQXJsoFITU/elMKBEIhCAQhCAQhCAQhCAQhCAQhCAQhO3Sg3MJsosIdVg8GAzJ4OOUchKsbQxDnZuHT+yr1qxOqoVaxQNrVDxUBckcUwlAsolNlEoFTUsoQK0pqEICUIQgEIQgEIQgEIQgEIQgEIQgApWtCiVuifKLBB//9k=')),
                border: Border.all(
                    color: Colors.white, width: 2.0, style: BorderStyle.solid),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.white,
                    offset: Offset(4, 6),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
                duration: Duration(milliseconds: 3000),
                transform: Matrix4.translationValues(0, 0, 0)
                  ..rotateX(rotatex)
                  ..rotateY(rotatey)
                  ..rotateZ(rotatez),
                height: 140.0,
                width: 140.0,
                margin: EdgeInsets.only(left: 50.0, top: 30.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjBYeugU1CE6Qwwt1z6A94R_r_1l-2rKqNCA&usqp=CAU')),
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10.0,
                        offset: Offset(4.0, 6.0)),
                  ],
                ))
          ],
        ),
        Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 3000),
              transform: Matrix4.translationValues(0, 0, 0)
                ..rotateX(rotatex)
                ..rotateY(rotatey)
                ..rotateZ(rotatez),
              height: 140.0,
              width: 140,
              margin: EdgeInsets.only(left: 75.0, top: 30.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'data:image/jpeg;base64,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')),
                border: Border.all(
                    color: Colors.white, width: 2.0, style: BorderStyle.solid),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.white,
                    offset: Offset(4, 6),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
                duration: Duration(milliseconds: 3000),
                transform: Matrix4.translationValues(0, 0, 0)
                  ..rotateX(rotatex)
                  ..rotateY(rotatey)
                  ..rotateZ(rotatez),
                height: 140.0,
                width: 140.0,
                margin: EdgeInsets.only(left: 50.0, top: 30.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjBYeugU1CE6Qwwt1z6A94R_r_1l-2rKqNCA&usqp=CAU')),
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10.0,
                        offset: Offset(4.0, 6.0)),
                  ],
                ))
          ],
        ),
        FloatingActionButton(
          backgroundColor: Colors.yellow,
          hoverColor: Colors.cyan,
          child: Text(
            'Click me!',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            setState(() {
              rotatex += 360;
              rotatey += 360;
              rotatez += 360;
            });
          },
        )
      ]),
    );
  }
}

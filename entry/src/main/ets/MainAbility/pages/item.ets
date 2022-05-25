@Preview
@Entry
@Component
struct Item {
  desc_scroller: Scroller = new Scroller();
  size_scroller: Scroller = new Scroller();

  build() {
    Column({space: 25}) {
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Button("<").backgroundColor("#dcdde8").fontColor(Color.Black);
        Text("Details").fontWeight(FontWeight.Bolder).fontSize(30);
        Image($r("app.media.menu")).objectFit(ImageFit.Cover).width(30).height(30);
      }

      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r("app.media.shoe1")).objectFit(ImageFit.Cover).width(300).height(200);
        // review rate
        Column({space: 5}) {
          Row({space: 5}) {
            Image($r("app.media.star")).width(30).height(30);
            Text("4.8").fontWeight(FontWeight.Bolder).fontSize(20);
          }
          Text("1000 reviews");
        }
        .backgroundColor(Color.White).borderRadius(5).borderWidth(2).borderColor(Color.Grey);
      }
      .width(310)
      .borderWidth(5)
      .borderRadius(20);

      Text("Running Unisex Shoes").fontWeight(FontWeight.Bolder).fontSize(20).width(300);
      Text("₹ 4000").fontWeight(FontWeight.Bolder).fontSize(18).width(200);

      // Description along with the scroller
      Scroll(this.desc_scroller) {
        Text("Random information displayed about the shoe shown in the above picture. The shoe is extremely good in quality and has high endurance. There are three colours availbale of the shoe which are listed below. Delivery might take a fre days depending upon the area in which delivery has to take place.")
        .fontColor("#d9d9d10").fontSize(15);
      }
      .scrollable(ScrollDirection.Vertical).scrollBar(BarState.On).height(100);

      Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}) {
        Text("Colour : ").fontSize(15);
        Column() {
          Radio({group: "Color", value: "black"});
          Text("Black").fontColor(Color.Black)
        }
        Column() {
          Radio({group: "Color", value: "Red"});
          Text("Red").fontColor(Color.Red)
        }
        Column() {
          Radio({group: "Color", value: "Blue"});
          Text("Blue").fontColor(Color.Blue)
        }
        Counter() {
          Text("0");
        }
      }

      Text("Available Sizes").fontSize(15).fontWeight(FontWeight.Bolder);
      Scroll(this.size_scroller) {
        Row({space: 8}) {
          Button("6").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("7").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("8").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("9").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("10").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("11").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
        }
        .height(20);
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On);

      // Actions
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Image($r("app.media.favourite")).padding(3).objectFit(ImageFit.Cover).height(35).width(35).borderWidth(2).borderRadius(20);
        Row() {
          Text("  Add to cart  ").fontSize(12);
          Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(20).height(20);
        }
        .borderWidth(3).borderRadius(8);
      }
    }
    .alignItems(HorizontalAlign.Start)
    .margin(20);
  }
}
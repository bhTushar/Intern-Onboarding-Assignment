@Entry
@Component
struct Index {
  category_scroller: Scroller = new Scroller();
  grid_scroller: Scroller = new Scroller();
  controller: TabsController = new TabsController();

  build() {
    Column({space: 5}) {

      // Start of the page
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(40).height(40).borderRadius(10);
        Image($r("app.media.user")).objectFit(ImageFit.Cover).width(40).height(40).borderRadius(10);
      }
      .padding({bottom: 20});

      Text("Discover our new items.").fontSize(20).fontWeight(FontWeight.Bolder).padding({bottom: 20});

      // Search bar
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        TextArea({placeholder: "Search"}).width(300);
      }
      .padding({bottom: 20});

      // Box 1
      Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}) {
        Image($r("app.media.shoe")).objectFit(ImageFit.Cover).width(70).height(70).borderWidth(1);
        Column() {
          Text("Nike Sneakers Walk-2").fontSize(12).fontWeight(FontWeight.Bolder).width(130);
          Text("Coming Soon...").fontSize(14).fontWeight(FontWeight.Bolder).fontColor(Color.Red).width(130);
        }
        .width(130)
        Column() {
          Toggle({ type: ToggleType.Switch, isOn: false }).width(40).height(15);
          Text("Notify Me").fontColor(Color.Gray).fontSize(13);
        }
      }
      .borderWidth(1)
      .borderRadius(10)
      .height(100)
      .margin({bottom: 20});

      // Categories code
      Text("Categories").fontSize(15).fontWeight(FontWeight.Bolder).margin({bottom: 5});
      Scroll(this.category_scroller) {
        Row({space: 5}) {
          Button("Shoes").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Table").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Cupboard").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Sofa").backgroundColor("#dcdde0").fontColor(Color.Black);
        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin({bottom: 25});

      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Text("Popular Shoes").fontWeight(FontWeight.Bolder).fontSize(15);
        Row({space: 5}) {
          Text("View All").fontWeight(FontWeight.Bolder).fontSize(15);
          Button(">").padding(-1).width(15).height(15);
        }
      }

      // Shoes images code
      Grid(this.grid_scroller) {

        GridItem() {
          Column() {
            Image($r("app.media.shoe1")).objectFit(ImageFit.Cover).width(136).height(130);
            Text(" Running Unisex Shoes").fontWeight(FontWeight.Bolder).fontSize(10);
            Text(" ₹ 4000").fontWeight(FontWeight.Bolder).fontSize(12);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoe2")).objectFit(ImageFit.Cover).width(130).height(130);
            Text(" Running Shoes").fontWeight(FontWeight.Bolder).fontSize(10);
            Text(" ₹ 3000").fontWeight(FontWeight.Bolder).fontSize(12);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoe3")).objectFit(ImageFit.Cover).width(136).height(130);
            Text(" Shoe 3").fontWeight(FontWeight.Bolder).fontSize(12);
            Text(" ₹ 2000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.shoe4")).objectFit(ImageFit.Cover).width(130).height(130);
            Text(" Shoe 4 ").fontWeight(FontWeight.Bolder).fontSize(12);
            Text(" ₹ 2000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
      .height(240);

      // Navigation bar starts here
      Flex({justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row}) {
        Column() {
          Image($r("app.media.home")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Home").fontSize(12);
        }

        Column() {
          Image($r("app.media.categories")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Categories").fontSize(12);
        }

        Column() {
          Image($r("app.media.notif")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Notification").fontSize(12);
        }

        Column() {
          Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Cart").fontSize(12);
        }
      }
    }
    .alignItems(HorizontalAlign.Start)
    .padding(30);
  }
}
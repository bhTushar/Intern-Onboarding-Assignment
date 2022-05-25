@Preview
@Entry
@Component
struct Filter {
  size_scroller: Scroller = new Scroller();
  category_list: SelectOption[] = [
    {value: "Select category", icon: $r("app.media.icon")},
    {value: "Select cat", icon: $r("app.media.icon")}
  ];
  brand_list: SelectOption[] = [
    {value: "Select brand", icon: $r("app.media.icon")},
    {value: "Select br", icon: $r("app.media.icon")}
  ];

  build() {
    Column({space: 20}) {
      Column({space: 20}) {
        // header bar
        Flex({ justifyContent: FlexAlign.SpaceBetween }) {
          Button("<").backgroundColor("#ffb6bdcb").fontColor(Color.Black);
          Text("Filter").fontWeight(FontWeight.Bolder).fontSize(30);
          Image($r("app.media.menu")).objectFit(ImageFit.Cover).width(30).height(30);
        }

        Text("Gender").fontSize(20).fontWeight(FontWeight.Bolder);
        Row() {
          Row({ space: 8 }) {
            Button("Male").backgroundColor("#ff8fa5e5").fontColor(Color.Black).fontSize(15);
            Button("Female").backgroundColor("#ff8fa5e5").fontColor(Color.Black).fontSize(15);
            Button("Other").backgroundColor("#ff8fa5e5").fontColor(Color.Black).fontSize(15);
          }
          .height(20);
        }

        Text("Category").fontSize(20).fontWeight(FontWeight.Bolder);
        Select(this.category_list)
          .selected(0).width(320).height(45).backgroundColor("#ff8fa5e5").borderRadius(20);

        Text("Brands").fontSize(20).fontWeight(FontWeight.Bolder);
        Select(this.brand_list)
          .selected(0).width(320).height(45).backgroundColor("#ff8fa5e5").borderRadius(20);

        Text("Price").fontSize(20).fontWeight(FontWeight.Bolder);
        Column() {
          Text("₹ 2000").fontSize(15).fontWeight(FontWeight.Bolder);
          Slider({
            value: 2000, min: 100, max: 10000, step: 500,
            style: SliderStyle.InSet
          });
        }
        .alignItems(HorizontalAlign.Start)


        Text("Size").fontSize(20).fontWeight(FontWeight.Bolder);
        Scroll(this.size_scroller) {
          Row({ space: 9 }) {
            Button("6").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("7").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("8").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("9").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("10").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("11").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
          }
          .height(20);
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.On);
      }
      .alignItems(HorizontalAlign.Start);


      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Button("Clear");
        Button("Add");
      }
      .margin({top: 40});
    }
    .alignItems(HorizontalAlign.Start)
    .margin(25);
  }
}
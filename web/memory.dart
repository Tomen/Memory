import 'package:polymer/polymer.dart';
import 'memory_card.dart';
import "dart:html";

// Your own main()
main() {
  initPolymer();

  var container = querySelector("#container");

  int size_x = 10;
  int size_y = 10;
  int cardsize_x = 100;
  int cardsize_y = 100;
  int cardoffset_x = 5;
  int cardoffset_y = 5;
 
  List<List<MemoryCard>> matrix = new List<List<MemoryCard>>.generate(size_x, (int x){
      return new List<MemoryCard>.generate(size_y, (int y){
        MemoryCard card;
        card = new Element.tag('memory-card');
        card.style.position = "absolute";
        card.front_html = "Front";
        card.back_html = "Back";

        card.style.top = (y * cardsize_y + (y+1) * cardoffset_y).toString() + 'px';
        card.style.left = (x * cardsize_x + (x+1) * cardoffset_x).toString() + 'px';
                
        container.children.add(card);

        return card;
      }, growable: false);
  }, growable: false);
  

}
import 'package:polymer/polymer.dart';
import 'dart:html';


/**
 * A Polymer click counter element.
 */
@CustomTag('memory-card')
class MemoryCard extends PolymerElement {
  @published String front_html = "1";
  @published String back_html = "2";
  
  MemoryCard.created() : super.created() {
  }
  
  void flipCard(Event e, var detail, Node target) {
    if(target is Element) {
      target.classes.toggle('flipped');      
    }
  }
}


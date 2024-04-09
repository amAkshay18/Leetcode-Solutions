import 'dart:io';

class CharacterNode {
  String data;
  CharacterNode? next;

  CharacterNode(this.data);
}

class SinglyLinkedList {
  CharacterNode? head, tail;

  insertCharacter(String data) {
    CharacterNode newNode = CharacterNode(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  reverse() {
    CharacterNode? current = head, prev = null, next = null;
    if (head == null) {
      return 'linkedlist is empty';
    }
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }

  display() {
    CharacterNode? current = head;
    if (head == null) return 'Linkedlist is empty';
    while (current != null) {
      stdout.write("${current.data}");
      current = current.next;
    }
  }
}

void main() {
  final _singlyLinkedList = SinglyLinkedList();
  String inputString = "Hello World";
  for (int i = 0; i < inputString.length; i++) {
    _singlyLinkedList.insertCharacter(inputString[i]);
  }
  _singlyLinkedList.reverse();
  _singlyLinkedList.display();
}

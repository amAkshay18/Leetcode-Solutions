class Node {
  int data;
  Node? next, prev;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head, tail;
  insertNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  displayForward() {
    if (head == null) {
      print("linked list is empty");
      return;
    }
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  displaybackward() {
    if (head == null || tail == null) {
      print("linked list is empty");
      return;
    }
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }

  deleteNode(int target) {
    if (head == null) {
      print("Linked list is empty");
      return;
    }
    if (head!.data == target) {
      head = head!.next;
      if (head != null) {
        head!.prev = null;
      }
      return;
    }
    Node? current = head;
    while (current != null && current.data != target) {
      current = current.next;
    }
    if (current == tail && current!.data == target) {
      current.prev!.next = null;
      tail = current.prev;
      current.prev = null;
    }
    if (current == null) {
      print("target not found");
      return;
    }
    if (current.prev != null) {
      current.prev!.next = current.next;
    }
    if (current.next != null) {
      current.next!.prev = current.prev;
    }
  }
}

void main() {
  DoublyLinkedList _dl = DoublyLinkedList();
  _dl.insertNode(10);
  _dl.insertNode(20);
  _dl.insertNode(30);
  _dl.insertNode(40);
  _dl.insertNode(50);
  _dl.deleteNode(50);
  _dl.displayForward();
  print("-------------");
  _dl.displaybackward();
}

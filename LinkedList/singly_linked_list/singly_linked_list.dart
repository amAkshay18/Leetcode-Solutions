import 'dart:io';

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SinglyLinkedList {
  Node? head, tail;
  insertNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  deleteNode(int target) {
    if (head == null) return 'linked list is empty';
    if (target == head!.data) {
      head = head!.next;
      return;
    }
    Node? current = head;
    while (current!.next != null && current.next!.data != target) {
      current = current.next;
    }
    if (current.next == null) {
      return 'target not found';
    }
    current.next = current.next!.next;
  }

  reverse() {
    Node? current = head, prev = null, next = null;
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

  insertAfter(int data, after) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return;
    }
    if (tail!.data == after) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    Node? current = head;
    while (current!.data != data) {
      current = current.next;
    }
    newNode.next = current.next;
    current.next = newNode;
  }

  insertBefore(int data, before) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return;
    }
    if (tail!.data == before) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    Node? current = head;
    while (current!.next!.data != data) {
      current = current.next;
    }
    newNode.next = current.next;
    current.next = newNode;
  }

  display() {
    Node? current = head;
    if (head == null) return 'Linkedlist is empty';
    while (current != null) {
      // stdout.write("${current.data} -> ");
      current = current.next;
    }
    stdout.write("NULL");
  }
}

void main() {
  final _singlyLinkedList = SinglyLinkedList();
  _singlyLinkedList.insertNode(1);
  _singlyLinkedList.insertNode(2);
  _singlyLinkedList.insertNode(3);
  _singlyLinkedList.insertNode(4);
  _singlyLinkedList.insertNode(5);
  _singlyLinkedList.insertAfter(15, 5);
  final output = _singlyLinkedList.deleteNode(2);
  print(output);
  _singlyLinkedList.reverse();
  _singlyLinkedList.display();
}

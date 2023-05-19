void main() {
  List<int> array = [1, 2, 2, 2, 3, 5, 5,6];
  sLinkedList list = sLinkedList();
  for (int element in array) {
    list.addData(element);
  }
  print("Before:");
  list.displayData();
  print("After:");
  list.removeDuplicates();
  list.displayData();
}

// Node class
class Node {
  int data;
  Node? next;
  Node({required this.data});
}

// Linked List Class
class sLinkedList {
  Node? head;
  Node? tail;
  //add new Node
  void addData(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  // display node
  void displayData() {
    Node? current = head;
    if (head == null) {
      print("Empty");
    }

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

//remove duplicates in a sorted linked list
void removeDuplicates() {
  Node? current = head;
  if (current == null) {
    return;
  }

  
  while (current!.next != null) {
    if (current.data == current.next!.data) {
      current.next = current.next!.next;
    } else {
      current = current.next!;
    }
  }

  tail = current;
}

  
}

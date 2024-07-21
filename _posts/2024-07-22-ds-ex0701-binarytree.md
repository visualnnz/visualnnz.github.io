---
layout: single
title: Ex0701_BinaryTree
categories: Data_Structures
tags: [Study, Problem_Solving]
author: visualnnz
header:
  teaser: /assets/images/2024-07-21-ds-ex0701-binarytree/0_BinaryTree.jpg
---

# Intro

![0_BinaryTree](/images/2024-07-22-ds-ex0701-binarytree/0_BinaryTree.jpg)

**Binary Tree**: child를 최대 2개까지 가지는 트리

<br>

***

# Sum() & Height()

![2_Sum, Height](/images/2024-07-22-ds-ex0701-binarytree/2_Sum,%20Height.jpg)

**Sum()**: 트리의 모든 노드의 `int`값을 더하는 함수

**Height()**: 트리의 Height를 구하는 함수

<br>

## Sum() 구현

```cpp
int Sum(Node* node)
	{
		if(node)
		{
			int sum = 0;
			sum = node->item + Sum(node->left);
			sum = sum + Sum(node->right);
			return sum;
		}
		else
		{
			return 0;
		}
	}
```

- **Recursive** 특성을 활용하여 Left subtree와 Right subtree로 분할함으로써 **Divide and Conquer** 방식으로 해결했다.
- **종료조건 및 동작**: 변수 node가 NULL값일 경우 → 0을 return.



<br>

## Height() 구현

```cpp
int Height(Node* node)
	{
		if(node)
		{
			return 1 + (Height(node->left) >= Height(node->right) ? Height(node->left) : Height(node->right));
		}
		else
		{
			return 0;
		}
	}
```

- **Recursive** 특성을 활용하여 Left subtree와 Right subtree 중 Height 값이 높은 값을 return하게 함으로써 마찬가지로 **Divide and Conquer** 방식으로 해결했다.
- **종료조건 및 동작**: 변수 node가 NULL값일 경우 → 0을 return.



<br>

***

# Preorder() & Inorder() & Postorder()

**Preorder**, **Inorder**, **Postorder**는 각각 tree traversal의 방식이다

<br>

**Preorder(전위)**: 트리의 각 노드들을 **Node** → Left → Right 순서로 순회한다.

**Inorder(중위)**: 트리의 각 노드들을 Left → **Node** →  Right 순서로 순회한다.

**Postorder(후위)**: 트리의 각 노드들을 Left → Right → **Node** 순서로 순회한다.

<br>

## Preorder() 구현

```cpp
void Preorder(Node* node)
	{
		if(node)
		{
			Visit(node);
			Preorder(node->left);
			Preorder(node->right);
		}
		else
		{
			return;
		}
	};
```

- **Recursive**방식을 활용하면 간단하게 해결된다.
- **종료조건 및 동작**: 변수 node가 NULL값인 경우 해당 Recursive Function 종료



<br>

## Inorder() 구현

```cpp
void Inorder(Node* node)
	{
		if(node)
		{
			Inorder(node->left);
			Visit(node);
			Inorder(node->right);
		}
		else
		{
			return;
		}
	}
```

<br>

## Postorder() 구현

```cpp
void Postorder(Node* node)
	{
		if(node)
		{
			Postorder(node->left);
			Postorder(node->right);
			Visit(node);
		}
		else
		{
			return;
		}
	}
```



<br>

# DeleteTree(Node* node)

트리를 삭제하는 함수.



```cpp
void DeleteTree(Node* node)
	{
		if (node)
		{
			DeleteTree(node->left);
			node->left = nullptr;
			DeleteTree(node->right);
			node->right = nullptr;
			delete node;

			return;
		}
		else
		{
			return;
		}
	}
```

- **Postorder** 방식 활용.
- 각 노드들을 Visit할 때 
  - Step 1. `delete`로 동적할당된 노드를 해제
  - Step 2. `node->left = nullptr;`, `node->right = nullptr`를 통해 Parent 노드와 연결관계 끊기



<br>

***

# LevelOrder()

트리의 각 노드들을 Level 오름차순 && 왼쪽 → 오른쪽 순서로 순회한다.

![4_LevelOrder](/images/2024-07-22-ds-ex0701-binarytree/4_LevelOrder.jpg)

- **Queue**를 활용함으로써 **Non-Recursive**방식으로 문제를 해결했다.

<br>

```cpp
void LevelOrder()
	{
		MyQueue q;
		Node* current = root_;
		q.Enqueue(current);

		Node* deeper = Height(current->left) >= Height(current->right) ? current->left : current->right; // [1]
		while (current)
		{
			Visit(current);
			if (current == deeper) // [2]
			{
				deeper = Height(current->left) >= Height(current->right) ? current->left : current->right;
			}

			if (current->left)
			{
				q.Enqueue(current->left);
			}
			if (current->right)
			{
				q.Enqueue(current->right);
			}

			if (current == q.Rear()) // [3]
			{
				q.Dequeue();
				current = 0x0;
			}
			else
			{
				q.Dequeue();
				current = q.Front();
			}
		}
	}
```

- **[1]**: `Node*`타입의 변수 `deeper`에 Left subtree와 Right subtree중 Height 값이 더 높은 subtree의 root 노드의 주소값을 저장함으로써 최고 Level(트리의 맨 밑바닥)의 노드까지 순회할 수 있도록 했다.
- **[2]**:  현재 노드의 주소값인 `current`값과  `deeper`값이 같을 경우 현재 노드가 root가 되는 subtree의 `deeper`값을 찾아서 `deeper`값을 update한다.
- **[3]**: `current`값이 `q`의 `rear`값과 같을 경우(트리의 Level 순으로 마지막 노드인 경우) `q`를 Dequeue하고 `current`값을 `NULL`로 update함으로써 트리 순회(`while` 문)를 종료하도록 한다.

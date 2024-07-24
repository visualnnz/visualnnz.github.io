---
layout: single
title: Ex0701_BinaryTree
categories: Data_Structures
tags: [Study, Problem_Solving]
author: visualnnz
header:
  teaser: /assets/images/2024-07-22-ds-ex0701-binarytree/0_BinaryTree.png
---

# Intro

**Binary Tree**: child를 최대 2개까지 가지는 트리

![0_BinaryTree](/images/2024-07-22-ds-ex0701-binarytree/0_BinaryTree.png)

- root 노드의 **depth(Level)**를 0으로 보는 관점과 1로 보는 관점으로 나뉜다.
- **Height**: Max Level
- **노드의 degree(차수)**: child 노드의 개수
- **트리의 degree(차수)**: 노드들의 degree 중 가장 큰 degree
- **Leaf node, terminal node(단말 노드)**: child 노드가 없는 노드
- **nonterminal node(비단말 노드)**: child 노드가 있는 노드
- **edge(간선)**: 노드와 노드사이를 잇는 선
- **node(노드)**: 트리의 내용물
- **root node(노드)**:  트리의 Min Level 노드(가장 위에 있는 노드)

<br>

***

# Sum() & Height()

![2_Sum, Height](/images/2024-07-22-ds-ex0701-binarytree/2_Sum,%20Height.jpg)

**Sum()**: 트리의 모든 노드의 `int`값을 더하는 함수

**Height()**: 트리의 Height를 구하는 함수

<br>

## Sum() [My Code]

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

## Sum() [Solution]

```cpp
int Sum(Node* node)
{
	if(!node) return 0;
    return node->item + Sum(node->left) + Sum(node->right);
}
```

- My Code와 비교해보면 불필요한 `int`타입 변수 sum을 선언하지 않고 바로 한 줄의 return 문으로 합침으로써 불필요한 메모리 공간을 할당받지 않고 코드도 간결해졌다.



<br>

## Height() [My Code]

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

## Height() [Solution]

```cpp
int Height(Node* node)
{
	if (!node) return 0;
	return 1 + (Height(node->left) >= Height(node->right) ? Height(node->left) : Height(node->right));
}
```



<br>

***

# Preorder() & Inorder() & Postorder()

**Preorder**, **Inorder**, **Postorder**는 각각 tree traversal의 방식이다

<br>

**Preorder(전위)**: 트리의 각 노드들을 **Node** → Left → Right 순서로 순회한다.

**Inorder(중위)**: 트리의 각 노드들을 Left → **Node** →  Right 순서로 순회한다.

**Postorder(후위)**: 트리의 각 노드들을 Left → Right → **Node** 순서로 순회한다.

<br>

## Preorder()

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

## Inorder()

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

## Postorder()

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

## [My Code]

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

<br>

## [Solution]

```cpp
void LevelOrder()
{
    MyQueue q;
    Node* current = root_;
    while (current)
    {
        Visit(current);
        if (current->left)
            q.Enqueue(current->left);
        if (current->right)
            q.Enqueue(current->right);
        if (q.IsEmpty())
            return;
        current = q.Front();
        q.Dequeue();
    }
}
```



# IterPreorder()

**함수 로직**: Recursive call(재귀호출)을 사용하지 않고 **Stack을 활용**하여 **Preorder** 방식으로 트리 전체를 순회한다.
{: .notice--info}

<br>

## [My Code]

```cpp
void IterPreorder()
	{
		if (!root_) return;

		MyStack s;
		Node* current = root_;
		s.Push(current);

		while (!s.IsEmpty())
		{
			if (!current->visited) // [1]
			{
				Visit(current);
				current->visited = true;

				if (current->left)
				{
					current = current->left;
					s.Push(current);

					continue; // [2]
				}
				else if(current->right)
				{
					current = current->right;
					s.Push(current);
				}
				else // Leaf node
				{
					s.Pop();
					current = s.Top();
				}
			}
			else
			{
				if (current->left && current->right) // [3]
				{
					if ((current->left)->visited && !(current->right)->visited) // [4]
					{
						current = current->right;
						s.Push(current);
					}
					else
					{
						s.Pop();
						if (!s.IsEmpty())
						{
							current = s.Top();
						}
					}
				}
				else // [5]
				{
					s.Pop();
					if (!s.IsEmpty())
					{
						current = s.Top();
					}
				}
			}
		}
	}
```

- **[1]**: 현재 노드가 이미 **방문된것(visited == true)인지 아닌지**에 따라 분기한다.
- **[2]**: 현재 노드의 Left child가 존재한다면 Left child노드로 이동함으로써 `continue` 를 통해 이후의 명령문들을 스킵한다.
- **[3]**: child node를 두개 가지는 nonterminal node
- **[4]**: tree의 root node or subtree의 root node
- **[5]**: child node를 하나만 가지는 nonterminal node

<br>

## [Solution]

```cpp
void IterPreorder()
{
    if (!root_)
        return;
    
    MyStack s;
    s.Push(root_);
    
    while (!s.IsEmpty())
    {
        Node* current = s.Top();
        s.Pop();
        
        Visit(current);
        
        if (current->right)
            s.Push(current->right);
        if (current->left)
            s.Push(current->left);
    }
}
```

- Stack의 **Last In First Out 특성을 이용**하여 Left → Right가 아니라 **역순으로** Right child부터 Push하고 Left child를 Push했다.



# IterInorder()

**함수 로직**: Recursive call(재귀호출)을 사용하지 않고 **Stack을 활용**하여 **Inorder** 방식으로 트리 전체를 순회한다.
{: .notice--info}



## [My Code]

```cpp
void IterInorder()
	{
		if (!root_) return;

		MyStack s;

		Node* current = root_;
		while (current || !s.IsEmpty())
		{
			if (!current->visited)
			{
				s.Push(current);
				if (current->left)
				{
					if ((current->left)->visited)
					{
						Visit(current);
						current->visited = true;
						if (current->right)
						{
							if (!(current->right)->visited)
							{
								current = current->right;
							}
							else
							{
								s.Pop();
								current = s.IsEmpty() ? nullptr : s.Top();
							}
						}
						else
						{
							s.Pop();
							current = s.IsEmpty() ? nullptr : s.Top();
						}
					}
					else
					{
						current = current->left;
						continue;
					}
				}
				else // Left child가 없고 Right child만 있는 경우 or Leaf node
				{
					Visit(current);
					current->visited = true;
				}
			}
			else
			{
				if (current->right)
				{
					if (!(current->right)->visited)
					{
						current = current->right;
					}
					else
					{
						s.Pop();
						current = s.IsEmpty() ? nullptr : s.Top();
					}
				}
				else // Leaf node
				{
					s.Pop();
					current = s.IsEmpty() ? nullptr : s.Top();
				}
			}
		}
	}
```

<br>

## [Solution]

```cpp
void IterInorder()
{
    if (!root_)
        return;
    
    MyStack s;
    
    Node* current = root_;
    while (current || !s.IsEmpty())
    {
        while (current)
        {
            s.Push(current);
            current = current->left;
        }
        
        current = s.Top();
        s.Pop();
        
        Visit(current);
        
        current = current->right;
    }
}
```



<br>

# IterPostorder()

**함수 로직**: Recursive call(재귀호출)을 사용하지 않고 **Stack을 활용**하여 **Postorder** 방식으로 트리 전체를 순회한다.
{: .notice--info}



## [Solution]

```cpp
void IterPostorder()
{
    if (!root_)
        return;
    
    MyStack s1, s2;
    
    s1.Push(root_);

		while (!s1.IsEmpty())
		{
			// TODO:
			Node* node = s1.Top();

			s1.Pop();

			s2.Push(node);
			
			if (node->left)
			{
				s1.Push(node->left);
			}
			if (node->right)
			{
				s1.Push(node->right);
			}
		}

		while (!s2.IsEmpty())
		{
			// TODO:
			Node* node = s2.Top();
			Visit(node);
			s2.Pop();
		}
}
```


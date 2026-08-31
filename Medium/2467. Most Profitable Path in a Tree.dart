// Java Solution

// class Solution {
//     public class Node {
//         int cost, time, node;
//         Node(int c, int t, int n) {
//             this.cost = c;
//             this.time = t;
//             this.node = n;
//         }
//     }

//     public int mostProfitablePath(int[][] edges, int bob, int[] amount) {
//         // create a adj list
//         int n = amount.length; // number of nodes
//         ArrayList<Integer>[] adj = new ArrayList[n];
//         for (int i = 0; i < n; i++) {
//             adj[i] = new ArrayList<>();
//         }
//         for (int[] i : edges) {
//             adj[i[0]].add(i[1]);
//             adj[i[1]].add(i[0]);
//         }

//         // record time of bob arriaval: DFS
//         int[] timeStamp = new int[n];
//         Arrays.fill(timeStamp, Integer.MAX_VALUE);
//         dfs(timeStamp, bob, 0, -1, adj);
//         // print(timeStamp);

//         // record cost of allice travel: BFS
//         Queue<Node> qn = new LinkedList<>();
//         qn.add(new Node(0, 0, 0));
//         boolean[] visit = new boolean[n];
//         int ans = Integer.MIN_VALUE;
//         while(!qn.isEmpty()) {
//             Node cur = qn.poll();
//             if (visit[cur.node]) { // already visited this node
//                 continue;
//             }

//             visit[cur.node] = true; // make it visited
//             // calculate cost to open the gate
//             int costToOpen = 0;
//             if (timeStamp[cur.node] == cur.time) { // bob and allice arrived at same time
//                 costToOpen = amount[cur.node] / 2;
//             } else if (timeStamp[cur.node] > cur.time) { // bob arrived after allice
//                 costToOpen = amount[cur.node]; // full amount
//             } // else: bob arrived before: amount = 0;

//             if (cur.node != 0 && adj[cur.node].size() == 1) { // its a leaf node 
//                 ans = Math.max(ans, costToOpen + cur.cost);
//                 // System.out.println(ans);
//             }

//             for (int i : adj[cur.node]) {
//                 qn.add(new Node(costToOpen + cur.cost, cur.time + 1, i));
//             }
//         }

//         return ans;
//     }

//     boolean dfs(int[] timeStamp, int node, int time, int par, ArrayList<Integer>[] adj) {
//         if (node == 0) {
//             timeStamp[node] = time;
//             return true;
//         }

//         timeStamp[node] = time;
//         for (int i : adj[node]) {
//             if (i == par) {
//                 continue;
//             }

//             if (dfs(timeStamp, i, time + 1, node, adj)) {
//                 return true;
//             }
//         }

//         timeStamp[node] = Integer.MAX_VALUE; //bactracking
//         return false;
//     }

//     void print(int[] arr) {
//         for (int i : arr) {
//             System.out.print(i + " ");
//         }

//         System.out.println();
//     }
// }
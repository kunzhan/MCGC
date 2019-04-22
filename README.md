## Multiview Consensus Graph Clustering
A graph is usually formed to reveal the relationship between data points and graph structure is encoded by the affinity matrix. Most graph-based multiview clustering methods use predefined affinity matrices and the clustering performance highly depends on the quality of graph. We learn a consensus graph with minimizing disagreement between different views and constraining the rank of the Laplacian matrix. Since diverse views admit the same underlying cluster structure across multiple views, we use a new disagreement cost function for regularizing graphs from different views toward a common consensus. Simultaneously, we impose a rank constraint on the Laplacian matrix to learn the consensus graph with exactly *k* connected components where *k* is the number of clusters, which is different from using fixed affinity matrices in most existing graph-based methods. With the learned consensus graph, we can directly obtain the cluster labels without performing any post-processing, such as *k*-means clustering algorithm in spectral clustering-based methods. A multiview consensus clustering method is proposed to learn such a graph. An efficient iterative updating algorithm is derived to optimize the proposed challenging optimization problem. Experiments on several benchmark datasets have demonstrated the effectiveness of the proposed method in terms of seven metrics.

![](figure_01.jpg)

## Citation
We appreciate it if you cite the following paper:
```
@Article{Zhan8052206,
  author =  {Kun Zhan and Feiping Nie and Jing Wang and Yi Yang},
  title =   {Multiview consensus graph clustering},
  journal = {IEEE Transactions on Image Processing},
  year =    {2019},
  volume =  {28},
  number =  {3},
  pages =   {1261--1270},
  doi =     {10.1109/TIP.2018.2877335},
  issn =    {1057-7149},
  month =   {March}
}

```
<a href="https://doi.org/10.1109/TIP.2018.2877335"><img src="https://zenodo.org/badge/DOI/10.1109/TIP.2018.2877335.svg" alt="DOI"></a>

## Contact
https://kunzhan.github.io

If you have any questions, feel free to contact me. (Email: `ice.echo#gmail.com`)

for i = 1000:1000:10000
    x=rand(i);
    t= triu(x)-diag(diag(x));
    M=t+t';
    tic
    G = graph(M)
    nn = numnodes(G);
    [s,t] = findedge(G);
    A = sparse(s,t,G.Edges.Weight,nn,nn);
    [dist,path,pred] = graphshortestpath(A,1);
    figure
    plot(dist)
    eval(['title(''', num2str(i),''')'])
    toc
end

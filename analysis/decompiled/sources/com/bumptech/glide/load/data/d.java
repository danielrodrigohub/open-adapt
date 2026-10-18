package com.bumptech.glide.load.data;

/* JADX INFO: compiled from: DataFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public interface d<T> {

    /* JADX INFO: compiled from: DataFetcher.java */
    public interface a<T> {
        void c(Exception exc);

        void d(T t10);
    }

    Class<T> a();

    void b();

    void cancel();

    p2.a e();

    void f(com.bumptech.glide.g gVar, a<? super T> aVar);
}

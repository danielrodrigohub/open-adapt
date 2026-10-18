package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: compiled from: AssetPathFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> implements d<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f4499h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AssetManager f4500i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public T f4501j;

    public b(AssetManager assetManager, String str) {
        this.f4500i = assetManager;
        this.f4499h = str;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() {
        T t10 = this.f4501j;
        if (t10 == null) {
            return;
        }
        try {
            c(t10);
        } catch (IOException unused) {
        }
    }

    public abstract void c(T t10) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
    }

    public abstract T d(AssetManager assetManager, String str) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public final p2.a e() {
        return p2.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(com.bumptech.glide.g gVar, d.a<? super T> aVar) {
        try {
            T tD = d(this.f4500i, this.f4499h);
            this.f4501j = tD;
            aVar.d(tD);
        } catch (IOException e10) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e10);
            }
            aVar.c(e10);
        }
    }
}

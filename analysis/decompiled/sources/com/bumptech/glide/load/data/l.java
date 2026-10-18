package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: LocalUriFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l<T> implements d<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Uri f4521h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ContentResolver f4522i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public T f4523j;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f4522i = contentResolver;
        this.f4521h = uri;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() {
        T t10 = this.f4523j;
        if (t10 != null) {
            try {
                c(t10);
            } catch (IOException unused) {
            }
        }
    }

    public abstract void c(T t10) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
    }

    public abstract T d(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // com.bumptech.glide.load.data.d
    public final p2.a e() {
        return p2.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(com.bumptech.glide.g gVar, d.a<? super T> aVar) {
        try {
            T tD = d(this.f4521h, this.f4522i);
            this.f4523j = tD;
            aVar.d(tD);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e10);
            }
            aVar.c(e10);
        }
    }
}

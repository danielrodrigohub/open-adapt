package com.bumptech.glide.integration.okhttp3;

import java.io.InputStream;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import p2.h;
import v2.f;
import v2.n;
import v2.o;
import v2.r;

/* JADX INFO: compiled from: OkHttpUrlLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements n<f, InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Call.Factory f4474a;

    public b(Call.Factory factory) {
        this.f4474a = factory;
    }

    @Override // v2.n
    public final n.a<InputStream> a(f fVar, int i10, int i11, h hVar) {
        f fVar2 = fVar;
        return new n.a<>(fVar2, new o2.a(this.f4474a, fVar2));
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(f fVar) {
        return true;
    }

    /* JADX INFO: compiled from: OkHttpUrlLoader.java */
    public static class a implements o<f, InputStream> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static volatile OkHttpClient f4475b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Call.Factory f4476a;

        public a() {
            if (f4475b == null) {
                synchronized (a.class) {
                    if (f4475b == null) {
                        f4475b = new OkHttpClient();
                    }
                }
            }
            this.f4476a = f4475b;
        }

        @Override // v2.o
        public final n<f, InputStream> b(r rVar) {
            return new b(this.f4476a);
        }

        @Override // v2.o
        public final void c() {
        }

        public a(Call.Factory factory) {
            this.f4476a = factory;
        }
    }
}

package com.bumptech.glide.load.data;

import java.io.IOException;
import java.io.InputStream;
import y2.x;

/* JADX INFO: compiled from: InputStreamRewinder.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements e<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f4519a;

    /* JADX INFO: compiled from: InputStreamRewinder.java */
    public static final class a implements e.a<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s2.b f4520a;

        public a(s2.b bVar) {
            this.f4520a = bVar;
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final Class<InputStream> a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final e<InputStream> b(InputStream inputStream) {
            return new k(inputStream, this.f4520a);
        }
    }

    public k(InputStream inputStream, s2.b bVar) {
        x xVar = new x(inputStream, bVar);
        this.f4519a = xVar;
        xVar.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        this.f4519a.Y();
    }

    @Override // com.bumptech.glide.load.data.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final InputStream a() throws IOException {
        this.f4519a.reset();
        return this.f4519a;
    }
}

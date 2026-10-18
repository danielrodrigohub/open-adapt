package com.bumptech.glide.load.data;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: DataRewinderRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e.a<?> f4506b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, e.a<?>> f4507a = new HashMap();

    /* JADX INFO: compiled from: DataRewinderRegistry.java */
    public class a implements e.a<Object> {
        @Override // com.bumptech.glide.load.data.e.a
        public final Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final e<Object> b(Object obj) {
            return new b(obj);
        }
    }

    /* JADX INFO: compiled from: DataRewinderRegistry.java */
    public static final class b implements e<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f4508a;

        public b(Object obj) {
            this.f4508a = obj;
        }

        @Override // com.bumptech.glide.load.data.e
        public final Object a() {
            return this.f4508a;
        }

        @Override // com.bumptech.glide.load.data.e
        public final void b() {
        }
    }
}

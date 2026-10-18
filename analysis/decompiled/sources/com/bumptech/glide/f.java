package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: GlideExperiments.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, Object> f4455a;

    /* JADX INFO: compiled from: GlideExperiments.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<Class<?>, Object> f4456a = new HashMap();
    }

    public f(a aVar) {
        this.f4455a = Collections.unmodifiableMap(new HashMap(aVar.f4456a));
    }

    public final boolean a(Class<Object> cls) {
        return this.f4455a.containsKey(cls);
    }
}

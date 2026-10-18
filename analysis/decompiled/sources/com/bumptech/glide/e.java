package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.o;
import java.util.List;
import java.util.Map;
import r2.m;

/* JADX INFO: compiled from: GlideContext.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends ContextWrapper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final k<?, ?> f4444k = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s2.b f4445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f4446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f4447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c.a f4448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<h3.f<Object>> f4449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map<Class<?>, k<?, ?>> f4450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final m f4451g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f4452h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4453i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public h3.g f4454j;

    public e(Context context, s2.b bVar, h hVar, o oVar, c.a aVar, Map<Class<?>, k<?, ?>> map, List<h3.f<Object>> list, m mVar, f fVar, int i10) {
        super(context.getApplicationContext());
        this.f4445a = bVar;
        this.f4446b = hVar;
        this.f4447c = oVar;
        this.f4448d = aVar;
        this.f4449e = list;
        this.f4450f = map;
        this.f4451g = mVar;
        this.f4452h = fVar;
        this.f4453i = i10;
    }
}

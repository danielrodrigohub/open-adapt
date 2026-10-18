package com.nike.adapt.analytics;

import java.util.Map;
import o7.o;
import o7.u;

/* JADX INFO: compiled from: NikeReporter.kt */
/* JADX INFO: loaded from: classes.dex */
public interface NikeReporter extends o {
    void initialize();

    @Override // o7.o
    /* synthetic */ void log(u uVar, String str, String str2, Map<String, ? extends Object> map, Throwable th, String str3);

    void report(Track track);
}

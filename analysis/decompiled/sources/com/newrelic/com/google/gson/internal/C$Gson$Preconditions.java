package com.newrelic.com.google.gson.internal;

import java.util.Objects;

/* JADX INFO: renamed from: com.newrelic.com.google.gson.internal.$Gson$Preconditions, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class C$Gson$Preconditions {
    public static void checkArgument(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> T checkNotNull(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }
}

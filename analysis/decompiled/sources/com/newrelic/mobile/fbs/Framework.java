package com.newrelic.mobile.fbs;

/* JADX INFO: loaded from: classes.dex */
public final class Framework {
    public static final byte Native = 0;
    public static final byte ReactNative = 1;
    public static final String[] names = {"Native", "ReactNative"};

    private Framework() {
    }

    public static String name(int i10) {
        return names[i10];
    }
}

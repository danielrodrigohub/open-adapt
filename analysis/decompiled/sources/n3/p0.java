package n3;

import java.util.HashSet;

/* JADX INFO: compiled from: ExoPlayerLibraryInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet<String> f11620a = new HashSet<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f11621b = "goog.exo.core";

    public static synchronized void a(String str) {
        if (f11620a.add(str)) {
            f11621b += ", " + str;
        }
    }
}

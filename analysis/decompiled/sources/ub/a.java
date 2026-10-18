package ub;

import ed.e;
import java.util.Objects;
import p4.h;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final C0280a Companion = new C0280a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static e f16097a;

    /* JADX INFO: renamed from: ub.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Logger.kt */
    public static final class C0280a {
        public final void a(String str) {
            h.j(str, "message");
            e eVar = a.f16097a;
            if (eVar == null) {
                return;
            }
            eVar.a(str, null);
        }
    }

    public static final void a(String str) {
        C0280a c0280a = Companion;
        Objects.requireNonNull(c0280a);
        c0280a.a(h.B("warn: ", str));
    }
}

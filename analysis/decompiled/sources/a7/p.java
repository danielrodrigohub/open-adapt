package a7;

import b7.z;

/* JADX INFO: compiled from: OutputPrefixType.java */
/* JADX INFO: loaded from: classes.dex */
public enum p implements z.a {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f486h;

    p(int i10) {
        this.f486h = i10;
    }

    public static p b(int i10) {
        if (i10 == 0) {
            return UNKNOWN_PREFIX;
        }
        if (i10 == 1) {
            return TINK;
        }
        if (i10 == 2) {
            return LEGACY;
        }
        if (i10 == 3) {
            return RAW;
        }
        if (i10 != 4) {
            return null;
        }
        return CRUNCHY;
    }

    @Override // b7.z.a
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f486h;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

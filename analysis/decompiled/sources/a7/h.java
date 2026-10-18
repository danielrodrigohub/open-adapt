package a7;

import b7.z;

/* JADX INFO: compiled from: HashType.java */
/* JADX INFO: loaded from: classes.dex */
public enum h implements z.a {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f463h;

    h(int i10) {
        this.f463h = i10;
    }

    public static h b(int i10) {
        if (i10 == 0) {
            return UNKNOWN_HASH;
        }
        if (i10 == 1) {
            return SHA1;
        }
        if (i10 == 2) {
            return SHA384;
        }
        if (i10 == 3) {
            return SHA256;
        }
        if (i10 != 4) {
            return null;
        }
        return SHA512;
    }

    @Override // b7.z.a
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f463h;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

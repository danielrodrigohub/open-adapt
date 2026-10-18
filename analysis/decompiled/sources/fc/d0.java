package fc;

/* JADX INFO: compiled from: sessions.java */
/* JADX INFO: loaded from: classes.dex */
public enum d0 implements m7.y.a {
    UNKNOWN(0),
    WALK(1),
    JOG(2),
    RUN(3),
    SPRINT(4),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7355h;

    d0(int i10) {
        this.f7355h = i10;
    }

    public static d0 b(int i10) {
        if (i10 == 0) {
            return UNKNOWN;
        }
        if (i10 == 1) {
            return WALK;
        }
        if (i10 == 2) {
            return JOG;
        }
        if (i10 == 3) {
            return RUN;
        }
        if (i10 != 4) {
            return null;
        }
        return SPRINT;
    }

    @Override // m7.y.a
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f7355h;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

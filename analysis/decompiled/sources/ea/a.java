package ea;

/* JADX INFO: compiled from: AdaptKitDetectedMode.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f6603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnumC0120a[] f6604b;

    /* JADX INFO: renamed from: ea.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitDetectedMode.kt */
    public enum EnumC0120a {
        LACE_PERCENT_LEFT_REQUIRED,
        LACE_PERCENT_RIGHT_REQUIRED,
        COLOR_LEFT_REQUIRED,
        COLOR_RIGHT_REQUIRED
    }

    public a(e eVar, EnumC0120a... enumC0120aArr) {
        p4.h.j(enumC0120aArr, "reasonForNotDetected");
        this.f6603a = eVar;
        this.f6604b = enumC0120aArr;
    }
}

package v7;

/* JADX INFO: compiled from: OnBoarding.kt */
/* JADX INFO: loaded from: classes.dex */
public enum h {
    NORMAL(new f()),
    NORMAL_WITH_ORTHOTICS(new e()),
    SETTINGS_ADD_PAIR(new a()),
    ADD_PAIR_WITH_ORTHOTICS(new e()),
    SETTINGS_CALIBRATE(new l()),
    SETTINGS_CALIBRATE_WITH_ORTHOTICS(new e()),
    MODES_CALIBRATE(new l()),
    MODES_CALIBRATE_WITH_ORTHOTICS(new e());


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f16411h;

    h(j jVar) {
        this.f16411h = jVar;
    }

    public final boolean b() {
        return this == SETTINGS_CALIBRATE || this == SETTINGS_CALIBRATE_WITH_ORTHOTICS;
    }
}

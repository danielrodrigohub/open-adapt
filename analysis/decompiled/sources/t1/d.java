package t1;

/* JADX INFO: compiled from: Preference.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f15334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f15335b;

    public d() {
        this.f15334a = "reschedule_needed";
        this.f15335b = 0L;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.f15334a.equals(dVar.f15334a)) {
            return false;
        }
        Long l10 = this.f15335b;
        Long l11 = dVar.f15335b;
        if (l10 != null) {
            return l10.equals(l11);
        }
        return l11 == null;
    }

    public final int hashCode() {
        int iHashCode = this.f15334a.hashCode() * 31;
        Long l10 = this.f15335b;
        return iHashCode + (l10 != null ? l10.hashCode() : 0);
    }

    public d(String str, long j10) {
        this.f15334a = str;
        this.f15335b = Long.valueOf(j10);
    }
}

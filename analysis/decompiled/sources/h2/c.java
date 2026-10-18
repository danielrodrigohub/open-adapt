package h2;

/* JADX INFO: compiled from: FileExtension.java */
/* JADX INFO: loaded from: classes.dex */
public enum c {
    JSON(".json"),
    ZIP(".zip");


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8111h;

    c(String str) {
        this.f8111h = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f8111h;
    }
}

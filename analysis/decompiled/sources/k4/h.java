package k4;

/* JADX INFO: compiled from: Id3Frame.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h implements f4.a.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9676h;

    public h(String str) {
        this.f9676h = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f9676h;
    }
}

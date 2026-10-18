package m4;

/* JADX INFO: compiled from: SpliceCommand.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements f4.a.b {
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SCTE-35 splice command: type=");
        sbC.append(getClass().getSimpleName());
        return sbC.toString();
    }
}

package w3;

import n3.i1;
import s3.w;

/* JADX INFO: compiled from: TagPayloadReader.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f17109a;

    /* JADX INFO: compiled from: TagPayloadReader.java */
    public static final class a extends i1 {
        public a(String str) {
            super(str, null, false, 1);
        }
    }

    public d(w wVar) {
        this.f17109a = wVar;
    }

    public final boolean a(m5.w wVar, long j10) throws i1 {
        return b(wVar) && c(wVar, j10);
    }

    public abstract boolean b(m5.w wVar) throws i1;

    public abstract boolean c(m5.w wVar, long j10) throws i1;
}

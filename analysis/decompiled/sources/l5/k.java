package l5;

import java.io.IOException;

/* JADX INFO: compiled from: DataSourceException.java */
/* JADX INFO: loaded from: classes.dex */
public class k extends IOException {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f10055i = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10056h;

    public k(int i10) {
        this.f10056h = i10;
    }

    public k(Throwable th, int i10) {
        super(th);
        this.f10056h = i10;
    }

    public k(String str, int i10) {
        super(str);
        this.f10056h = i10;
    }

    public k(String str, Throwable th, int i10) {
        super(str, th);
        this.f10056h = i10;
    }
}

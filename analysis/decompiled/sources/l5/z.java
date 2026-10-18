package l5;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: HttpDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class z extends x {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10153k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map<String, List<String>> f10154l;

    public z(int i10, IOException iOException, Map map, m mVar) {
        super(androidx.appcompat.widget.e0.d("Response code: ", i10), iOException, 2004);
        this.f10153k = i10;
        this.f10154l = map;
    }
}

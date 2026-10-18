package s3;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ExtractorsFactory.java */
/* JADX INFO: loaded from: classes.dex */
public interface l {
    static {
        y0.l lVar = y0.l.f18245h;
    }

    h[] c();

    default h[] e(Uri uri, Map<String, List<String>> map) {
        return c();
    }
}

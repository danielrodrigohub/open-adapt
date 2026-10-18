package u4;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: FullSegmentEncryptionKeyCache.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends LinkedHashMap<Uri, byte[]> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f15740h = 4;

    public e(int i10) {
        super(i10, 1.0f, false);
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
        return size() > this.f15740h;
    }
}

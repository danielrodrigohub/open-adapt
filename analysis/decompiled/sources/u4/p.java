package u4;

import java.io.IOException;

/* JADX INFO: compiled from: SampleQueueMappingException.java */
/* JADX INFO: loaded from: classes.dex */
public final class p extends IOException {
    public p(String str) {
        super(a0.d.c("Unable to bind a sample queue to TrackGroup with mime type ", str, "."));
    }
}

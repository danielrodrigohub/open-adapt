package fb;

import android.content.Context;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public interface r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f7293a = 0;

    /* JADX INFO: compiled from: SessionDownload.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f7294a = new a();

        public final int a(Context context, String str, la.b bVar) throws IOException {
            File parentFile;
            p4.h.j(str, "deviceId");
            p4.h.j(bVar, "sessionId");
            File file = new File(b(context), str + "/" + bVar.f10191h);
            if (!file.exists() && (parentFile = file.getParentFile()) != null) {
                parentFile.mkdirs();
                file.createNewFile();
            }
            if (file.exists()) {
                return c3.d.n(file).length;
            }
            return 0;
        }

        public final File b(Context context) {
            return new File(context.getFilesDir() + "/adaptkit_session_data");
        }
    }

    /* JADX INFO: compiled from: SessionDownload.kt */
    public enum b {
        SLOW(1500),
        FAST(250);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f7298h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f7299i = 512;

        b(long j10) {
            this.f7298h = j10;
        }
    }
}

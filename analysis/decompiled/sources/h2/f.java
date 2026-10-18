package h2;

import com.newrelic.agent.android.util.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.ZipInputStream;
import y1.i;
import y1.j0;
import y1.q;

/* JADX INFO: compiled from: NetworkFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f8113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f8114b;

    public f(e eVar, b bVar) {
        this.f8113a = eVar;
        this.f8114b = bVar;
    }

    public final j0<i> a(String str, InputStream inputStream, String str2, String str3) throws IOException {
        c cVar;
        j0<i> j0VarF;
        if (str2 == null) {
            str2 = Constants.Network.ContentType.JSON;
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            k2.c.a();
            cVar = c.ZIP;
            j0VarF = str3 == null ? q.f(new ZipInputStream(inputStream), null) : q.f(new ZipInputStream(new FileInputStream(this.f8113a.c(str, inputStream, cVar))), str);
        } else {
            k2.c.a();
            cVar = c.JSON;
            j0VarF = str3 == null ? q.c(inputStream, null) : q.c(new FileInputStream(this.f8113a.c(str, inputStream, cVar).getAbsolutePath()), str);
        }
        if (str3 != null && j0VarF.f18376a != null) {
            e eVar = this.f8113a;
            Objects.requireNonNull(eVar);
            File file = new File(eVar.b(), e.a(str, cVar, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean zRenameTo = file.renameTo(file2);
            file2.toString();
            k2.c.a();
            if (!zRenameTo) {
                StringBuilder sbC = a0.b.c("Unable to rename cache file ");
                sbC.append(file.getAbsolutePath());
                sbC.append(" to ");
                sbC.append(file2.getAbsolutePath());
                sbC.append(".");
                k2.c.b(sbC.toString());
            }
        }
        return j0VarF;
    }
}

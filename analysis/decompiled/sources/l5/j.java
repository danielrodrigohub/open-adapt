package l5;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: DataSource.java */
/* JADX INFO: loaded from: classes.dex */
public interface j extends h {

    /* JADX INFO: compiled from: DataSource.java */
    public interface a {
        j a();
    }

    void close() throws IOException;

    default Map<String, List<String>> h() {
        return Collections.emptyMap();
    }

    void j(j0 j0Var);

    long l(m mVar) throws IOException;

    Uri o();
}

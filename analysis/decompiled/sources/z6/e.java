package z6;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: SharedPrefKeysetWriter.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences.Editor f19375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19376b = "__androidx_security_crypto_encrypted_file_keyset__";

    public e(Context context) {
        this.f19375a = context.getApplicationContext().getSharedPreferences("__androidx_security_crypto_encrypted_file_pref__", 0).edit();
    }
}

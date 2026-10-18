package z6;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.CharConversionException;
import java.io.FileNotFoundException;
import java.io.IOException;
import p4.h;

/* JADX INFO: compiled from: SharedPrefKeysetReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f19373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19374b = "__androidx_security_crypto_encrypted_file_keyset__";

    public d(Context context) throws IOException {
        this.f19373a = context.getApplicationContext().getSharedPreferences("__androidx_security_crypto_encrypted_file_pref__", 0);
    }

    public final byte[] a() throws IOException {
        try {
            String string = this.f19373a.getString(this.f19374b, null);
            if (string != null) {
                return h.n(string);
            }
            throw new FileNotFoundException(String.format("can't read keyset; the pref value %s does not exist", this.f19374b));
        } catch (ClassCastException | IllegalArgumentException unused) {
            throw new CharConversionException(String.format("can't read keyset; the pref value %s is not a valid hex string", this.f19374b));
        }
    }
}

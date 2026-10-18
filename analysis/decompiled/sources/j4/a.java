package j4;

import androidx.activity.k;
import androidx.fragment.app.r;
import f4.d;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: IcyDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends r {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f9261j = Pattern.compile("(.+?)='(.*?)';", 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharsetDecoder f9262h = t6.c.f15538c.newDecoder();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharsetDecoder f9263i = t6.c.f15537b.newDecoder();

    @Override // androidx.fragment.app.r
    public final f4.a g(d dVar, ByteBuffer byteBuffer) {
        String string;
        String str = null;
        try {
            string = this.f9262h.decode(byteBuffer).toString();
            this.f9262h.reset();
            byteBuffer.rewind();
        } catch (CharacterCodingException unused) {
            this.f9262h.reset();
            byteBuffer.rewind();
            try {
                string = this.f9263i.decode(byteBuffer).toString();
                this.f9263i.reset();
                byteBuffer.rewind();
            } catch (CharacterCodingException unused2) {
                this.f9263i.reset();
                byteBuffer.rewind();
                string = null;
            } catch (Throwable th) {
                this.f9263i.reset();
                byteBuffer.rewind();
                throw th;
            }
        } catch (Throwable th2) {
            this.f9262h.reset();
            byteBuffer.rewind();
            throw th2;
        }
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (string == null) {
            return new f4.a(new c(bArr, null, null));
        }
        Matcher matcher = f9261j.matcher(string);
        String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                String strS = k.s(strGroup);
                Objects.requireNonNull(strS);
                if (strS.equals("streamurl")) {
                    str2 = strGroup2;
                } else if (strS.equals("streamtitle")) {
                    str = strGroup2;
                }
            }
        }
        return new f4.a(new c(bArr, str, str2));
    }
}

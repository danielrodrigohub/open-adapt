package r3;

import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import m5.g0;
import o3.v0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: FrameworkMediaDrm.java */
/* JADX INFO: loaded from: classes.dex */
public final class v implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f14520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaDrm f14521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14522c;

    /* JADX INFO: compiled from: FrameworkMediaDrm.java */
    public static class a {
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        public static void b(MediaDrm mediaDrm, byte[] bArr, v0 v0Var) {
            LogSessionId logSessionIdA = v0Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            MediaDrm.PlaybackComponent playbackComponent = mediaDrm.getPlaybackComponent(bArr);
            Objects.requireNonNull(playbackComponent);
            playbackComponent.setLogSessionId(logSessionIdA);
        }
    }

    public v(UUID uuid) throws UnsupportedSchemeException {
        Objects.requireNonNull(uuid);
        UUID uuid2 = n3.i.f11426b;
        m5.a.b(!uuid2.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f14520a = uuid;
        MediaDrm mediaDrm = new MediaDrm((g0.f10384a >= 27 || !n3.i.f11427c.equals(uuid)) ? uuid : uuid2);
        this.f14521b = mediaDrm;
        this.f14522c = 1;
        if (n3.i.f11428d.equals(uuid) && "ASUS_Z00AD".equals(g0.f10387d)) {
            mediaDrm.setPropertyString("securityLevel", "L3");
        }
    }

    @Override // r3.s
    public final synchronized void a() {
        int i10 = this.f14522c - 1;
        this.f14522c = i10;
        if (i10 == 0) {
            this.f14521b.release();
        }
    }

    @Override // r3.s
    public final boolean b(byte[] bArr, String str) {
        if (g0.f10384a >= 31) {
            return a.a(this.f14521b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.f14520a, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // r3.s
    public final void c(byte[] bArr, byte[] bArr2) {
        this.f14521b.restoreKeys(bArr, bArr2);
    }

    @Override // r3.s
    public final Map<String, String> d(byte[] bArr) {
        return this.f14521b.queryKeyStatus(bArr);
    }

    @Override // r3.s
    public final void e(byte[] bArr) {
        this.f14521b.closeSession(bArr);
    }

    @Override // r3.s
    public final byte[] f(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException {
        if (n3.i.f11427c.equals(this.f14520a) && g0.f10384a < 27) {
            try {
                JSONObject jSONObject = new JSONObject(g0.n(bArr2));
                StringBuilder sb2 = new StringBuilder("{\"keys\":[");
                JSONArray jSONArray = jSONObject.getJSONArray("keys");
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    if (i10 != 0) {
                        sb2.append(",");
                    }
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                    sb2.append("{\"k\":\"");
                    sb2.append(jSONObject2.getString("k").replace('-', '+').replace('_', '/'));
                    sb2.append("\",\"kid\":\"");
                    sb2.append(jSONObject2.getString("kid").replace('-', '+').replace('_', '/'));
                    sb2.append("\",\"kty\":\"");
                    sb2.append(jSONObject2.getString("kty"));
                    sb2.append("\"}");
                }
                sb2.append("]}");
                bArr2 = g0.F(sb2.toString());
            } catch (JSONException e10) {
                StringBuilder sbC = a0.b.c("Failed to adjust response data: ");
                sbC.append(g0.n(bArr2));
                m5.p.d("ClearKeyUtil", sbC.toString(), e10);
            }
        }
        return this.f14521b.provideKeyResponse(bArr, bArr2);
    }

    @Override // r3.s
    public final s.d g() {
        MediaDrm.ProvisionRequest provisionRequest = this.f14521b.getProvisionRequest();
        return new s.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // r3.s
    public final void h(byte[] bArr) throws DeniedByServerException {
        this.f14521b.provideProvisionResponse(bArr);
    }

    @Override // r3.s
    public final void i(byte[] bArr, v0 v0Var) {
        if (g0.f10384a >= 31) {
            try {
                a.b(this.f14521b, bArr, v0Var);
            } catch (UnsupportedOperationException unused) {
                m5.p.g("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:124:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x0095  */
    /* JADX WARN: Code duplicated, block: B:35:0x009c  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:38:0x00af  */
    /* JADX WARN: Code duplicated, block: B:83:0x01a5  */
    @Override // r3.s
    @SuppressLint({"WrongConstant"})
    public final s.a j(byte[] bArr, List<d.b> list, int i10, HashMap<String, String> map) throws NotProvisionedException {
        byte[] bArr2;
        String str;
        int i11;
        d.b bVar;
        a4.i.a aVarB;
        int i12;
        int i13;
        boolean z10;
        byte[] bArrC;
        d.b bVar2 = null;
        if (list != null) {
            if (n3.i.f11428d.equals(this.f14520a)) {
                if (g0.f10384a < 28 || list.size() <= 1) {
                    i11 = 0;
                    while (true) {
                        if (i11 < list.size()) {
                            bVar = list.get(0);
                            break;
                        }
                        d.b bVar3 = list.get(i11);
                        byte[] bArr3 = bVar3.f14487l;
                        Objects.requireNonNull(bArr3);
                        aVarB = a4.i.b(bArr3);
                        if (aVarB == null) {
                            i12 = -1;
                        } else {
                            i12 = aVarB.f322b;
                        }
                        i13 = g0.f10384a;
                        if ((i13 >= 23 && i12 == 0) || (i13 >= 23 && i12 == 1)) {
                            bVar = bVar3;
                            break;
                        }
                    }
                } else {
                    d.b bVar4 = list.get(0);
                    int i14 = 0;
                    int length = 0;
                    while (true) {
                        if (i14 >= list.size()) {
                            z10 = true;
                            break;
                        }
                        d.b bVar5 = list.get(i14);
                        byte[] bArr4 = bVar5.f14487l;
                        Objects.requireNonNull(bArr4);
                        if (g0.a(bVar5.f14486k, bVar4.f14486k) && g0.a(bVar5.f14485j, bVar4.f14485j)) {
                            if (a4.i.b(bArr4) != null) {
                                length += bArr4.length;
                                i14++;
                            }
                        }
                        z10 = false;
                        break;
                    }
                    if (!z10) {
                        i11 = 0;
                        while (true) {
                            if (i11 < list.size()) {
                                bVar = list.get(0);
                                break;
                            }
                            d.b bVar6 = list.get(i11);
                            byte[] bArr5 = bVar6.f14487l;
                            Objects.requireNonNull(bArr5);
                            aVarB = a4.i.b(bArr5);
                            if (aVarB == null) {
                                i12 = -1;
                            } else {
                                i12 = aVarB.f322b;
                            }
                            i13 = g0.f10384a;
                            i11 = i13 >= 23 ? i11 + 1 : i11 + 1;
                            bVar = bVar6;
                            break;
                        }
                    }
                    byte[] bArr6 = new byte[length];
                    int i15 = 0;
                    for (int i16 = 0; i16 < list.size(); i16++) {
                        byte[] bArr7 = list.get(i16).f14487l;
                        Objects.requireNonNull(bArr7);
                        int length2 = bArr7.length;
                        System.arraycopy(bArr7, 0, bArr6, i15, length2);
                        i15 += length2;
                    }
                    bVar = new d.b(bVar4.f14484i, bVar4.f14485j, bVar4.f14486k, bArr6);
                }
            } else {
                bVar = list.get(0);
            }
            UUID uuid = this.f14520a;
            byte[] bArrA = bVar.f14487l;
            Objects.requireNonNull(bArrA);
            UUID uuid2 = n3.i.f11429e;
            if (uuid2.equals(uuid)) {
                byte[] bArrC2 = a4.i.c(bArrA, uuid);
                if (bArrC2 != null) {
                    bArrA = bArrC2;
                }
                m5.w wVar = new m5.w(bArrA);
                int iG = wVar.g();
                short sI = wVar.i();
                short sI2 = wVar.i();
                if (sI == 1 && sI2 == 1) {
                    short sI3 = wVar.i();
                    Charset charset = t6.c.f15539d;
                    String strR = wVar.r(sI3, charset);
                    if (!strR.contains("<LA_URL>")) {
                        int iIndexOf = strR.indexOf("</DATA>");
                        if (iIndexOf == -1) {
                            m5.p.g("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
                        }
                        String str2 = strR.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strR.substring(iIndexOf);
                        int i17 = iG + 52;
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i17);
                        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                        byteBufferAllocate.putInt(i17);
                        byteBufferAllocate.putShort(sI);
                        byteBufferAllocate.putShort(sI2);
                        byteBufferAllocate.putShort((short) (str2.length() * 2));
                        byteBufferAllocate.put(str2.getBytes(charset));
                        bArrA = byteBufferAllocate.array();
                    }
                } else {
                    m5.p.e("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
                }
                bArrA = a4.i.a(uuid2, null, bArrA);
            }
            int i18 = g0.f10384a;
            if (i18 >= 23 || !n3.i.f11428d.equals(uuid)) {
                if (uuid2.equals(uuid) && "Amazon".equals(g0.f10386c)) {
                    String str3 = g0.f10387d;
                    if ("AFTB".equals(str3) || "AFTS".equals(str3) || "AFTM".equals(str3) || "AFTT".equals(str3)) {
                        bArrC = a4.i.c(bArrA, uuid);
                        if (bArrC == null) {
                        }
                    }
                }
                bArrC = bArrA;
            } else {
                bArrC = a4.i.c(bArrA, uuid);
                if (bArrC == null) {
                    bArrC = bArrA;
                }
            }
            UUID uuid3 = this.f14520a;
            String str4 = bVar.f14486k;
            str = (i18 < 26 && n3.i.f11427c.equals(uuid3) && ("video/mp4".equals(str4) || "audio/mp4".equals(str4))) ? "cenc" : str4;
            bArr2 = bArrC;
            bVar2 = bVar;
        } else {
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f14521b.getKeyRequest(bArr, bArr2, str, i10, map);
        UUID uuid4 = this.f14520a;
        byte[] data = keyRequest.getData();
        if (n3.i.f11427c.equals(uuid4) && g0.f10384a < 27) {
            data = g0.F(g0.n(data).replace('+', '-').replace('/', '_'));
        }
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && bVar2 != null && !TextUtils.isEmpty(bVar2.f14485j)) {
            defaultUrl = bVar2.f14485j;
        }
        if (g0.f10384a >= 23) {
            keyRequest.getRequestType();
        }
        return new s.a(data, defaultUrl);
    }

    @Override // r3.s
    public final void k(final s.b bVar) {
        this.f14521b.setOnEventListener(new MediaDrm.OnEventListener() { // from class: r3.u
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
                v vVar = this.f14518a;
                s.b bVar2 = bVar;
                Objects.requireNonNull(vVar);
                b.c cVar = ((b.C0248b) bVar2).f14467a.f14466y;
                Objects.requireNonNull(cVar);
                cVar.obtainMessage(i10, bArr).sendToTarget();
            }
        });
    }

    @Override // r3.s
    public final int l() {
        return 2;
    }

    @Override // r3.s
    public final q3.b m(byte[] bArr) throws MediaCryptoException {
        int i10 = g0.f10384a;
        boolean z10 = i10 < 21 && n3.i.f11428d.equals(this.f14520a) && "L3".equals(this.f14521b.getPropertyString("securityLevel"));
        UUID uuid = this.f14520a;
        if (i10 < 27 && n3.i.f11427c.equals(uuid)) {
            uuid = n3.i.f11426b;
        }
        return new t(uuid, bArr, z10);
    }

    @Override // r3.s
    public final byte[] n() throws MediaDrmException {
        return this.f14521b.openSession();
    }
}

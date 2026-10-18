package da;

import android.opengl.GLES20;
import android.opengl.GLU;
import com.nike.adapt.BigfootApplication;
import hc.g0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import m5.p;
import v9.t;

/* JADX INFO: compiled from: AdaptKitConnectionStateKtx.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements g0 {
    public static void e(int i10, int i11) {
        GLES20.glBindTexture(i10, i11);
        f();
        GLES20.glTexParameteri(i10, 10240, 9729);
        f();
        GLES20.glTexParameteri(i10, 10241, 9729);
        f();
        GLES20.glTexParameteri(i10, 10242, 33071);
        f();
        GLES20.glTexParameteri(i10, 10243, 33071);
        f();
    }

    public static void f() {
        int i10 = 0;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            StringBuilder sbC = a0.b.c("glError: ");
            sbC.append(GLU.gluErrorString(iGlGetError));
            p.c("GlUtil", sbC.toString());
            i10 = iGlGetError;
        }
        if (i10 != 0) {
            StringBuilder sbC2 = a0.b.c("glError: ");
            sbC2.append(GLU.gluErrorString(i10));
            i(sbC2.toString());
        }
    }

    public static FloatBuffer g(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    public static final String h(boolean z10, String str) {
        String string;
        p4.h.j(str, "name");
        if (!z10) {
            return str;
        }
        try {
            BigfootApplication.e eVar = BigfootApplication.f5638p;
            string = eVar.a().getString(eVar.a().getResources().getIdentifier(str, "string", eVar.a().getPackageName()));
            p4.h.i(string, "{\n            BigfootApp…N.packageName))\n        }");
        } catch (Throwable unused) {
            string = "";
        }
        return string;
    }

    public static void i(String str) {
        p.c("GlUtil", str);
    }

    public static final v9.e j(d dVar) {
        v9.e eVar;
        p4.h.j(dVar, "<this>");
        switch (dVar.ordinal()) {
            case 0:
                eVar = v9.e.NOT_INITIATED;
                break;
            case 1:
            case 2:
            case 3:
            case 6:
                eVar = v9.e.CONNECTING;
                break;
            case 4:
                eVar = v9.e.CONNECTED_AND_AUTHENTICATION_FAILURE;
                break;
            case 5:
                eVar = v9.e.CONNECTED_AND_REQUIRES_AUTHENTICATION;
                break;
            case 7:
                eVar = v9.e.CONNECTED_AND_AUTHENTICATED;
                break;
            case 8:
                eVar = v9.e.CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT;
                break;
            case 9:
                eVar = v9.e.BOND_DIALOG_PRESENT;
                break;
            case 10:
                eVar = v9.e.BONDING_DID_NOT_COMPLETE;
                break;
            case 11:
            case 12:
            case 13:
                eVar = v9.e.NOT_CONNECTED;
                break;
            case 14:
            case 15:
                eVar = v9.e.USER_INTERVENTION_REQUIRED;
                break;
            default:
                throw new j2.a();
        }
        v9.d.a.a(d3.e.j(), "ConnectionState", a0.d.c(dVar.name(), " -> ", eVar.name()), null, 4, null);
        return eVar;
    }

    @Override // hc.g0
    public void a(String str, Throwable th, boolean z10, String str2) {
        String strC;
        String strC2;
        p4.h.j(str, "message");
        String str3 = "";
        if (z10) {
            t tVar = t.f16822a;
            eb.f fVar = t.f16830i;
            eb.g[] gVarArr = new eb.g[1];
            if (th == null || (strC2 = androidx.recyclerview.widget.d.c("Exception: ", th.getLocalizedMessage())) == null) {
                strC2 = "";
            }
            gVarArr[0] = new eb.b(new eb.a("CoreRF:" + str + " " + strC2));
            fVar.a(gVarArr);
        }
        fb.e eVarJ = d3.e.j();
        if (str2 != null && (strC = androidx.recyclerview.widget.d.c(":", str2)) != null) {
            str3 = strC;
        }
        String strC3 = androidx.recyclerview.widget.d.c("CoreRF", str3);
        if (th != null) {
            String message = th.getMessage();
            if (message == null) {
                message = str;
            }
            new t.a(message);
        }
        eVarJ.b(strC3, str);
    }

    @Override // hc.g0
    public void b(String str, Throwable th, String str2) {
        String strC;
        p4.h.j(str, "message");
        fb.e eVarJ = d3.e.j();
        if (str2 == null || (strC = androidx.recyclerview.widget.d.c(":", str2)) == null) {
            strC = "";
        }
        String strC2 = androidx.recyclerview.widget.d.c("CoreRF", strC);
        if (th != null) {
            String message = th.getMessage();
            if (message == null) {
                message = str;
            }
            new t.a(message);
        }
        eVarJ.a(strC2, str);
    }

    @Override // hc.g0
    public void c(String str, Throwable th, boolean z10, String str2) {
        String strC;
        String strC2;
        p4.h.j(str, "message");
        String str3 = "";
        if (z10) {
            t tVar = t.f16822a;
            eb.f fVar = t.f16830i;
            eb.g[] gVarArr = new eb.g[1];
            if (th == null || (strC2 = androidx.recyclerview.widget.d.c("Exception: ", th.getLocalizedMessage())) == null) {
                strC2 = "";
            }
            gVarArr[0] = new eb.c(new eb.a("CoreRF:" + str + " " + strC2));
            fVar.a(gVarArr);
        }
        fb.e eVarJ = d3.e.j();
        if (str2 != null && (strC = androidx.recyclerview.widget.d.c(":", str2)) != null) {
            str3 = strC;
        }
        String strC3 = androidx.recyclerview.widget.d.c("CoreRF", str3);
        if (th != null) {
            String message = th.getMessage();
            if (message == null) {
                message = str;
            }
            new t.a(message);
        }
        eVarJ.a(strC3, str);
    }

    @Override // hc.g0
    public void d(String str) {
        p4.h.j(str, "message");
        v9.d.a.a(d3.e.j(), "CoreRF", str, null, 4, null);
    }
}

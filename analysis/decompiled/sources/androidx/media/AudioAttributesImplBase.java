package androidx.media;

import androidx.appcompat.widget.e0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2253a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2254b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2255c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2256d = -1;

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f2254b != audioAttributesImplBase.f2254b) {
            return false;
        }
        int i10 = this.f2255c;
        int i11 = audioAttributesImplBase.f2255c;
        int i12 = audioAttributesImplBase.f2256d;
        int i13 = 4;
        if (i12 == -1) {
            int i14 = audioAttributesImplBase.f2253a;
            int i15 = AudioAttributesCompat.f2249b;
            if ((i11 & 1) != 1) {
                if ((i11 & 4) != 4) {
                    switch (i14) {
                        case 2:
                            i13 = 0;
                            break;
                        case 3:
                            i13 = 8;
                            break;
                        case 4:
                            break;
                        case 5:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                            i13 = 5;
                            break;
                        case 6:
                            i13 = 2;
                            break;
                        case 11:
                            i13 = 10;
                            break;
                        case 12:
                        default:
                            i13 = 3;
                            break;
                        case 13:
                            i13 = 1;
                            break;
                    }
                } else {
                    i13 = 6;
                }
            } else {
                i13 = 7;
            }
        } else {
            i13 = i12;
        }
        if (i13 == 6) {
            i11 |= 4;
        } else if (i13 == 7) {
            i11 |= 1;
        }
        return i10 == (i11 & 273) && this.f2253a == audioAttributesImplBase.f2253a && this.f2256d == i12;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2254b), Integer.valueOf(this.f2255c), Integer.valueOf(this.f2253a), Integer.valueOf(this.f2256d)});
    }

    public final String toString() {
        String strD;
        StringBuilder sb2 = new StringBuilder("AudioAttributesCompat:");
        if (this.f2256d != -1) {
            sb2.append(" stream=");
            sb2.append(this.f2256d);
            sb2.append(" derived");
        }
        sb2.append(" usage=");
        int i10 = this.f2253a;
        int i11 = AudioAttributesCompat.f2249b;
        switch (i10) {
            case 0:
                strD = "USAGE_UNKNOWN";
                break;
            case 1:
                strD = "USAGE_MEDIA";
                break;
            case 2:
                strD = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                strD = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                strD = "USAGE_ALARM";
                break;
            case 5:
                strD = "USAGE_NOTIFICATION";
                break;
            case 6:
                strD = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                strD = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                strD = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                strD = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                strD = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                strD = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                strD = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                strD = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                strD = "USAGE_GAME";
                break;
            case 15:
            default:
                strD = e0.d("unknown usage ", i10);
                break;
            case 16:
                strD = "USAGE_ASSISTANT";
                break;
        }
        sb2.append(strD);
        sb2.append(" content=");
        sb2.append(this.f2254b);
        sb2.append(" flags=0x");
        sb2.append(Integer.toHexString(this.f2255c).toUpperCase());
        return sb2.toString();
    }
}

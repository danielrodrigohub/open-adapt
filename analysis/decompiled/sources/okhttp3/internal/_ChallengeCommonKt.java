package okhttp3.internal;

import okhttp3.Challenge;
import p4.h;

/* JADX INFO: compiled from: -ChallengeCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _ChallengeCommonKt {
    public static final boolean commonEquals(Challenge challenge, Object obj) {
        h.j(challenge, "<this>");
        if (obj instanceof Challenge) {
            Challenge challenge2 = (Challenge) obj;
            if (h.c(challenge2.scheme(), challenge.scheme()) && h.c(challenge2.authParams(), challenge.authParams())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonHashCode(Challenge challenge) {
        h.j(challenge, "<this>");
        return challenge.authParams().hashCode() + ((challenge.scheme().hashCode() + 899) * 31);
    }

    public static final String commonToString(Challenge challenge) {
        h.j(challenge, "<this>");
        return challenge.scheme() + " authParams=" + challenge.authParams();
    }
}

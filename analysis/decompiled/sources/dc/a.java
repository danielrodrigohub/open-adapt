package dc;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import androidx.lifecycle.o;
import gd.n;
import java.util.ArrayList;
import java.util.List;
import p4.h;
import yd.s;

/* JADX INFO: compiled from: AccountManagerCredentialStore.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements b {
    public static final C0111a Companion = new C0111a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ed.e f6169b;

    /* JADX INFO: renamed from: dc.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AccountManagerCredentialStore.kt */
    public static final class C0111a {
    }

    public a(Context context, ed.e eVar) {
        h.j(context, "context");
        h.j(eVar, "telemetryProvider");
        this.f6168a = context;
        this.f6169b = eVar;
    }

    /* JADX WARN: Incorrect return type in method signature: (Ldc/c;Lob/c;Ljd/d<-Lfd/o;>;)Ljava/lang/Object; */
    @Override // dc.b
    public final void a(c cVar, ob.c cVar2) {
        Account account;
        try {
            xb.a aVarA = ob.d.a(cVar2, this.f6169b);
            String strA = aVarA.a();
            if (strA == null && (strA = aVarA.c()) == null) {
                cVar.getKey();
                strA = "Nike";
            }
            Object systemService = this.f6168a.getSystemService("account");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.accounts.AccountManager");
            }
            AccountManager accountManager = (AccountManager) systemService;
            Account[] accountsByType = accountManager.getAccountsByType("com.nike.authcomponent.v1");
            h.i(accountsByType, "accountManager.getAccountsByType(ACCOUNT_TYPE)");
            String packageName = this.f6168a.getPackageName();
            int length = accountsByType.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    account = null;
                    break;
                }
                account = accountsByType[i10];
                h.i(account, "it");
                h.i(packageName, "packageName");
                if (Boolean.valueOf(b(accountManager, account, packageName)).booleanValue()) {
                    break;
                } else {
                    i10++;
                }
            }
            if (account == null) {
                account = new Account(strA, "com.nike.authcomponent.v1");
                accountManager.addAccountExplicitly(account, null, null);
            }
            accountManager.setAuthToken(account, packageName, cVar2.getAccessToken());
            h.i(packageName, "packageName");
            accountManager.setUserData(account, d(packageName), cVar2.getIdTokenString());
            accountManager.setUserData(account, g(packageName), cVar2.getUpmID());
            accountManager.setUserData(account, f(packageName), cVar2.getRefreshToken());
            accountManager.setUserData(account, c(packageName), String.valueOf(cVar2.getExpirationDate()));
            List<String> listE = e(accountManager, account);
            if (!listE.contains(packageName)) {
                listE.add(packageName);
            }
            h(accountManager, account, listE);
            ed.e eVar = this.f6169b;
            h.j(eVar, "<this>");
            eVar.b(new ed.b(3, "Save_Credential_Succeeded", "Saved credential to credential store", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(o.y(ec.a.f6722e))));
        } catch (Throwable th) {
            ed.e eVar2 = this.f6169b;
            h.j(eVar2, "<this>");
            eVar2.b(new ed.b(5, "Save_Credential_Failed", h.B("Failed to save credential to credential store with error: ", th), ec.b.a(ec.b.b(th), null, null, 0, 30), ec.a.f6718a.a(o.z(ec.a.f6722e, ec.a.f6723f))));
            throw th;
        }
    }

    public final boolean b(AccountManager accountManager, Account account, String str) {
        try {
            return accountManager.peekAuthToken(account, str) != null;
        } catch (SecurityException unused) {
        }
    }

    public final String c(String str) {
        return h.B("expirationDate", str);
    }

    public final String d(String str) {
        return h.B("idToken", str);
    }

    public final List<String> e(AccountManager accountManager, Account account) {
        String userData = accountManager.getUserData(account, "keyListOfPackageNames");
        return (userData == null || h.c(userData, "")) ? new ArrayList() : n.n0(s.B0(userData, new String[]{","}));
    }

    public final String f(String str) {
        return h.B("refreshToken", str);
    }

    public final String g(String str) {
        return h.B("upmId", str);
    }

    @Override // dc.b
    public final Object get() {
        Account account;
        try {
            Object systemService = this.f6168a.getSystemService("account");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.accounts.AccountManager");
            }
            AccountManager accountManager = (AccountManager) systemService;
            Account[] accountsByType = accountManager.getAccountsByType("com.nike.authcomponent.v1");
            h.i(accountsByType, "accountManager.getAccountsByType(ACCOUNT_TYPE)");
            String packageName = this.f6168a.getPackageName();
            int length = accountsByType.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    account = null;
                    break;
                }
                account = accountsByType[i10];
                h.i(account, "it");
                h.i(packageName, "packageName");
                if (Boolean.valueOf(b(accountManager, account, packageName)).booleanValue()) {
                    break;
                }
                i10++;
            }
            if (account != null) {
                h.i(packageName, "packageName");
                String userData = accountManager.getUserData(account, d(packageName));
                String userData2 = accountManager.getUserData(account, g(packageName));
                String userData3 = accountManager.getUserData(account, f(packageName));
                String userData4 = accountManager.getUserData(account, c(packageName));
                String strPeekAuthToken = accountManager.peekAuthToken(account, packageName);
                if (strPeekAuthToken != null && userData != null) {
                    h.i(userData3, "refreshToken");
                    h.i(userData2, "upmId");
                    h.i(userData4, "expirationDate");
                    wb.a aVar = new wb.a(strPeekAuthToken, userData3, userData, userData2, Long.parseLong(userData4));
                    ed.e eVar = this.f6169b;
                    h.j(eVar, "<this>");
                    eVar.b(new ed.b(3, "Get_Cached_Credential_Succeeded", "Loaded credential from credential store", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(o.y(ec.a.f6722e))));
                    return aVar;
                }
            }
            return null;
        } catch (Throwable th) {
            ed.e eVar2 = this.f6169b;
            h.j(eVar2, "<this>");
            eVar2.b(new ed.b(5, "Get_Cached_Credential_Failed", h.B("Failed to load credential from credential store with error: ", th), ec.b.a(ec.b.b(th), null, null, 0, 30), ec.a.f6718a.a(o.z(ec.a.f6722e, ec.a.f6723f))));
            throw th;
        }
    }

    public final void h(AccountManager accountManager, Account account, List<String> list) {
        String strB = "";
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.L();
                throw null;
            }
            String strB2 = (String) obj;
            if (i10 != 0) {
                strB2 = h.B(",", strB2);
            }
            strB = h.B(strB, strB2);
            i10 = i11;
        }
        accountManager.setUserData(account, "keyListOfPackageNames", strB);
    }

    /* JADX WARN: Incorrect return type in method signature: (Ldc/c;Ljd/d<-Lfd/o;>;)Ljava/lang/Object; */
    @Override // dc.b
    public final void remove() {
        Account account;
        try {
            Object systemService = this.f6168a.getSystemService("account");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.accounts.AccountManager");
            }
            AccountManager accountManager = (AccountManager) systemService;
            Account[] accountsByType = accountManager.getAccountsByType("com.nike.authcomponent.v1");
            h.i(accountsByType, "accountManager.getAccountsByType(ACCOUNT_TYPE)");
            String packageName = this.f6168a.getPackageName();
            int length = accountsByType.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    account = null;
                    break;
                }
                account = accountsByType[i10];
                h.i(account, "it");
                h.i(packageName, "packageName");
                if (Boolean.valueOf(b(accountManager, account, packageName)).booleanValue()) {
                    break;
                } else {
                    i10++;
                }
            }
            if (account != null) {
                accountManager.setAuthToken(account, packageName, null);
                h.i(packageName, "packageName");
                accountManager.setUserData(account, d(packageName), null);
                accountManager.setUserData(account, g(packageName), null);
                accountManager.setUserData(account, f(packageName), null);
                accountManager.setUserData(account, c(packageName), null);
                List<String> listE = e(accountManager, account);
                if (listE.remove(packageName)) {
                    h(accountManager, account, listE);
                    if (listE.size() == 0) {
                        accountManager.removeAccountExplicitly(account);
                    }
                }
            }
            ed.e eVar = this.f6169b;
            h.j(eVar, "<this>");
            eVar.b(new ed.b(3, "Clear_Cached_Credential_Succeeded", "Cleared the cached credential from the credential store", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(o.y(ec.a.f6722e))));
        } catch (Throwable th) {
            ed.e eVar2 = this.f6169b;
            h.j(eVar2, "<this>");
            eVar2.b(new ed.b(5, "Clear_Cached_Credential_Failed", h.B("Failed to clear the cached credential from credential store with error: ", th), ec.b.a(ec.b.b(th), null, null, 0, 30), ec.a.f6718a.a(o.z(ec.a.f6722e, ec.a.f6723f))));
            throw th;
        }
    }
}

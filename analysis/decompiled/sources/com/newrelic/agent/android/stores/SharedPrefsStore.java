package com.newrelic.agent.android.stores;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public abstract class SharedPrefsStore {
    public final SharedPreferences sharedPrefs;
    public final String storeFilename;
    public static final AgentLog log = AgentLogManager.getAgentLog();
    public static final Charset ENCODING = Charset.forName("ISO-8859-1");

    public SharedPrefsStore(Context context, String str) {
        this.sharedPrefs = context.getSharedPreferences(str, 0);
        this.storeFilename = str;
    }

    @SuppressLint({"CommitPrefEdits"})
    public boolean applyOrCommitEditor(SharedPreferences.Editor editor) {
        try {
            editor.apply();
            return true;
        } catch (Exception e10) {
            log.error("SharedPrefsStore.applyOrCommitEditor(SharedPreferences.Editor): ", e10);
            return true;
        }
    }

    public void clear() {
        try {
            synchronized (this) {
                SharedPreferences.Editor editorEdit = this.sharedPrefs.edit();
                editorEdit.clear();
                applyOrCommitEditor(editorEdit);
            }
        } catch (Exception e10) {
            log.error("SharedPrefsStore.clear(): ", e10);
        }
    }

    public int count() {
        int size;
        try {
            synchronized (this.sharedPrefs) {
                size = this.sharedPrefs.getAll().size();
            }
            return size;
        } catch (Exception e10) {
            log.error("SharedPrefsStore.count(): ", e10);
            return 0;
        }
    }

    public String decodeBytesToString(byte[] bArr) {
        try {
            return new String(bArr, ENCODING);
        } catch (Exception e10) {
            log.error("SharedPrefsStore.decodeBytesToString(byte[]): ", e10);
            return null;
        }
    }

    public byte[] decodeStringToBytes(String str) {
        try {
            return Base64.decode(str, 0);
        } catch (Exception e10) {
            log.error("SharedPrefsStore.decodeStringToBytes(String): ", e10);
            return null;
        }
    }

    public void delete(String str) {
        try {
            synchronized (this) {
                SharedPreferences.Editor editorEdit = this.sharedPrefs.edit();
                editorEdit.remove(str);
                applyOrCommitEditor(editorEdit);
            }
        } catch (Exception e10) {
            log.error("SharedPrefsStore.delete(): ", e10);
        }
    }

    public String encodeBytes(byte[] bArr) {
        try {
            return Base64.encodeToString(bArr, 2);
        } catch (Exception e10) {
            log.error("SharedPrefsStore.encodeBytes(byte[]): ", e10);
            return null;
        }
    }

    public List<?> fetchAll() {
        ArrayList arrayList = new ArrayList();
        try {
            synchronized (this) {
                arrayList.addAll(this.sharedPrefs.getAll().values());
            }
        } catch (Exception e10) {
            log.error("SharedPrefsStore.fetchAll(): ", e10);
        }
        return arrayList;
    }

    public String getStoreFilename() {
        return this.storeFilename;
    }

    public boolean store(String str, byte[] bArr) {
        try {
            SharedPreferences.Editor editorEdit = this.sharedPrefs.edit();
            editorEdit.putString(str, decodeBytesToString(bArr));
            return applyOrCommitEditor(editorEdit);
        } catch (Exception e10) {
            log.error("SharedPrefsStore.store(String, byte[]): ", e10);
            return false;
        }
    }

    public boolean store(String str, Set<String> set) {
        try {
            SharedPreferences.Editor editorEdit = this.sharedPrefs.edit();
            editorEdit.putStringSet(str, set);
            return applyOrCommitEditor(editorEdit);
        } catch (Exception e10) {
            log.error("SharedPrefsStore.store(String, Set<String>): ", e10);
            return false;
        }
    }

    public boolean store(String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = this.sharedPrefs.edit();
            editorEdit.putString(str, str2);
            return applyOrCommitEditor(editorEdit);
        } catch (Exception e10) {
            log.error("SharedPrefsStore.store(String, String): ", e10);
            return false;
        }
    }
}

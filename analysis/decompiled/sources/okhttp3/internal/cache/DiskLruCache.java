package okhttp3.internal.cache;

import a1.f;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import de.a0;
import de.b;
import de.e;
import de.h0;
import de.j0;
import de.k;
import de.l;
import de.n;
import de.w;
import fd.o;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import rd.h;
import sd.a;
import yd.g;
import yd.s;

/* JADX INFO: compiled from: DiskLruCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DiskLruCache implements Closeable, Flushable {
    private final int appVersion;
    private boolean civilizedFileSystem;
    private final TaskQueue cleanupQueue;
    private final DiskLruCache$cleanupTask$1 cleanupTask;
    private boolean closed;
    private final a0 directory;
    private final k fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;
    private final a0 journalFile;
    private final a0 journalFileBackup;
    private final a0 journalFileTmp;
    private e journalWriter;
    private final LinkedHashMap<String, Entry> lruEntries;
    private long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;
    public static final Companion Companion = new Companion(null);
    public static final String JOURNAL_FILE = "journal";
    public static final String JOURNAL_FILE_TEMP = "journal.tmp";
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    public static final String MAGIC = "libcore.io.DiskLruCache";
    public static final String VERSION_1 = "1";
    public static final long ANY_SEQUENCE_NUMBER = -1;
    public static final g LEGAL_KEY_PATTERN = new g("[a-z0-9_-]{1,120}");
    public static final String CLEAN = "CLEAN";
    public static final String DIRTY = "DIRTY";
    public static final String REMOVE = "REMOVE";
    public static final String READ = "READ";

    /* JADX INFO: compiled from: DiskLruCache.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    public final class Editor {
        private boolean done;
        private final Entry entry;
        public final /* synthetic */ DiskLruCache this$0;
        private final boolean[] written;

        public Editor(DiskLruCache diskLruCache, Entry entry) {
            p4.h.j(entry, "entry");
            this.this$0 = diskLruCache;
            this.entry = entry;
            this.written = entry.getReadable$okhttp() ? null : new boolean[diskLruCache.getValueCount$okhttp()];
        }

        public final void abort() throws IOException {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (p4.h.c(this.entry.getCurrentEditor$okhttp(), this)) {
                    diskLruCache.completeEdit$okhttp(this, false);
                }
                this.done = true;
            }
        }

        public final void commit() throws IOException {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (p4.h.c(this.entry.getCurrentEditor$okhttp(), this)) {
                    diskLruCache.completeEdit$okhttp(this, true);
                }
                this.done = true;
            }
        }

        public final void detach$okhttp() throws IOException {
            if (p4.h.c(this.entry.getCurrentEditor$okhttp(), this)) {
                if (this.this$0.civilizedFileSystem) {
                    this.this$0.completeEdit$okhttp(this, false);
                } else {
                    this.entry.setZombie$okhttp(true);
                }
            }
        }

        public final Entry getEntry$okhttp() {
            return this.entry;
        }

        public final boolean[] getWritten$okhttp() {
            return this.written;
        }

        public final h0 newSink(int i10) {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (!p4.h.c(this.entry.getCurrentEditor$okhttp(), this)) {
                    return new b();
                }
                if (!this.entry.getReadable$okhttp()) {
                    boolean[] zArr = this.written;
                    p4.h.g(zArr);
                    zArr[i10] = true;
                }
                try {
                    return new FaultHidingSink(diskLruCache.getFileSystem$okhttp().sink(this.entry.getDirtyFiles$okhttp().get(i10)), new DiskLruCache$Editor$newSink$1$1(diskLruCache, this));
                } catch (FileNotFoundException unused) {
                    return new b();
                }
            }
        }

        public final j0 newSource(int i10) {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                j0 j0VarSource = null;
                if (!this.entry.getReadable$okhttp() || !p4.h.c(this.entry.getCurrentEditor$okhttp(), this) || this.entry.getZombie$okhttp()) {
                    return null;
                }
                try {
                    j0VarSource = diskLruCache.getFileSystem$okhttp().source(this.entry.getCleanFiles$okhttp().get(i10));
                } catch (FileNotFoundException unused) {
                }
                return j0VarSource;
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    public final class Entry {
        private final List<a0> cleanFiles;
        private Editor currentEditor;
        private final List<a0> dirtyFiles;
        private final String key;
        private final long[] lengths;
        private int lockingSourceCount;
        private boolean readable;
        private long sequenceNumber;
        public final /* synthetic */ DiskLruCache this$0;
        private boolean zombie;

        public Entry(DiskLruCache diskLruCache, String str) {
            p4.h.j(str, "key");
            this.this$0 = diskLruCache;
            this.key = str;
            this.lengths = new long[diskLruCache.getValueCount$okhttp()];
            this.cleanFiles = new ArrayList();
            this.dirtyFiles = new ArrayList();
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            int valueCount$okhttp = diskLruCache.getValueCount$okhttp();
            for (int i10 = 0; i10 < valueCount$okhttp; i10++) {
                sb2.append(i10);
                List<a0> list = this.cleanFiles;
                a0 directory = this.this$0.getDirectory();
                String string = sb2.toString();
                p4.h.i(string, "fileBuilder.toString()");
                list.add(directory.j(string));
                sb2.append(".tmp");
                List<a0> list2 = this.dirtyFiles;
                a0 directory2 = this.this$0.getDirectory();
                String string2 = sb2.toString();
                p4.h.i(string2, "fileBuilder.toString()");
                list2.add(directory2.j(string2));
                sb2.setLength(length);
            }
        }

        private final Void invalidLengths(List<String> list) throws IOException {
            throw new IOException("unexpected journal line: " + list);
        }

        private final j0 newSource(int i10) throws IOException {
            final j0 j0VarSource = this.this$0.getFileSystem$okhttp().source(this.cleanFiles.get(i10));
            if (this.this$0.civilizedFileSystem) {
                return j0VarSource;
            }
            this.lockingSourceCount++;
            final DiskLruCache diskLruCache = this.this$0;
            return new n(j0VarSource) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1
                private boolean closed;

                @Override // de.n, de.j0, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    super.close();
                    if (this.closed) {
                        return;
                    }
                    this.closed = true;
                    DiskLruCache diskLruCache2 = diskLruCache;
                    DiskLruCache.Entry entry = this;
                    synchronized (diskLruCache2) {
                        entry.setLockingSourceCount$okhttp(entry.getLockingSourceCount$okhttp() - 1);
                        if (entry.getLockingSourceCount$okhttp() == 0 && entry.getZombie$okhttp()) {
                            diskLruCache2.removeEntry$okhttp(entry);
                        }
                    }
                }
            };
        }

        public final List<a0> getCleanFiles$okhttp() {
            return this.cleanFiles;
        }

        public final Editor getCurrentEditor$okhttp() {
            return this.currentEditor;
        }

        public final List<a0> getDirtyFiles$okhttp() {
            return this.dirtyFiles;
        }

        public final String getKey$okhttp() {
            return this.key;
        }

        public final long[] getLengths$okhttp() {
            return this.lengths;
        }

        public final int getLockingSourceCount$okhttp() {
            return this.lockingSourceCount;
        }

        public final boolean getReadable$okhttp() {
            return this.readable;
        }

        public final long getSequenceNumber$okhttp() {
            return this.sequenceNumber;
        }

        public final boolean getZombie$okhttp() {
            return this.zombie;
        }

        public final void setCurrentEditor$okhttp(Editor editor) {
            this.currentEditor = editor;
        }

        public final void setLengths$okhttp(List<String> list) throws IOException {
            p4.h.j(list, "strings");
            if (list.size() != this.this$0.getValueCount$okhttp()) {
                invalidLengths(list);
                throw new fd.b();
            }
            try {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    this.lengths[i10] = Long.parseLong(list.get(i10));
                }
            } catch (NumberFormatException unused) {
                invalidLengths(list);
                throw new fd.b();
            }
        }

        public final void setLockingSourceCount$okhttp(int i10) {
            this.lockingSourceCount = i10;
        }

        public final void setReadable$okhttp(boolean z10) {
            this.readable = z10;
        }

        public final void setSequenceNumber$okhttp(long j10) {
            this.sequenceNumber = j10;
        }

        public final void setZombie$okhttp(boolean z10) {
            this.zombie = z10;
        }

        public final Snapshot snapshot$okhttp() {
            DiskLruCache diskLruCache = this.this$0;
            if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
                StringBuilder sbC = a0.b.c("Thread ");
                sbC.append(Thread.currentThread().getName());
                sbC.append(" MUST hold lock on ");
                sbC.append(diskLruCache);
                throw new AssertionError(sbC.toString());
            }
            if (!this.readable) {
                return null;
            }
            if (!this.this$0.civilizedFileSystem && (this.currentEditor != null || this.zombie)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long[] jArr = (long[]) this.lengths.clone();
            try {
                int valueCount$okhttp = this.this$0.getValueCount$okhttp();
                for (int i10 = 0; i10 < valueCount$okhttp; i10++) {
                    arrayList.add(newSource(i10));
                }
                return new Snapshot(this.this$0, this.key, this.sequenceNumber, arrayList, jArr);
            } catch (FileNotFoundException unused) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    _UtilCommonKt.closeQuietly((j0) it.next());
                }
                try {
                    this.this$0.removeEntry$okhttp(this);
                } catch (IOException unused2) {
                }
                return null;
            }
        }

        public final void writeLengths$okhttp(e eVar) throws IOException {
            p4.h.j(eVar, "writer");
            for (long j10 : this.lengths) {
                eVar.A(32).W(j10);
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.kt */
    public final class Snapshot implements Closeable {
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;
        private final List<j0> sources;
        public final /* synthetic */ DiskLruCache this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(DiskLruCache diskLruCache, String str, long j10, List<? extends j0> list, long[] jArr) {
            p4.h.j(str, "key");
            p4.h.j(list, "sources");
            p4.h.j(jArr, "lengths");
            this.this$0 = diskLruCache;
            this.key = str;
            this.sequenceNumber = j10;
            this.sources = list;
            this.lengths = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Iterator<j0> it = this.sources.iterator();
            while (it.hasNext()) {
                _UtilCommonKt.closeQuietly(it.next());
            }
        }

        public final Editor edit() throws IOException {
            return this.this$0.edit(this.key, this.sequenceNumber);
        }

        public final long getLength(int i10) {
            return this.lengths[i10];
        }

        public final j0 getSource(int i10) {
            return this.sources.get(i10);
        }

        public final String key() {
            return this.key;
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.cache.DiskLruCache$snapshots$1, reason: invalid class name */
    /* JADX INFO: compiled from: DiskLruCache.kt */
    public static final class AnonymousClass1 implements Iterator<Snapshot>, a {
        private final Iterator<Entry> delegate;
        private Snapshot nextSnapshot;
        private Snapshot removeSnapshot;

        public AnonymousClass1() {
            Iterator<Entry> it = new ArrayList(DiskLruCache.this.getLruEntries$okhttp().values()).iterator();
            p4.h.i(it, "ArrayList(lruEntries.values).iterator()");
            this.delegate = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Snapshot snapshotSnapshot$okhttp;
            if (this.nextSnapshot != null) {
                return true;
            }
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (diskLruCache.getClosed$okhttp()) {
                    return false;
                }
                while (this.delegate.hasNext()) {
                    Entry next = this.delegate.next();
                    if (next != null && (snapshotSnapshot$okhttp = next.snapshot$okhttp()) != null) {
                        this.nextSnapshot = snapshotSnapshot$okhttp;
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            Snapshot snapshot = this.removeSnapshot;
            if (snapshot == null) {
                throw new IllegalStateException("remove() before next()".toString());
            }
            try {
                DiskLruCache.this.remove(snapshot.key());
            } catch (IOException unused) {
            } finally {
                this.removeSnapshot = null;
            }
        }

        @Override // java.util.Iterator
        public Snapshot next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Snapshot snapshot = this.nextSnapshot;
            this.removeSnapshot = snapshot;
            this.nextSnapshot = null;
            p4.h.g(snapshot);
            return snapshot;
        }
    }

    /* JADX WARN: Type inference failed for: r11v2, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(final k kVar, a0 a0Var, int i10, int i11, long j10, TaskRunner taskRunner) {
        p4.h.j(kVar, "fileSystem");
        p4.h.j(a0Var, "directory");
        p4.h.j(taskRunner, "taskRunner");
        this.directory = a0Var;
        this.appVersion = i10;
        this.valueCount = i11;
        this.fileSystem = new l(kVar) { // from class: okhttp3.internal.cache.DiskLruCache$fileSystem$1
            @Override // de.l, de.k
            public h0 sink(a0 a0Var2, boolean z10) throws IOException {
                p4.h.j(a0Var2, "file");
                a0 a0VarI = a0Var2.i();
                if (a0VarI != null) {
                    createDirectories(a0VarI);
                }
                return super.sink(a0Var2, z10);
            }
        };
        this.maxSize = j10;
        this.lruEntries = new LinkedHashMap<>(0, 0.75f, true);
        this.cleanupQueue = taskRunner.newQueue();
        final String strD = f.d(new StringBuilder(), _UtilJvmKt.okHttpName, " Cache");
        this.cleanupTask = new Task(strD) { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                DiskLruCache diskLruCache = this.this$0;
                synchronized (diskLruCache) {
                    if (!diskLruCache.initialized || diskLruCache.getClosed$okhttp()) {
                        return -1L;
                    }
                    try {
                        diskLruCache.trimToSize();
                    } catch (IOException unused) {
                        diskLruCache.mostRecentTrimFailed = true;
                    }
                    try {
                        if (diskLruCache.journalRebuildRequired()) {
                            diskLruCache.rebuildJournal$okhttp();
                            diskLruCache.redundantOpCount = 0;
                        }
                    } catch (IOException unused2) {
                        diskLruCache.mostRecentRebuildFailed = true;
                        diskLruCache.journalWriter = w.a(new b());
                    }
                    return -1L;
                }
            }
        };
        if (!(j10 > 0)) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        if (!(i11 > 0)) {
            throw new IllegalArgumentException("valueCount <= 0".toString());
        }
        this.journalFile = a0Var.j(JOURNAL_FILE);
        this.journalFileTmp = a0Var.j(JOURNAL_FILE_TEMP);
        this.journalFileBackup = a0Var.j(JOURNAL_FILE_BACKUP);
    }

    private final synchronized void checkNotClosed() {
        if (!(!this.closed)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    public static /* synthetic */ Editor edit$default(DiskLruCache diskLruCache, String str, long j10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j10 = ANY_SEQUENCE_NUMBER;
        }
        return diskLruCache.edit(str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean journalRebuildRequired() {
        int i10 = this.redundantOpCount;
        return i10 >= 2000 && i10 >= this.lruEntries.size();
    }

    private final e newJournalWriter() throws FileNotFoundException {
        return w.a(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new DiskLruCache$newJournalWriter$faultHidingSink$1(this)));
    }

    private final void processJournal() throws IOException {
        _UtilCommonKt.deleteIfExists(this.fileSystem, this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            p4.h.i(next, "i.next()");
            Entry entry = next;
            int i10 = 0;
            if (entry.getCurrentEditor$okhttp() == null) {
                int i11 = this.valueCount;
                while (i10 < i11) {
                    this.size += entry.getLengths$okhttp()[i10];
                    i10++;
                }
            } else {
                entry.setCurrentEditor$okhttp(null);
                int i12 = this.valueCount;
                while (i10 < i12) {
                    _UtilCommonKt.deleteIfExists(this.fileSystem, entry.getCleanFiles$okhttp().get(i10));
                    _UtilCommonKt.deleteIfExists(this.fileSystem, entry.getDirtyFiles$okhttp().get(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c1  */
    private final void readJournal() throws Throwable {
        o oVar;
        de.f fVarB = w.b(this.fileSystem.source(this.journalFile));
        Throwable th = null;
        try {
            String strU = fVarB.u();
            String strU2 = fVarB.u();
            String strU3 = fVarB.u();
            String strU4 = fVarB.u();
            String strU5 = fVarB.u();
            if (p4.h.c(MAGIC, strU) && p4.h.c(VERSION_1, strU2) && p4.h.c(String.valueOf(this.appVersion), strU3) && p4.h.c(String.valueOf(this.valueCount), strU4)) {
                int i10 = 0;
                if (!(strU5.length() > 0)) {
                    while (true) {
                        try {
                            readJournalLine(fVarB.u());
                            i10++;
                        } catch (EOFException unused) {
                            this.redundantOpCount = i10 - this.lruEntries.size();
                            if (fVarB.z()) {
                                this.journalWriter = newJournalWriter();
                            } else {
                                rebuildJournal$okhttp();
                            }
                            oVar = o.f7408a;
                            try {
                                fVarB.close();
                            } catch (Throwable th2) {
                                if (th == null) {
                                    th = th2;
                                } else {
                                    p4.h.b(th, th2);
                                }
                            }
                            if (th == null) {
                                throw th;
                            }
                            p4.h.g(oVar);
                        }
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + strU + ", " + strU2 + ", " + strU4 + ", " + strU5 + ']');
        } catch (Throwable th3) {
            th = th3;
            oVar = null;
            fVarB.close();
            if (th == null) {
                throw th;
            }
            p4.h.g(oVar);
        }
    }

    private final void readJournalLine(String str) throws IOException {
        String strSubstring;
        int iO0 = s.o0(str, SafeJsonPrimitive.NULL_CHAR, 0, false, 6);
        if (iO0 == -1) {
            throw new IOException(d.c("unexpected journal line: ", str));
        }
        int i10 = iO0 + 1;
        int iO1 = s.o0(str, SafeJsonPrimitive.NULL_CHAR, i10, false, 4);
        if (iO1 == -1) {
            strSubstring = str.substring(i10);
            p4.h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            String str2 = REMOVE;
            if (iO0 == str2.length() && yd.o.g0(str, str2, false)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iO1);
            p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        Entry entry = this.lruEntries.get(strSubstring);
        if (entry == null) {
            entry = new Entry(this, strSubstring);
            this.lruEntries.put(strSubstring, entry);
        }
        if (iO1 != -1) {
            String str3 = CLEAN;
            if (iO0 == str3.length() && yd.o.g0(str, str3, false)) {
                String strSubstring2 = str.substring(iO1 + 1);
                p4.h.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
                List<String> listA0 = s.A0(strSubstring2, new char[]{SafeJsonPrimitive.NULL_CHAR});
                entry.setReadable$okhttp(true);
                entry.setCurrentEditor$okhttp(null);
                entry.setLengths$okhttp(listA0);
                return;
            }
        }
        if (iO1 == -1) {
            String str4 = DIRTY;
            if (iO0 == str4.length() && yd.o.g0(str, str4, false)) {
                entry.setCurrentEditor$okhttp(new Editor(this, entry));
                return;
            }
        }
        if (iO1 == -1) {
            String str5 = READ;
            if (iO0 == str5.length() && yd.o.g0(str, str5, false)) {
                return;
            }
        }
        throw new IOException(d.c("unexpected journal line: ", str));
    }

    private final boolean removeOldestEntry() throws IOException {
        for (Entry entry : this.lruEntries.values()) {
            if (!entry.getZombie$okhttp()) {
                removeEntry$okhttp(entry);
                return true;
            }
        }
        return false;
    }

    private final void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.a(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        Editor currentEditor$okhttp;
        if (this.initialized && !this.closed) {
            Collection<Entry> collectionValues = this.lruEntries.values();
            p4.h.i(collectionValues, "lruEntries.values");
            Object[] array = collectionValues.toArray(new Entry[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            for (Entry entry : (Entry[]) array) {
                if (entry.getCurrentEditor$okhttp() != null && (currentEditor$okhttp = entry.getCurrentEditor$okhttp()) != null) {
                    currentEditor$okhttp.detach$okhttp();
                }
            }
            trimToSize();
            e eVar = this.journalWriter;
            p4.h.g(eVar);
            eVar.close();
            this.journalWriter = null;
            this.closed = true;
            return;
        }
        this.closed = true;
    }

    public final synchronized void completeEdit$okhttp(Editor editor, boolean z10) throws IOException {
        p4.h.j(editor, "editor");
        Entry entry$okhttp = editor.getEntry$okhttp();
        if (!p4.h.c(entry$okhttp.getCurrentEditor$okhttp(), editor)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (z10 && !entry$okhttp.getReadable$okhttp()) {
            int i10 = this.valueCount;
            for (int i11 = 0; i11 < i10; i11++) {
                boolean[] written$okhttp = editor.getWritten$okhttp();
                p4.h.g(written$okhttp);
                if (!written$okhttp[i11]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i11);
                }
                if (!this.fileSystem.exists(entry$okhttp.getDirtyFiles$okhttp().get(i11))) {
                    editor.abort();
                    return;
                }
            }
        }
        int i12 = this.valueCount;
        for (int i13 = 0; i13 < i12; i13++) {
            a0 a0Var = entry$okhttp.getDirtyFiles$okhttp().get(i13);
            if (!z10 || entry$okhttp.getZombie$okhttp()) {
                _UtilCommonKt.deleteIfExists(this.fileSystem, a0Var);
            } else if (this.fileSystem.exists(a0Var)) {
                a0 a0Var2 = entry$okhttp.getCleanFiles$okhttp().get(i13);
                this.fileSystem.atomicMove(a0Var, a0Var2);
                long j10 = entry$okhttp.getLengths$okhttp()[i13];
                Long l10 = this.fileSystem.metadata(a0Var2).f6246d;
                long jLongValue = l10 != null ? l10.longValue() : 0L;
                entry$okhttp.getLengths$okhttp()[i13] = jLongValue;
                this.size = (this.size - j10) + jLongValue;
            }
        }
        entry$okhttp.setCurrentEditor$okhttp(null);
        if (entry$okhttp.getZombie$okhttp()) {
            removeEntry$okhttp(entry$okhttp);
            return;
        }
        this.redundantOpCount++;
        e eVar = this.journalWriter;
        p4.h.g(eVar);
        if (entry$okhttp.getReadable$okhttp() || z10) {
            entry$okhttp.setReadable$okhttp(true);
            eVar.U(CLEAN).A(32);
            eVar.U(entry$okhttp.getKey$okhttp());
            entry$okhttp.writeLengths$okhttp(eVar);
            eVar.A(10);
            if (z10) {
                long j11 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j11;
                entry$okhttp.setSequenceNumber$okhttp(j11);
            }
        } else {
            this.lruEntries.remove(entry$okhttp.getKey$okhttp());
            eVar.U(REMOVE).A(32);
            eVar.U(entry$okhttp.getKey$okhttp());
            eVar.A(10);
        }
        eVar.flush();
        if (this.size > this.maxSize || journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    public final void delete() throws IOException {
        close();
        _UtilCommonKt.deleteContents(this.fileSystem, this.directory);
    }

    public final Editor edit(String str) throws IOException {
        p4.h.j(str, "key");
        return edit$default(this, str, 0L, 2, null);
    }

    public final synchronized Editor edit(String str, long j10) throws IOException {
        p4.h.j(str, "key");
        initialize();
        checkNotClosed();
        validateKey(str);
        Entry entry = this.lruEntries.get(str);
        if (j10 != ANY_SEQUENCE_NUMBER && (entry == null || entry.getSequenceNumber$okhttp() != j10)) {
            return null;
        }
        if ((entry != null ? entry.getCurrentEditor$okhttp() : null) != null) {
            return null;
        }
        if (entry != null && entry.getLockingSourceCount$okhttp() != 0) {
            return null;
        }
        if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
            e eVar = this.journalWriter;
            p4.h.g(eVar);
            eVar.U(DIRTY).A(32).U(str).A(10);
            eVar.flush();
            if (this.hasJournalErrors) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(this, str);
                this.lruEntries.put(str, entry);
            }
            Editor editor = new Editor(this, entry);
            entry.setCurrentEditor$okhttp(editor);
            return editor;
        }
        TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        return null;
    }

    public final synchronized void evictAll() throws IOException {
        initialize();
        Collection<Entry> collectionValues = this.lruEntries.values();
        p4.h.i(collectionValues, "lruEntries.values");
        Object[] array = collectionValues.toArray(new Entry[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        for (Entry entry : (Entry[]) array) {
            p4.h.i(entry, "entry");
            removeEntry$okhttp(entry);
        }
        this.mostRecentTrimFailed = false;
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.initialized) {
            checkNotClosed();
            trimToSize();
            e eVar = this.journalWriter;
            p4.h.g(eVar);
            eVar.flush();
        }
    }

    public final synchronized Snapshot get(String str) throws IOException {
        p4.h.j(str, "key");
        initialize();
        checkNotClosed();
        validateKey(str);
        Entry entry = this.lruEntries.get(str);
        if (entry == null) {
            return null;
        }
        Snapshot snapshotSnapshot$okhttp = entry.snapshot$okhttp();
        if (snapshotSnapshot$okhttp == null) {
            return null;
        }
        this.redundantOpCount++;
        e eVar = this.journalWriter;
        p4.h.g(eVar);
        eVar.U(READ).A(32).U(str).A(10);
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return snapshotSnapshot$okhttp;
    }

    public final boolean getClosed$okhttp() {
        return this.closed;
    }

    public final a0 getDirectory() {
        return this.directory;
    }

    public final k getFileSystem$okhttp() {
        return this.fileSystem;
    }

    public final LinkedHashMap<String, Entry> getLruEntries$okhttp() {
        return this.lruEntries;
    }

    public final synchronized long getMaxSize() {
        return this.maxSize;
    }

    public final int getValueCount$okhttp() {
        return this.valueCount;
    }

    public final synchronized void initialize() throws IOException {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (this.initialized) {
            return;
        }
        if (this.fileSystem.exists(this.journalFileBackup)) {
            if (this.fileSystem.exists(this.journalFile)) {
                this.fileSystem.delete(this.journalFileBackup);
            } else {
                this.fileSystem.atomicMove(this.journalFileBackup, this.journalFile);
            }
        }
        this.civilizedFileSystem = _UtilCommonKt.isCivilized(this.fileSystem, this.journalFileBackup);
        if (this.fileSystem.exists(this.journalFile)) {
            try {
                readJournal();
                processJournal();
                this.initialized = true;
                return;
            } catch (IOException e10) {
                Platform.Companion.get().log("DiskLruCache " + this.directory + " is corrupt: " + e10.getMessage() + ", removing", 5, e10);
                try {
                    delete();
                    this.closed = false;
                    rebuildJournal$okhttp();
                    this.initialized = true;
                } catch (Throwable th) {
                    this.closed = false;
                    throw th;
                }
            }
        }
        rebuildJournal$okhttp();
        this.initialized = true;
    }

    public final synchronized boolean isClosed() {
        return this.closed;
    }

    public final synchronized void rebuildJournal$okhttp() throws IOException {
        o oVar;
        e eVar = this.journalWriter;
        if (eVar != null) {
            eVar.close();
        }
        e eVarA = w.a(this.fileSystem.sink(this.journalFileTmp, false));
        Throwable th = null;
        try {
            eVarA.U(MAGIC);
            eVarA.A(10);
            eVarA.U(VERSION_1);
            eVarA.A(10);
            eVarA.W(this.appVersion);
            eVarA.A(10);
            eVarA.W(this.valueCount);
            eVarA.A(10);
            eVarA.A(10);
            for (Entry entry : this.lruEntries.values()) {
                if (entry.getCurrentEditor$okhttp() != null) {
                    eVarA.U(DIRTY);
                    eVarA.A(32);
                    eVarA.U(entry.getKey$okhttp());
                    eVarA.A(10);
                } else {
                    eVarA.U(CLEAN);
                    eVarA.A(32);
                    eVarA.U(entry.getKey$okhttp());
                    entry.writeLengths$okhttp(eVarA);
                    eVarA.A(10);
                }
            }
            oVar = o.f7408a;
        } catch (Throwable th2) {
            oVar = null;
            th = th2;
        }
        try {
            eVarA.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            } else {
                p4.h.b(th, th3);
            }
        }
        if (th != null) {
            throw th;
        }
        p4.h.g(oVar);
        if (this.fileSystem.exists(this.journalFile)) {
            this.fileSystem.atomicMove(this.journalFile, this.journalFileBackup);
            this.fileSystem.atomicMove(this.journalFileTmp, this.journalFile);
            _UtilCommonKt.deleteIfExists(this.fileSystem, this.journalFileBackup);
        } else {
            this.fileSystem.atomicMove(this.journalFileTmp, this.journalFile);
        }
        this.journalWriter = newJournalWriter();
        this.hasJournalErrors = false;
        this.mostRecentRebuildFailed = false;
    }

    public final synchronized boolean remove(String str) throws IOException {
        p4.h.j(str, "key");
        initialize();
        checkNotClosed();
        validateKey(str);
        Entry entry = this.lruEntries.get(str);
        if (entry == null) {
            return false;
        }
        boolean zRemoveEntry$okhttp = removeEntry$okhttp(entry);
        if (zRemoveEntry$okhttp && this.size <= this.maxSize) {
            this.mostRecentTrimFailed = false;
        }
        return zRemoveEntry$okhttp;
    }

    public final boolean removeEntry$okhttp(Entry entry) throws IOException {
        e eVar;
        p4.h.j(entry, "entry");
        if (!this.civilizedFileSystem) {
            if (entry.getLockingSourceCount$okhttp() > 0 && (eVar = this.journalWriter) != null) {
                eVar.U(DIRTY);
                eVar.A(32);
                eVar.U(entry.getKey$okhttp());
                eVar.A(10);
                eVar.flush();
            }
            if (entry.getLockingSourceCount$okhttp() > 0 || entry.getCurrentEditor$okhttp() != null) {
                entry.setZombie$okhttp(true);
                return true;
            }
        }
        Editor currentEditor$okhttp = entry.getCurrentEditor$okhttp();
        if (currentEditor$okhttp != null) {
            currentEditor$okhttp.detach$okhttp();
        }
        int i10 = this.valueCount;
        for (int i11 = 0; i11 < i10; i11++) {
            _UtilCommonKt.deleteIfExists(this.fileSystem, entry.getCleanFiles$okhttp().get(i11));
            this.size -= entry.getLengths$okhttp()[i11];
            entry.getLengths$okhttp()[i11] = 0;
        }
        this.redundantOpCount++;
        e eVar2 = this.journalWriter;
        if (eVar2 != null) {
            eVar2.U(REMOVE);
            eVar2.A(32);
            eVar2.U(entry.getKey$okhttp());
            eVar2.A(10);
        }
        this.lruEntries.remove(entry.getKey$okhttp());
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return true;
    }

    public final void setClosed$okhttp(boolean z10) {
        this.closed = z10;
    }

    public final synchronized void setMaxSize(long j10) {
        this.maxSize = j10;
        if (this.initialized) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    public final synchronized long size() throws IOException {
        initialize();
        return this.size;
    }

    public final synchronized Iterator<Snapshot> snapshots() throws IOException {
        initialize();
        return new AnonymousClass1();
    }

    public final void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            if (!removeOldestEntry()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }
}
